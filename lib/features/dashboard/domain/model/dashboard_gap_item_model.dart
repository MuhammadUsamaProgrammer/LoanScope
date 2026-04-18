part of '../../../../loanscope.dart';

@freezed
abstract class DashboardGapItemModel with _$DashboardGapItemModel {
  const factory DashboardGapItemModel({
    required String title,
    required String currentValue,
    required String targetValue,
    required String suggestion,
  }) = _DashboardGapItemModel;

  factory DashboardGapItemModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardGapItemModelFromJson(json);
}
