part of '../../../../loanscope.dart';

enum DashboardScoreBand { qualified, borderline, needsImprovement }

@freezed
abstract class DashboardEvaluationModel with _$DashboardEvaluationModel {
  const factory DashboardEvaluationModel({
    required double proposedEmi,
    required double totalObligation,
    required double foir,
    required int loanReadyScore,
    required DashboardScoreBand scoreBand,
    required String scoreTitle,
    @Default(<DashboardGapItemModel>[]) List<DashboardGapItemModel> gapItems,
    @Default(<DashboardRoadmapModel>[]) List<DashboardRoadmapModel> roadmap,
  }) = _DashboardEvaluationModel;

  factory DashboardEvaluationModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardEvaluationModelFromJson(json);
}
