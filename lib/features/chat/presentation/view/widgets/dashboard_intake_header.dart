part of '../../../../../loanscope.dart';

class DashboardIntakeHeader extends StatelessWidget {
  const DashboardIntakeHeader({
    super.key,
    required this.currentStep,
    required this.totalSteps,
    required this.isCompleted,
  });

  final int currentStep;
  final int totalSteps;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    final progress = totalSteps == 0
        ? 1.0
        : (currentStep / totalSteps).clamp(0.0, 1.0);

    return DashboardCardWrapper(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 34,
                width: 34,
                decoration: BoxDecoration(
                  color: AppColors.colorEEF2FF,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.psychology_alt_outlined,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: InterText(
                  'AI Intake Flow',
                  size: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              InterText(
                isCompleted ? 'Completed' : 'Step $currentStep of $totalSteps',
                size: 11,
                color: AppColors.color8A94A6,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: LinearProgressIndicator(
              minHeight: 8,
              value: progress,
              backgroundColor: AppColors.colorE8EEF5,
              valueColor: const AlwaysStoppedAnimation<Color>(
                AppColors.primary,
              ),
            ),
          ),
          const SizedBox(height: 8),
          InterText(
            isCompleted
                ? 'Your answers are synced with live score, gap analysis, and roadmap.'
                : 'Answer each question and watch your readiness update in real time.',
            size: 11,
            color: AppColors.color8A94A6,
            height: 1.4,
          ),
        ],
      ),
    );
  }
}
