part of '../../../../loanscope.dart';

@freezed
abstract class DashboardProfileModel with _$DashboardProfileModel {
  const factory DashboardProfileModel({
    @Default(65000) double monthlyIncome,
    @Default(14000) double existingEmi,
    @Default(500000) double desiredLoanAmount,
    @Default(36) double tenureMonths,
    @Default(50000) double savingsBuffer,
  }) = _DashboardProfileModel;

  factory DashboardProfileModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardProfileModelFromJson(json);
}
