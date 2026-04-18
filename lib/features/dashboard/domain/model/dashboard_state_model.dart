part of '../../../../loanscope.dart';

@freezed
abstract class DashboardStateModel with _$DashboardStateModel {
  const factory DashboardStateModel({
    required DashboardProfileModel profile,
    required DashboardEvaluationModel evaluation,
    @Default(<DashboardScenarioModel>[]) List<DashboardScenarioModel> scenarios,
  }) = _DashboardStateModel;

  factory DashboardStateModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardStateModelFromJson(json);
}
