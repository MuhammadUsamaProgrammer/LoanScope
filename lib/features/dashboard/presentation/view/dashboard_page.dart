part of '../../../../loanscope.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardState = ref.watch(dashboardPProvider);
    final dashboardNotifier = ref.read(dashboardPProvider.notifier);

    return Scaffold(
      body: Stack(
        children: [
          Container(
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
                padding: const EdgeInsets.fromLTRB(16, 70, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const DashboardHeroCard(),
                    const SizedBox(height: 14),
                    DashboardScoreCard(evaluation: dashboardState.evaluation),
                    const SizedBox(height: 14),
                    DashboardConversationCard(
                      loanReadyScore: dashboardState.evaluation.loanReadyScore,
                      onStartIntake: () =>
                          context.goNamed(AppRoutes.dashboardIntake.name),
                    ),
                    const SizedBox(height: 14),
                    DashboardSimulatorCard(
                      profile: dashboardState.profile,
                      scenarios: dashboardState.scenarios,
                      onMonthlyIncomeChanged:
                          dashboardNotifier.updateMonthlyIncome,
                      onExistingEmiChanged: dashboardNotifier.updateExistingEmi,
                      onDesiredLoanAmountChanged:
                          dashboardNotifier.updateDesiredLoanAmount,
                      onTenureMonthsChanged: (value) => dashboardNotifier
                          .updateTenureMonths(value.roundToDouble()),
                      onSavingsBufferChanged:
                          dashboardNotifier.updateSavingsBuffer,
                      onScenarioTap: dashboardNotifier.applyScenario,
                    ),
                    const SizedBox(height: 14),
                    DashboardGapAnalysisCard(
                      gapItems: dashboardState.evaluation.gapItems,
                    ),
                    const SizedBox(height: 14),
                    DashboardRoadmapCard(
                      roadmap: dashboardState.evaluation.roadmap,
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 100, child: appBarWidget()),
        ],
      ),
    );
  }
}
