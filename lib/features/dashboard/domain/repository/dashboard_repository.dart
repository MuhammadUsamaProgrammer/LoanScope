part of '../../../../loanscope.dart';

abstract interface class DashboardRepository {
  DashboardProfileModel getInitialProfile();

  DashboardEvaluationModel evaluateProfile(DashboardProfileModel profile);

  DashboardProfileModel applyScenario(
    DashboardProfileModel profile,
    DashboardScenarioType scenarioType,
  );

  List<DashboardScenarioModel> getScenarios();
}

final dashboardRepository = Provider<DashboardRepository>(
  (ref) => DashboardLocalRepository(const DashboardLocalDataSource()),
);
