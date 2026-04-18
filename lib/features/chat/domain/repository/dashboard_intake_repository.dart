part of '../../../../loanscope.dart';

abstract interface class DashboardIntakeRepository {
  DashboardIntakeStateModel getInitialState();

  DashboardIntakeStateModel updateCurrentInput(
    DashboardIntakeStateModel state,
    String value,
  );

  DashboardIntakeStateModel selectOption(
    DashboardIntakeStateModel state,
    DashboardIntakeOptionModel option,
  );

  DashboardIntakeStateModel submitCurrentAnswer(
    DashboardIntakeStateModel state,
  );
}

final dashboardIntakeRepository = Provider<DashboardIntakeRepository>((ref) {
  return DashboardIntakeLocalRepository(
    dataSource: const DashboardIntakeLocalDataSource(),
    dashboardRepository: ref.read(dashboardRepository),
  );
});
