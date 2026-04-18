part of '../../../../loanscope.dart';

@freezed
abstract class DashboardIntakeStateModel with _$DashboardIntakeStateModel {
  const factory DashboardIntakeStateModel({
    @Default(<DashboardIntakeQuestionModel>[])
    List<DashboardIntakeQuestionModel> questions,
    @Default(<DashboardIntakeMessageModel>[])
    List<DashboardIntakeMessageModel> messages,
    @Default(<String, double>{}) Map<String, double> answers,
    @Default(0) int currentQuestionIndex,
    @Default('') String currentInputValue,
    @Default(false) bool isCompleted,
    DashboardProfileModel? generatedProfile,
    DashboardEvaluationModel? generatedEvaluation,
    String? validationError,
  }) = _DashboardIntakeStateModel;

  factory DashboardIntakeStateModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardIntakeStateModelFromJson(json);
}
