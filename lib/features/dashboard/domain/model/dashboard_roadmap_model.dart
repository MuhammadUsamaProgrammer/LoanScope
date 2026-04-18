part of '../../../../loanscope.dart';

@freezed
abstract class DashboardRoadmapModel with _$DashboardRoadmapModel {
  const factory DashboardRoadmapModel({
    required String phase,
    @Default(<String>[]) List<String> steps,
  }) = _DashboardRoadmapModel;

  factory DashboardRoadmapModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardRoadmapModelFromJson(json);
}
