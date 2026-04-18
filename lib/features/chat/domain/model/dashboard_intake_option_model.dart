part of '../../../../loanscope.dart';

@freezed
abstract class DashboardIntakeOptionModel with _$DashboardIntakeOptionModel {
  const factory DashboardIntakeOptionModel({
    required String label,
    required double value,
  }) = _DashboardIntakeOptionModel;

  factory DashboardIntakeOptionModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardIntakeOptionModelFromJson(json);
}
