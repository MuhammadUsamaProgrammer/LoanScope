part of '../../../../loanscope.dart';

enum DashboardIntakeInputType { numeric, singleChoice }

@freezed
abstract class DashboardIntakeQuestionModel
    with _$DashboardIntakeQuestionModel {
  const factory DashboardIntakeQuestionModel({
    required String id,
    required String fieldKey,
    required String prompt,
    required DashboardIntakeInputType inputType,
    String? hint,
    double? minValue,
    double? maxValue,
    @Default(<DashboardIntakeOptionModel>[])
    List<DashboardIntakeOptionModel> options,
  }) = _DashboardIntakeQuestionModel;

  factory DashboardIntakeQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardIntakeQuestionModelFromJson(json);
}
