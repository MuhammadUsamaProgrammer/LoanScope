part of '../../../../loanscope.dart';

enum DashboardScenarioType { reduceEmi, increaseIncome, reduceLoanAmount }

@freezed
abstract class DashboardScenarioModel with _$DashboardScenarioModel {
  const factory DashboardScenarioModel({
    required DashboardScenarioType type,
    required String title,
    String? description,
  }) = _DashboardScenarioModel;

  factory DashboardScenarioModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardScenarioModelFromJson(json);
}
