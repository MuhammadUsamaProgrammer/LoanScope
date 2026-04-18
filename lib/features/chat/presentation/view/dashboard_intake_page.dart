part of '../../../../loanscope.dart';

class DashboardIntakePage extends ConsumerWidget {
  const DashboardIntakePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final intakeState = ref.watch(dashboardIntakePProvider);
    final intakeNotifier = ref.read(dashboardIntakePProvider.notifier);

    final currentQuestion =
        intakeState.isCompleted || intakeState.questions.isEmpty
        ? null
        : intakeState.questions[intakeState.currentQuestionIndex];

    final currentStep = intakeState.isCompleted
        ? intakeState.questions.length
        : intakeState.currentQuestionIndex + 1;

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
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 90, 16, 102),
          child: Column(
            children: [
              DashboardIntakeHeader(
                currentStep: currentStep,
                totalSteps: intakeState.questions.length,
                isCompleted: intakeState.isCompleted,
              ),
              const SizedBox(height: 12),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: AppColors.whiteF2),
                  ),
                  child: ListView.separated(
                    padding: const EdgeInsets.all(14),
                    itemCount:
                        intakeState.messages.length +
                        (intakeState.generatedEvaluation == null ? 0 : 1),
                    separatorBuilder: (_, _) => const SizedBox(height: 10),
                    itemBuilder: (context, index) {
                      if (index < intakeState.messages.length) {
                        return DashboardIntakeMessageBubble(
                          message: intakeState.messages[index],
                        );
                      }

                      final evaluation = intakeState.generatedEvaluation;
                      if (evaluation == null) {
                        return const SizedBox.shrink();
                      }

                      return _IntakeSummaryCard(evaluation: evaluation);
                    },
                  ),
                ),
              ),
              const SizedBox(height: 12),
              DashboardIntakeInputComposer(
                question: currentQuestion,
                inputValue: intakeState.currentInputValue,
                validationError: intakeState.validationError,
                isCompleted: intakeState.isCompleted,
                onInputChanged: intakeNotifier.updateInput,
                onSubmit: intakeNotifier.submitAnswer,
                onOptionSelected: intakeNotifier.chooseOption,
                onRestart: intakeNotifier.restart,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _IntakeSummaryCard extends StatelessWidget {
  const _IntakeSummaryCard({required this.evaluation});

  final DashboardEvaluationModel evaluation;

  @override
  Widget build(BuildContext context) {
    final scoreColor = switch (evaluation.scoreBand) {
      DashboardScoreBand.qualified => AppColors.color10B981,
      DashboardScoreBand.borderline => AppColors.colorF59E0B,
      DashboardScoreBand.needsImprovement => AppColors.colorEF4444,
    };

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.colorF5F8FB,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: scoreColor.withOpacity(0.14),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: InterText(
                '${evaluation.loanReadyScore}',
                size: 16,
                fontWeight: FontWeight.w700,
                color: scoreColor,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InterText(
                  evaluation.scoreTitle,
                  size: 13,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(height: 2),
                InterText(
                  'FOIR ${(evaluation.foir * 100).toStringAsFixed(1)}% · EMI Rs ${evaluation.proposedEmi.toStringAsFixed(0)}',
                  size: 11,
                  color: AppColors.color8A94A6,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
