part of '../../../../loanscope.dart';

enum DashboardIntakeMessageSender { bot, user }

@freezed
abstract class DashboardIntakeMessageModel with _$DashboardIntakeMessageModel {
  const factory DashboardIntakeMessageModel({
    required String id,
    required DashboardIntakeMessageSender sender,
    required String text,
    required DateTime createdAt,
  }) = _DashboardIntakeMessageModel;

  factory DashboardIntakeMessageModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardIntakeMessageModelFromJson(json);
}
