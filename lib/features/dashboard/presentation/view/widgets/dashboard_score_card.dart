part of '../../../../../loanscope.dart';

class DashboardScoreCard extends StatelessWidget {
  const DashboardScoreCard({super.key, required this.evaluation});

  final DashboardEvaluationModel evaluation;

  Color get _scoreColor {
    return switch (evaluation.scoreBand) {
      DashboardScoreBand.qualified => AppColors.color10B981,
      DashboardScoreBand.borderline => AppColors.colorFFA726,
      DashboardScoreBand.needsImprovement => AppColors.colorEF4444,
    };
  }

  @override
  Widget build(BuildContext context) {
    return DashboardCardWrapper(
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
                  tween: Tween(begin: 0, end: evaluation.loanReadyScore / 100),
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
                            evaluation.loanReadyScore.toString(),
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
                      evaluation.scoreTitle,
                      size: 18,
                      fontWeight: FontWeight.w700,
                      color: _scoreColor,
                    ),
                    const SizedBox(height: 6),
                    InterText(
                      'FOIR ${(100 * evaluation.foir).toStringAsFixed(1)}%  |  EMI Rs ${evaluation.proposedEmi.toStringAsFixed(0)}',
                      color: AppColors.color64748A,
                      size: 13,
                    ),
                    const SizedBox(height: 10),
                    InterText(
                      evaluation.loanReadyScore >= 75
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
}
