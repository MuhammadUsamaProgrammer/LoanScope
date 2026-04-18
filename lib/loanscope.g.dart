// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loanscope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseListModel<T> _$BaseListModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _BaseListModel<T>(
  isLoadingMore: json['isLoadingMore'] as bool?,
  totalCount: (json['totalCount'] as num?)?.toInt(),
  isSuccess: json['isSuccess'] as bool,
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
);

Map<String, dynamic> _$BaseListModelToJson<T>(
  _BaseListModel<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'isLoadingMore': instance.isLoadingMore,
  'totalCount': instance.totalCount,
  'isSuccess': instance.isSuccess,
  'message': instance.message,
  'data': instance.data?.map(toJsonT).toList(),
};

_BaseModel<T> _$BaseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _BaseModel<T>(
  isSuccess: json['isSuccess'] as bool,
  message: json['message'] as String?,
  data: _$nullableGenericFromJson(json['data'], fromJsonT),
);

Map<String, dynamic> _$BaseModelToJson<T>(
  _BaseModel<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'message': instance.message,
  'data': _$nullableGenericToJson(instance.data, toJsonT),
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);

_DashboardEvaluationModel _$DashboardEvaluationModelFromJson(
  Map<String, dynamic> json,
) => _DashboardEvaluationModel(
  proposedEmi: (json['proposedEmi'] as num).toDouble(),
  totalObligation: (json['totalObligation'] as num).toDouble(),
  foir: (json['foir'] as num).toDouble(),
  loanReadyScore: (json['loanReadyScore'] as num).toInt(),
  scoreBand: $enumDecode(_$DashboardScoreBandEnumMap, json['scoreBand']),
  scoreTitle: json['scoreTitle'] as String,
  gapItems:
      (json['gapItems'] as List<dynamic>?)
          ?.map(
            (e) => DashboardGapItemModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <DashboardGapItemModel>[],
  roadmap:
      (json['roadmap'] as List<dynamic>?)
          ?.map(
            (e) => DashboardRoadmapModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <DashboardRoadmapModel>[],
);

Map<String, dynamic> _$DashboardEvaluationModelToJson(
  _DashboardEvaluationModel instance,
) => <String, dynamic>{
  'proposedEmi': instance.proposedEmi,
  'totalObligation': instance.totalObligation,
  'foir': instance.foir,
  'loanReadyScore': instance.loanReadyScore,
  'scoreBand': _$DashboardScoreBandEnumMap[instance.scoreBand]!,
  'scoreTitle': instance.scoreTitle,
  'gapItems': instance.gapItems,
  'roadmap': instance.roadmap,
};

const _$DashboardScoreBandEnumMap = {
  DashboardScoreBand.qualified: 'qualified',
  DashboardScoreBand.borderline: 'borderline',
  DashboardScoreBand.needsImprovement: 'needsImprovement',
};

_DashboardGapItemModel _$DashboardGapItemModelFromJson(
  Map<String, dynamic> json,
) => _DashboardGapItemModel(
  title: json['title'] as String,
  currentValue: json['currentValue'] as String,
  targetValue: json['targetValue'] as String,
  suggestion: json['suggestion'] as String,
);

Map<String, dynamic> _$DashboardGapItemModelToJson(
  _DashboardGapItemModel instance,
) => <String, dynamic>{
  'title': instance.title,
  'currentValue': instance.currentValue,
  'targetValue': instance.targetValue,
  'suggestion': instance.suggestion,
};

_DashboardProfileModel _$DashboardProfileModelFromJson(
  Map<String, dynamic> json,
) => _DashboardProfileModel(
  monthlyIncome: (json['monthlyIncome'] as num?)?.toDouble() ?? 65000,
  existingEmi: (json['existingEmi'] as num?)?.toDouble() ?? 14000,
  desiredLoanAmount: (json['desiredLoanAmount'] as num?)?.toDouble() ?? 500000,
  tenureMonths: (json['tenureMonths'] as num?)?.toDouble() ?? 36,
  savingsBuffer: (json['savingsBuffer'] as num?)?.toDouble() ?? 50000,
);

Map<String, dynamic> _$DashboardProfileModelToJson(
  _DashboardProfileModel instance,
) => <String, dynamic>{
  'monthlyIncome': instance.monthlyIncome,
  'existingEmi': instance.existingEmi,
  'desiredLoanAmount': instance.desiredLoanAmount,
  'tenureMonths': instance.tenureMonths,
  'savingsBuffer': instance.savingsBuffer,
};

_DashboardRoadmapModel _$DashboardRoadmapModelFromJson(
  Map<String, dynamic> json,
) => _DashboardRoadmapModel(
  phase: json['phase'] as String,
  steps:
      (json['steps'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
);

Map<String, dynamic> _$DashboardRoadmapModelToJson(
  _DashboardRoadmapModel instance,
) => <String, dynamic>{'phase': instance.phase, 'steps': instance.steps};

_DashboardScenarioModel _$DashboardScenarioModelFromJson(
  Map<String, dynamic> json,
) => _DashboardScenarioModel(
  type: $enumDecode(_$DashboardScenarioTypeEnumMap, json['type']),
  title: json['title'] as String,
  description: json['description'] as String?,
);

Map<String, dynamic> _$DashboardScenarioModelToJson(
  _DashboardScenarioModel instance,
) => <String, dynamic>{
  'type': _$DashboardScenarioTypeEnumMap[instance.type]!,
  'title': instance.title,
  'description': instance.description,
};

const _$DashboardScenarioTypeEnumMap = {
  DashboardScenarioType.reduceEmi: 'reduceEmi',
  DashboardScenarioType.increaseIncome: 'increaseIncome',
  DashboardScenarioType.reduceLoanAmount: 'reduceLoanAmount',
};

_DashboardStateModel _$DashboardStateModelFromJson(Map<String, dynamic> json) =>
    _DashboardStateModel(
      profile: DashboardProfileModel.fromJson(
        json['profile'] as Map<String, dynamic>,
      ),
      evaluation: DashboardEvaluationModel.fromJson(
        json['evaluation'] as Map<String, dynamic>,
      ),
      scenarios:
          (json['scenarios'] as List<dynamic>?)
              ?.map(
                (e) =>
                    DashboardScenarioModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <DashboardScenarioModel>[],
    );

Map<String, dynamic> _$DashboardStateModelToJson(
  _DashboardStateModel instance,
) => <String, dynamic>{
  'profile': instance.profile,
  'evaluation': instance.evaluation,
  'scenarios': instance.scenarios,
};
