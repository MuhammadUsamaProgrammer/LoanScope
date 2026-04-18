part of '../../../../loanscope.dart';

class DashboardLocalRepository implements DashboardRepository {
  const DashboardLocalRepository(this._dataSource);

  final DashboardLocalDataSource _dataSource;

  @override
  DashboardProfileModel getInitialProfile() => _dataSource.getDefaultProfile();

  @override
  List<DashboardScenarioModel> getScenarios() =>
      _dataSource.getScenarioPresets();

  @override
  DashboardEvaluationModel evaluateProfile(DashboardProfileModel profile) {
    final monthlyRate = _dataSource.annualInterestRate / 12;
    final proposedEmi = _calculateEmi(
      principal: profile.desiredLoanAmount,
      monthlyRate: monthlyRate,
      months: profile.tenureMonths,
    );
    final totalObligation = profile.existingEmi + proposedEmi;

    final foir = profile.monthlyIncome <= 0
        ? 1.0
        : (totalObligation / profile.monthlyIncome).clamp(0.0, 2.0).toDouble();

    final score = _calculateLoanReadyScore(
      profile: profile,
      foir: foir,
      totalObligation: totalObligation,
    );

    final scoreBand = _resolveScoreBand(score);
    final scoreTitle = switch (scoreBand) {
      DashboardScoreBand.qualified => 'Loan Ready',
      DashboardScoreBand.borderline => 'Almost There',
      DashboardScoreBand.needsImprovement => 'Needs Improvement',
    };

    return DashboardEvaluationModel(
      proposedEmi: proposedEmi,
      totalObligation: totalObligation,
      foir: foir,
      loanReadyScore: score,
      scoreBand: scoreBand,
      scoreTitle: scoreTitle,
      gapItems: _buildGapItems(
        profile: profile,
        foir: foir,
        totalObligation: totalObligation,
        score: score,
      ),
      roadmap: _buildRoadmap(
        profile: profile,
        foir: foir,
        totalObligation: totalObligation,
      ),
    );
  }

  @override
  DashboardProfileModel applyScenario(
    DashboardProfileModel profile,
    DashboardScenarioType scenarioType,
  ) {
    return switch (scenarioType) {
      DashboardScenarioType.reduceEmi => profile.copyWith(
        existingEmi: (profile.existingEmi - 5000).clamp(0, 80000).toDouble(),
      ),
      DashboardScenarioType.increaseIncome => profile.copyWith(
        monthlyIncome: (profile.monthlyIncome + 10000)
            .clamp(20000, 200000)
            .toDouble(),
      ),
      DashboardScenarioType.reduceLoanAmount => profile.copyWith(
        desiredLoanAmount: (profile.desiredLoanAmount * 0.85)
            .clamp(100000, 2500000)
            .toDouble(),
      ),
    };
  }

  double _calculateEmi({
    required double principal,
    required double monthlyRate,
    required double months,
  }) {
    if (months <= 0) return 0;
    if (monthlyRate == 0) return principal / months;

    final n = months;
    final numerator = principal * monthlyRate * pow(1 + monthlyRate, n);
    final denominator = pow(1 + monthlyRate, n) - 1;

    if (denominator == 0) return 0;
    return numerator / denominator;
  }

  int _calculateLoanReadyScore({
    required DashboardProfileModel profile,
    required double foir,
    required double totalObligation,
  }) {
    double foirScore;
    if (foir <= 0.30) {
      foirScore = 45;
    } else if (foir <= 0.40) {
      foirScore = 35;
    } else if (foir <= _dataSource.maxFoir) {
      foirScore = 25;
    } else if (foir <= 0.60) {
      foirScore = 12;
    } else {
      foirScore = 0;
    }

    final incomeScore = (profile.monthlyIncome / 120000 * 22).clamp(6.0, 22.0);

    double tenureScore;
    if (profile.tenureMonths >= 24 && profile.tenureMonths <= 48) {
      tenureScore = 14;
    } else if (profile.tenureMonths > 48 && profile.tenureMonths <= 60) {
      tenureScore = 10;
    } else {
      tenureScore = 6;
    }

    final bufferCoverage =
        profile.savingsBuffer / (totalObligation == 0 ? 1 : totalObligation);
    final bufferScore = (bufferCoverage * 12).clamp(2.0, 18.0);

    final totalScore = foirScore + incomeScore + tenureScore + bufferScore;
    return totalScore.clamp(0, 100).round();
  }

