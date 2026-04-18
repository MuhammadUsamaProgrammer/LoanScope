import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../loanscope.dart';

part 'dashboard_provider.g.dart';

@riverpod
class DashboardP extends _$DashboardP {
  DashboardRepository get _repository => ref.read(dashboardRepository);

  @override
  DashboardStateModel build() {
    final profile = _repository.getInitialProfile();
    return DashboardStateModel(
      profile: profile,
      evaluation: _repository.evaluateProfile(profile),
      scenarios: _repository.getScenarios(),
    );
  }

  void updateMonthlyIncome(double value) {
    _updateProfile(state.profile.copyWith(monthlyIncome: value));
  }

  void updateExistingEmi(double value) {
    _updateProfile(state.profile.copyWith(existingEmi: value));
  }

  void updateDesiredLoanAmount(double value) {
    _updateProfile(state.profile.copyWith(desiredLoanAmount: value));
  }

  void updateTenureMonths(double value) {
    _updateProfile(state.profile.copyWith(tenureMonths: value));
  }

  void updateSavingsBuffer(double value) {
    _updateProfile(state.profile.copyWith(savingsBuffer: value));
  }

  void applyScenario(DashboardScenarioType scenarioType) {
    final updatedProfile = _repository.applyScenario(
      state.profile,
      scenarioType,
    );
    _updateProfile(updatedProfile);
  }

  void resetProfile() {
    final profile = _repository.getInitialProfile();
    _updateProfile(profile);
  }

  void _updateProfile(DashboardProfileModel profile) {
    state = state.copyWith(
      profile: profile,
      evaluation: _repository.evaluateProfile(profile),
    );
  }
}
