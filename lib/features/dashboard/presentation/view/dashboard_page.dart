part of '../../../../loanscope.dart';

class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({super.key});

  @override
  ConsumerState<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends ConsumerState<DashboardPage> {
  DashboardStateModel get _dashboardState => ref.watch(dashboardPProvider);

  DashboardP get _dashboardNotifier => ref.read(dashboardPProvider.notifier);

  DashboardProfileModel get _profile => _dashboardState.profile;

  DashboardEvaluationModel get _evaluation => _dashboardState.evaluation;

  double get monthlyIncome => _profile.monthlyIncome;

  double get existingEmi => _profile.existingEmi;

  double get desiredLoanAmount => _profile.desiredLoanAmount;

  double get tenureMonths => _profile.tenureMonths;

  double get savingsBuffer => _profile.savingsBuffer;

  double get _proposedEmi => _evaluation.proposedEmi;

  double get _foir => _evaluation.foir;

  int get _loanReadyScore => _evaluation.loanReadyScore;

  String get _scoreTitle => _evaluation.scoreTitle;

  Color get _scoreColor {
    return switch (_evaluation.scoreBand) {
      DashboardScoreBand.qualified => AppColors.color10B981,
      DashboardScoreBand.borderline => AppColors.colorFFA726,
      DashboardScoreBand.needsImprovement => AppColors.colorEF4444,
    };
  }

  List<DashboardGapItemModel> get _gapItems => _evaluation.gapItems;

  List<DashboardRoadmapModel> get _roadmap => _evaluation.roadmap;

  List<DashboardScenarioModel> get _scenarioPresets =>
      _dashboardState.scenarios;

  void _applyScenario(DashboardScenarioType type) {
    _dashboardNotifier.applyScenario(type);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.colorF6F8FA, AppColors.white],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 90, 16, 110),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeroCard(),
              const SizedBox(height: 14),
              _buildScoreCard(),
              const SizedBox(height: 14),
              _buildConversationCard(),
              const SizedBox(height: 14),
              _buildSimulatorCard(),
              const SizedBox(height: 14),
              _buildGapAnalysisCard(),
              const SizedBox(height: 14),
              _buildRoadMapCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeroCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF0F766E), Color(0xFF14B8A6)],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InterText(
            'AI Loan Coach',
            color: AppColors.white.withOpacity(0.9),
            size: 12,
            letterSpacing: 1,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 6),
          const InterText(
            'Conversational pre-check, live scoring, and eligibility roadmap.',
            color: AppColors.white,
            size: 18,
            height: 1.3,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 14),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: const [
              _PillTag(title: 'Chat-style flow'),
              _PillTag(title: 'Voice-ready UX'),
              _PillTag(title: 'What-if simulator'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildScoreCard() {
    return _CardWrapper(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InterText(
            'LoanReady Score',
            size: 18,
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              SizedBox(
                width: 94,
                height: 94,
                child: TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0, end: _loanReadyScore / 100),
                  duration: const Duration(milliseconds: 600),
                  builder: (context, value, child) {
                    return Stack(
                      fit: StackFit.expand,
                      alignment: Alignment.center,
                      children: [
                        CircularProgressIndicator(
                          value: value,
                          strokeWidth: 10,
                          backgroundColor: AppColors.colorEDF1F6,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            _scoreColor,
                          ),
                        ),
                        Center(
                          child: InterText(
                            _loanReadyScore.toString(),
                            size: 22,
                            fontWeight: FontWeight.w700,
                            color: _scoreColor,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InterText(
                      _scoreTitle,
                      size: 18,
                      fontWeight: FontWeight.w700,
                      color: _scoreColor,
                    ),
                    const SizedBox(height: 6),
                    InterText(
                      'FOIR ${(100 * _foir).toStringAsFixed(1)}%  |  EMI Rs ${_proposedEmi.toStringAsFixed(0)}',
                      color: AppColors.color64748A,
                      size: 13,
                    ),
                    const SizedBox(height: 10),
                    InterText(
                      _loanReadyScore >= 75
                          ? 'Great profile. Keep stability and apply with confidence.'
                          : 'Improve obligations and savings to unlock faster approval.',
                      color: AppColors.color333333,
                      size: 13,
                      height: 1.35,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildConversationCard() {
    return _CardWrapper(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: AppColors.colorF4F8FE,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.smart_toy_outlined,
                  color: AppColors.color3182CE,
                  size: 18,
                ),
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: InterText(
                  'Conversation Flow (No Boring Forms)',
                  size: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.colorECFDF5,
                  borderRadius: BorderRadius.circular(99),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.mic_none,
                      size: 14,
                      color: AppColors.color10B981,
                    ),
                    SizedBox(width: 4),
                    InterText(
                      'Voice-ready',
                      size: 11,
                      color: AppColors.color10B981,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const _ChatBubble(
            text: 'Hi Adeel, what is your monthly net income?',
            isBot: true,
          ),
          const SizedBox(height: 8),
          const _ChatBubble(text: 'Around Rs 65,000 per month.', isBot: false),
          const SizedBox(height: 8),
          _ChatBubble(
            text:
                'Got it. LoanReady Score moved to $_loanReadyScore. Next, your existing monthly EMIs?',
            isBot: true,
          ),
        ],
      ),
    );
  }

  Widget _buildSimulatorCard() {
    return _CardWrapper(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InterText(
            'What-If Simulator',
            size: 18,
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 6),
          const InterText(
            'Adjust values and watch the score update instantly.',
            color: AppColors.color64748A,
            size: 13,
          ),
          const SizedBox(height: 12),
          _SliderField(
            label: 'Monthly Income',
            valueLabel: 'Rs ${monthlyIncome.toStringAsFixed(0)}',
            value: monthlyIncome,
            min: 20000,
            max: 200000,
            onChanged: _dashboardNotifier.updateMonthlyIncome,
          ),
          _SliderField(
            label: 'Existing EMIs',
            valueLabel: 'Rs ${existingEmi.toStringAsFixed(0)}',
            value: existingEmi,
            min: 0,
            max: 80000,
            onChanged: _dashboardNotifier.updateExistingEmi,
          ),
          _SliderField(
            label: 'Desired Loan Amount',
            valueLabel: 'Rs ${desiredLoanAmount.toStringAsFixed(0)}',
            value: desiredLoanAmount,
            min: 100000,
            max: 2500000,
            onChanged: _dashboardNotifier.updateDesiredLoanAmount,
          ),
          _SliderField(
            label: 'Tenure (Months)',
            valueLabel: '${tenureMonths.toStringAsFixed(0)} months',
            value: tenureMonths,
            min: 12,
            max: 84,
            onChanged: (value) =>
                _dashboardNotifier.updateTenureMonths(value.roundToDouble()),
          ),
          _SliderField(
            label: 'Savings Buffer',
            valueLabel: 'Rs ${savingsBuffer.toStringAsFixed(0)}',
            value: savingsBuffer,
            min: 0,
            max: 300000,
            onChanged: _dashboardNotifier.updateSavingsBuffer,
          ),
          const SizedBox(height: 6),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: _scenarioPresets
                .map(
                  (scenario) => _QuickScenarioChip(
                    title: scenario.title,
                    onTap: () => _applyScenario(scenario.type),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildGapAnalysisCard() {
    return _CardWrapper(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InterText(
            'Gap Analysis',
            size: 18,
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 6),
          const InterText(
            'If profile is not qualified, here is exactly what needs to change.',
            color: AppColors.color64748A,
            size: 13,
          ),
          const SizedBox(height: 12),
          ..._gapItems.map(
            (gap) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: AppColors.colorEBEFF3),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InterText(gap.title, size: 14, fontWeight: FontWeight.w700),
                    const SizedBox(height: 6),
                    InterText(
                      'Current: ${gap.currentValue}  |  Target: ${gap.targetValue}',
                      size: 12,
                      color: AppColors.color64748A,
                    ),
                    const SizedBox(height: 6),
                    InterText(
                      gap.suggestion,
                      size: 12,
                      color: AppColors.color333333,
                      height: 1.35,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRoadMapCard() {
    return _CardWrapper(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InterText(
            '30/60/90 Day Roadmap',
            size: 18,
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 6),
          const InterText(
            'Personalized action plan to move toward eligibility.',
            color: AppColors.color64748A,
            size: 13,
          ),
          const SizedBox(height: 12),
          ..._roadmap.map(
            (entry) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.colorF5F8FB,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: AppColors.colorEBEFF3),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InterText(
                      entry.phase,
                      size: 13,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w700,
                    ),
                    const SizedBox(height: 8),
                    ...entry.steps.map(
                      (step) => Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(99),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: InterText(
                                step,
                                size: 12,
                                color: AppColors.color333333,
                                height: 1.3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CardWrapper extends StatelessWidget {
  const _CardWrapper({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.colorEBEFF3),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 24,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: child,
    );
  }
}

class _SliderField extends StatelessWidget {
  const _SliderField({
    required this.label,
    required this.valueLabel,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
  });

  final String label;
  final String valueLabel;
  final double value;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: InterText(label, size: 13, fontWeight: FontWeight.w600),
              ),
              InterText(valueLabel, size: 12, color: AppColors.color64748A),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbColor: AppColors.primary,
              activeTrackColor: AppColors.primary,
              inactiveTrackColor: AppColors.colorEDF1F6,
            ),
            child: Slider(
              value: value.clamp(min, max),
              min: min,
              max: max,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}

class _QuickScenarioChip extends StatelessWidget {
  const _QuickScenarioChip({required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(999),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
        decoration: BoxDecoration(
          color: AppColors.colorF4F8FE,
          borderRadius: BorderRadius.circular(999),
          border: Border.all(color: AppColors.colorEBEFF3),
        ),
        child: InterText(
          title,
          size: 11,
          color: AppColors.color3182CE,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _PillTag extends StatelessWidget {
  const _PillTag({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.18),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: AppColors.white.withOpacity(0.15)),
      ),
      child: InterText(
        title,
        color: AppColors.white,
        size: 11,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _ChatBubble extends StatelessWidget {
  const _ChatBubble({required this.text, required this.isBot});

  final String text;
  final bool isBot;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isBot ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 290),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: isBot ? AppColors.colorF5F8FB : AppColors.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: InterText(
          text,
          size: 12,
          height: 1.35,
          color: isBot ? AppColors.color333333 : AppColors.white,
        ),
      ),
    );
  }
}