  DashboardScoreBand _resolveScoreBand(int score) {
    if (score >= _dataSource.targetScore) return DashboardScoreBand.qualified;
    if (score >= 55) return DashboardScoreBand.borderline;
    return DashboardScoreBand.needsImprovement;
  }

  List<DashboardGapItemModel> _buildGapItems({
    required DashboardProfileModel profile,
    required double foir,
    required double totalObligation,
    required int score,
  }) {
    final gaps = <DashboardGapItemModel>[];

    if (foir > _dataSource.maxFoir) {
      final obligationGap =
          totalObligation - (profile.monthlyIncome * _dataSource.maxFoir);
      final incomeGap =
          (totalObligation / _dataSource.maxFoir) - profile.monthlyIncome;
      gaps.add(
        DashboardGapItemModel(
          title: 'Debt ratio is above safe band',
          currentValue: '${(foir * 100).toStringAsFixed(1)}%',
          targetValue: '<= 50.0%',
          suggestion:
              'Reduce monthly obligations by Rs ${obligationGap.clamp(0, 999999).toStringAsFixed(0)} '
              'or increase income by Rs ${incomeGap.clamp(0, 999999).toStringAsFixed(0)}.',
        ),
      );
    }

    final targetBuffer = totalObligation * 2;
    if (profile.savingsBuffer < targetBuffer) {
      final bufferGap = targetBuffer - profile.savingsBuffer;
      gaps.add(
        DashboardGapItemModel(
          title: 'Emergency savings buffer is thin',
          currentValue: 'Rs ${profile.savingsBuffer.toStringAsFixed(0)}',
          targetValue: 'Rs ${targetBuffer.toStringAsFixed(0)}',
          suggestion:
              'Build additional cushion of Rs ${bufferGap.toStringAsFixed(0)} to strengthen approval confidence.',
        ),
      );
    }

    if (score < _dataSource.targetScore) {
      final scoreGap = _dataSource.targetScore - score;
      gaps.add(
        DashboardGapItemModel(
          title: 'LoanReady Score below approval comfort',
          currentValue: score.toString(),
          targetValue: '${_dataSource.targetScore}+',
          suggestion:
              'Need +$scoreGap points. Start with EMI cleanup and income proof consistency for 60 days.',
        ),
      );
    }

    if (gaps.isEmpty) {
      gaps.add(
        const DashboardGapItemModel(
          title: 'You are in the qualified zone',
          currentValue: 'Strong profile',
          targetValue: 'Maintain momentum',
          suggestion:
              'Keep obligations stable and avoid new liabilities until final application.',
        ),
      );
    }

    return gaps;
  }

  List<DashboardRoadmapModel> _buildRoadmap({
    required DashboardProfileModel profile,
    required double foir,
    required double totalObligation,
  }) {
    final steps30 = <String>[];
    final steps60 = <String>[];
    final steps90 = <String>[];

    if (foir > _dataSource.maxFoir) {
      steps30.add('Reduce EMI load by refinancing one high-interest account.');
      steps60.add('Keep FOIR under 50% for two consecutive billing cycles.');
      steps90.add(
        'Re-run eligibility with updated salary and repayment history.',
      );
    } else {
      steps30.add('Maintain on-time repayment streak across all accounts.');
      steps60.add('Collect salary credits and bank statement continuity.');
      steps90.add('Apply with strongest lender match and tenure mix.');
    }

    if (profile.savingsBuffer < totalObligation * 2) {
      steps30.add('Start auto-saving fixed amount every salary day.');
      steps60.add('Build minimum two-month EMI reserve buffer.');
      steps90.add('Hold buffer steady before loan submission.');
    } else {
      steps30.add('Preserve reserve buffer, avoid non-essential large spends.');
      steps60.add(
        'Grow buffer to 3-month coverage for better negotiating power.',
      );
      steps90.add('Use reserve proof to support lender confidence.');
    }

    return [
      DashboardRoadmapModel(phase: '30 Days', steps: steps30),
      DashboardRoadmapModel(phase: '60 Days', steps: steps60),
      DashboardRoadmapModel(phase: '90 Days', steps: steps90),
    ];
  }
}
