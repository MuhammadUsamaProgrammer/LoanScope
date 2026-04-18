part of '../../../../loanscope.dart';

class DashboardLocalDataSource {
  const DashboardLocalDataSource();

  DashboardProfileModel getDefaultProfile() => const DashboardProfileModel();

  List<DashboardScenarioModel> getScenarioPresets() {
    return const [
      DashboardScenarioModel(
        type: DashboardScenarioType.reduceEmi,
        title: 'Reduce EMIs by Rs 5k',
        description:
            'Simulates lower monthly obligations to improve debt ratio.',
      ),
      DashboardScenarioModel(
        type: DashboardScenarioType.increaseIncome,
        title: 'Increase income by Rs 10k',
        description:
            'Simulates stronger repayment capacity through higher income.',
      ),
      DashboardScenarioModel(
        type: DashboardScenarioType.reduceLoanAmount,
        title: 'Reduce loan amount by 15%',
        description: 'Simulates lighter EMI by lowering requested principal.',
      ),
    ];
  }

  double get annualInterestRate => 0.14;

  double get maxFoir => 0.50;

  int get targetScore => 75;
}
