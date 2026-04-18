// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loanscope.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseListModel<T> {

 bool? get isLoadingMore; int? get totalCount; bool get isSuccess; String? get message; List<T>? get data;
/// Create a copy of BaseListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseListModelCopyWith<T, BaseListModel<T>> get copyWith => _$BaseListModelCopyWithImpl<T, BaseListModel<T>>(this as BaseListModel<T>, _$identity);

  /// Serializes this BaseListModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseListModel<T>&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isLoadingMore,totalCount,isSuccess,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseListModel<$T>(isLoadingMore: $isLoadingMore, totalCount: $totalCount, isSuccess: $isSuccess, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $BaseListModelCopyWith<T,$Res>  {
  factory $BaseListModelCopyWith(BaseListModel<T> value, $Res Function(BaseListModel<T>) _then) = _$BaseListModelCopyWithImpl;
@useResult
$Res call({
 bool? isLoadingMore, int? totalCount, bool isSuccess, String? message, List<T>? data
});




}
/// @nodoc
class _$BaseListModelCopyWithImpl<T,$Res>
    implements $BaseListModelCopyWith<T, $Res> {
  _$BaseListModelCopyWithImpl(this._self, this._then);

  final BaseListModel<T> _self;
  final $Res Function(BaseListModel<T>) _then;

/// Create a copy of BaseListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoadingMore = freezed,Object? totalCount = freezed,Object? isSuccess = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
isLoadingMore: freezed == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<T>?,
  ));
}

}


/// Adds pattern-matching-related methods to [BaseListModel].
extension BaseListModelPatterns<T> on BaseListModel<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaseListModel<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaseListModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaseListModel<T> value)  $default,){
final _that = this;
switch (_that) {
case _BaseListModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaseListModel<T> value)?  $default,){
final _that = this;
switch (_that) {
case _BaseListModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? isLoadingMore,  int? totalCount,  bool isSuccess,  String? message,  List<T>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaseListModel() when $default != null:
return $default(_that.isLoadingMore,_that.totalCount,_that.isSuccess,_that.message,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? isLoadingMore,  int? totalCount,  bool isSuccess,  String? message,  List<T>? data)  $default,) {final _that = this;
switch (_that) {
case _BaseListModel():
return $default(_that.isLoadingMore,_that.totalCount,_that.isSuccess,_that.message,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? isLoadingMore,  int? totalCount,  bool isSuccess,  String? message,  List<T>? data)?  $default,) {final _that = this;
switch (_that) {
case _BaseListModel() when $default != null:
return $default(_that.isLoadingMore,_that.totalCount,_that.isSuccess,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _BaseListModel<T> implements BaseListModel<T> {
  const _BaseListModel({this.isLoadingMore, this.totalCount, required this.isSuccess, this.message, final  List<T>? data}): _data = data;
  factory _BaseListModel.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$BaseListModelFromJson(json,fromJsonT);

@override final  bool? isLoadingMore;
@override final  int? totalCount;
@override final  bool isSuccess;
@override final  String? message;
 final  List<T>? _data;
@override List<T>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BaseListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseListModelCopyWith<T, _BaseListModel<T>> get copyWith => __$BaseListModelCopyWithImpl<T, _BaseListModel<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$BaseListModelToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseListModel<T>&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isLoadingMore,totalCount,isSuccess,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'BaseListModel<$T>(isLoadingMore: $isLoadingMore, totalCount: $totalCount, isSuccess: $isSuccess, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BaseListModelCopyWith<T,$Res> implements $BaseListModelCopyWith<T, $Res> {
  factory _$BaseListModelCopyWith(_BaseListModel<T> value, $Res Function(_BaseListModel<T>) _then) = __$BaseListModelCopyWithImpl;
@override @useResult
$Res call({
 bool? isLoadingMore, int? totalCount, bool isSuccess, String? message, List<T>? data
});




}
/// @nodoc
class __$BaseListModelCopyWithImpl<T,$Res>
    implements _$BaseListModelCopyWith<T, $Res> {
  __$BaseListModelCopyWithImpl(this._self, this._then);

  final _BaseListModel<T> _self;
  final $Res Function(_BaseListModel<T>) _then;

/// Create a copy of BaseListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoadingMore = freezed,Object? totalCount = freezed,Object? isSuccess = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_BaseListModel<T>(
isLoadingMore: freezed == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<T>?,
  ));
}


}


/// @nodoc
mixin _$BaseModel<T> {

 bool get isSuccess; String? get message; T? get data;
/// Create a copy of BaseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseModelCopyWith<T, BaseModel<T>> get copyWith => _$BaseModelCopyWithImpl<T, BaseModel<T>>(this as BaseModel<T>, _$identity);

  /// Serializes this BaseModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseModel<T>&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccess,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseModel<$T>(isSuccess: $isSuccess, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $BaseModelCopyWith<T,$Res>  {
  factory $BaseModelCopyWith(BaseModel<T> value, $Res Function(BaseModel<T>) _then) = _$BaseModelCopyWithImpl;
@useResult
$Res call({
 bool isSuccess, String? message, T? data
});




}
/// @nodoc
class _$BaseModelCopyWithImpl<T,$Res>
    implements $BaseModelCopyWith<T, $Res> {
  _$BaseModelCopyWithImpl(this._self, this._then);

  final BaseModel<T> _self;
  final $Res Function(BaseModel<T>) _then;

/// Create a copy of BaseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSuccess = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}

}


/// Adds pattern-matching-related methods to [BaseModel].
extension BaseModelPatterns<T> on BaseModel<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaseModel<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaseModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaseModel<T> value)  $default,){
final _that = this;
switch (_that) {
case _BaseModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaseModel<T> value)?  $default,){
final _that = this;
switch (_that) {
case _BaseModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isSuccess,  String? message,  T? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaseModel() when $default != null:
return $default(_that.isSuccess,_that.message,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isSuccess,  String? message,  T? data)  $default,) {final _that = this;
switch (_that) {
case _BaseModel():
return $default(_that.isSuccess,_that.message,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isSuccess,  String? message,  T? data)?  $default,) {final _that = this;
switch (_that) {
case _BaseModel() when $default != null:
return $default(_that.isSuccess,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _BaseModel<T> implements BaseModel<T> {
  const _BaseModel({required this.isSuccess, this.message, this.data});
  factory _BaseModel.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$BaseModelFromJson(json,fromJsonT);

@override final  bool isSuccess;
@override final  String? message;
@override final  T? data;

/// Create a copy of BaseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseModelCopyWith<T, _BaseModel<T>> get copyWith => __$BaseModelCopyWithImpl<T, _BaseModel<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$BaseModelToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseModel<T>&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isSuccess,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseModel<$T>(isSuccess: $isSuccess, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BaseModelCopyWith<T,$Res> implements $BaseModelCopyWith<T, $Res> {
  factory _$BaseModelCopyWith(_BaseModel<T> value, $Res Function(_BaseModel<T>) _then) = __$BaseModelCopyWithImpl;
@override @useResult
$Res call({
 bool isSuccess, String? message, T? data
});




}
/// @nodoc
class __$BaseModelCopyWithImpl<T,$Res>
    implements _$BaseModelCopyWith<T, $Res> {
  __$BaseModelCopyWithImpl(this._self, this._then);

  final _BaseModel<T> _self;
  final $Res Function(_BaseModel<T>) _then;

/// Create a copy of BaseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSuccess = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_BaseModel<T>(
isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

/// @nodoc
mixin _$AppLoadingState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppLoadingState()';
}


}

/// @nodoc
class $AppLoadingStateCopyWith<$Res>  {
$AppLoadingStateCopyWith(AppLoadingState _, $Res Function(AppLoadingState) __);
}


/// Adds pattern-matching-related methods to [AppLoadingState].
extension AppLoadingStatePatterns on AppLoadingState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _initialized value)?  $default,{TResult Function( LoadingState value)?  loading,TResult Function( ErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _initialized() when $default != null:
return $default(_that);case LoadingState() when loading != null:
return loading(_that);case ErrorState() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _initialized value)  $default,{required TResult Function( LoadingState value)  loading,required TResult Function( ErrorState value)  error,}){
final _that = this;
switch (_that) {
case _initialized():
return $default(_that);case LoadingState():
return loading(_that);case ErrorState():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _initialized value)?  $default,{TResult? Function( LoadingState value)?  loading,TResult? Function( ErrorState value)?  error,}){
final _that = this;
switch (_that) {
case _initialized() when $default != null:
return $default(_that);case LoadingState() when loading != null:
return loading(_that);case ErrorState() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function()?  $default,{TResult Function()?  loading,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _initialized() when $default != null:
return $default();case LoadingState() when loading != null:
return loading();case ErrorState() when error != null:
return error();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function()  $default,{required TResult Function()  loading,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case _initialized():
return $default();case LoadingState():
return loading();case ErrorState():
return error();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function()?  $default,{TResult? Function()?  loading,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case _initialized() when $default != null:
return $default();case LoadingState() when loading != null:
return loading();case ErrorState() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class _initialized implements AppLoadingState {
  const _initialized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _initialized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppLoadingState()';
}


}




/// @nodoc


class LoadingState implements AppLoadingState {
  const LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppLoadingState.loading()';
}


}




/// @nodoc


class ErrorState implements AppLoadingState {
  const ErrorState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppLoadingState.error()';
}


}





/// @nodoc
mixin _$DashboardEvaluationModel {

 double get proposedEmi; double get totalObligation; double get foir; int get loanReadyScore; DashboardScoreBand get scoreBand; String get scoreTitle; List<DashboardGapItemModel> get gapItems; List<DashboardRoadmapModel> get roadmap;
/// Create a copy of DashboardEvaluationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardEvaluationModelCopyWith<DashboardEvaluationModel> get copyWith => _$DashboardEvaluationModelCopyWithImpl<DashboardEvaluationModel>(this as DashboardEvaluationModel, _$identity);

  /// Serializes this DashboardEvaluationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardEvaluationModel&&(identical(other.proposedEmi, proposedEmi) || other.proposedEmi == proposedEmi)&&(identical(other.totalObligation, totalObligation) || other.totalObligation == totalObligation)&&(identical(other.foir, foir) || other.foir == foir)&&(identical(other.loanReadyScore, loanReadyScore) || other.loanReadyScore == loanReadyScore)&&(identical(other.scoreBand, scoreBand) || other.scoreBand == scoreBand)&&(identical(other.scoreTitle, scoreTitle) || other.scoreTitle == scoreTitle)&&const DeepCollectionEquality().equals(other.gapItems, gapItems)&&const DeepCollectionEquality().equals(other.roadmap, roadmap));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,proposedEmi,totalObligation,foir,loanReadyScore,scoreBand,scoreTitle,const DeepCollectionEquality().hash(gapItems),const DeepCollectionEquality().hash(roadmap));

@override
String toString() {
  return 'DashboardEvaluationModel(proposedEmi: $proposedEmi, totalObligation: $totalObligation, foir: $foir, loanReadyScore: $loanReadyScore, scoreBand: $scoreBand, scoreTitle: $scoreTitle, gapItems: $gapItems, roadmap: $roadmap)';
}


}

/// @nodoc
abstract mixin class $DashboardEvaluationModelCopyWith<$Res>  {
  factory $DashboardEvaluationModelCopyWith(DashboardEvaluationModel value, $Res Function(DashboardEvaluationModel) _then) = _$DashboardEvaluationModelCopyWithImpl;
@useResult
$Res call({
 double proposedEmi, double totalObligation, double foir, int loanReadyScore, DashboardScoreBand scoreBand, String scoreTitle, List<DashboardGapItemModel> gapItems, List<DashboardRoadmapModel> roadmap
});




}
/// @nodoc
class _$DashboardEvaluationModelCopyWithImpl<$Res>
    implements $DashboardEvaluationModelCopyWith<$Res> {
  _$DashboardEvaluationModelCopyWithImpl(this._self, this._then);

  final DashboardEvaluationModel _self;
  final $Res Function(DashboardEvaluationModel) _then;

/// Create a copy of DashboardEvaluationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? proposedEmi = null,Object? totalObligation = null,Object? foir = null,Object? loanReadyScore = null,Object? scoreBand = null,Object? scoreTitle = null,Object? gapItems = null,Object? roadmap = null,}) {
  return _then(_self.copyWith(
proposedEmi: null == proposedEmi ? _self.proposedEmi : proposedEmi // ignore: cast_nullable_to_non_nullable
as double,totalObligation: null == totalObligation ? _self.totalObligation : totalObligation // ignore: cast_nullable_to_non_nullable
as double,foir: null == foir ? _self.foir : foir // ignore: cast_nullable_to_non_nullable
as double,loanReadyScore: null == loanReadyScore ? _self.loanReadyScore : loanReadyScore // ignore: cast_nullable_to_non_nullable
as int,scoreBand: null == scoreBand ? _self.scoreBand : scoreBand // ignore: cast_nullable_to_non_nullable
as DashboardScoreBand,scoreTitle: null == scoreTitle ? _self.scoreTitle : scoreTitle // ignore: cast_nullable_to_non_nullable
as String,gapItems: null == gapItems ? _self.gapItems : gapItems // ignore: cast_nullable_to_non_nullable
as List<DashboardGapItemModel>,roadmap: null == roadmap ? _self.roadmap : roadmap // ignore: cast_nullable_to_non_nullable
as List<DashboardRoadmapModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardEvaluationModel].
extension DashboardEvaluationModelPatterns on DashboardEvaluationModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardEvaluationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardEvaluationModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardEvaluationModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardEvaluationModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardEvaluationModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardEvaluationModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double proposedEmi,  double totalObligation,  double foir,  int loanReadyScore,  DashboardScoreBand scoreBand,  String scoreTitle,  List<DashboardGapItemModel> gapItems,  List<DashboardRoadmapModel> roadmap)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardEvaluationModel() when $default != null:
return $default(_that.proposedEmi,_that.totalObligation,_that.foir,_that.loanReadyScore,_that.scoreBand,_that.scoreTitle,_that.gapItems,_that.roadmap);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double proposedEmi,  double totalObligation,  double foir,  int loanReadyScore,  DashboardScoreBand scoreBand,  String scoreTitle,  List<DashboardGapItemModel> gapItems,  List<DashboardRoadmapModel> roadmap)  $default,) {final _that = this;
switch (_that) {
case _DashboardEvaluationModel():
return $default(_that.proposedEmi,_that.totalObligation,_that.foir,_that.loanReadyScore,_that.scoreBand,_that.scoreTitle,_that.gapItems,_that.roadmap);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double proposedEmi,  double totalObligation,  double foir,  int loanReadyScore,  DashboardScoreBand scoreBand,  String scoreTitle,  List<DashboardGapItemModel> gapItems,  List<DashboardRoadmapModel> roadmap)?  $default,) {final _that = this;
switch (_that) {
case _DashboardEvaluationModel() when $default != null:
return $default(_that.proposedEmi,_that.totalObligation,_that.foir,_that.loanReadyScore,_that.scoreBand,_that.scoreTitle,_that.gapItems,_that.roadmap);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardEvaluationModel implements DashboardEvaluationModel {
  const _DashboardEvaluationModel({required this.proposedEmi, required this.totalObligation, required this.foir, required this.loanReadyScore, required this.scoreBand, required this.scoreTitle, final  List<DashboardGapItemModel> gapItems = const <DashboardGapItemModel>[], final  List<DashboardRoadmapModel> roadmap = const <DashboardRoadmapModel>[]}): _gapItems = gapItems,_roadmap = roadmap;
  factory _DashboardEvaluationModel.fromJson(Map<String, dynamic> json) => _$DashboardEvaluationModelFromJson(json);

@override final  double proposedEmi;
@override final  double totalObligation;
@override final  double foir;
@override final  int loanReadyScore;
@override final  DashboardScoreBand scoreBand;
@override final  String scoreTitle;
 final  List<DashboardGapItemModel> _gapItems;
@override@JsonKey() List<DashboardGapItemModel> get gapItems {
  if (_gapItems is EqualUnmodifiableListView) return _gapItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gapItems);
}

 final  List<DashboardRoadmapModel> _roadmap;
@override@JsonKey() List<DashboardRoadmapModel> get roadmap {
  if (_roadmap is EqualUnmodifiableListView) return _roadmap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_roadmap);
}


/// Create a copy of DashboardEvaluationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardEvaluationModelCopyWith<_DashboardEvaluationModel> get copyWith => __$DashboardEvaluationModelCopyWithImpl<_DashboardEvaluationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardEvaluationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardEvaluationModel&&(identical(other.proposedEmi, proposedEmi) || other.proposedEmi == proposedEmi)&&(identical(other.totalObligation, totalObligation) || other.totalObligation == totalObligation)&&(identical(other.foir, foir) || other.foir == foir)&&(identical(other.loanReadyScore, loanReadyScore) || other.loanReadyScore == loanReadyScore)&&(identical(other.scoreBand, scoreBand) || other.scoreBand == scoreBand)&&(identical(other.scoreTitle, scoreTitle) || other.scoreTitle == scoreTitle)&&const DeepCollectionEquality().equals(other._gapItems, _gapItems)&&const DeepCollectionEquality().equals(other._roadmap, _roadmap));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,proposedEmi,totalObligation,foir,loanReadyScore,scoreBand,scoreTitle,const DeepCollectionEquality().hash(_gapItems),const DeepCollectionEquality().hash(_roadmap));

@override
String toString() {
  return 'DashboardEvaluationModel(proposedEmi: $proposedEmi, totalObligation: $totalObligation, foir: $foir, loanReadyScore: $loanReadyScore, scoreBand: $scoreBand, scoreTitle: $scoreTitle, gapItems: $gapItems, roadmap: $roadmap)';
}


}

/// @nodoc
abstract mixin class _$DashboardEvaluationModelCopyWith<$Res> implements $DashboardEvaluationModelCopyWith<$Res> {
  factory _$DashboardEvaluationModelCopyWith(_DashboardEvaluationModel value, $Res Function(_DashboardEvaluationModel) _then) = __$DashboardEvaluationModelCopyWithImpl;
@override @useResult
$Res call({
 double proposedEmi, double totalObligation, double foir, int loanReadyScore, DashboardScoreBand scoreBand, String scoreTitle, List<DashboardGapItemModel> gapItems, List<DashboardRoadmapModel> roadmap
});




}
/// @nodoc
class __$DashboardEvaluationModelCopyWithImpl<$Res>
    implements _$DashboardEvaluationModelCopyWith<$Res> {
  __$DashboardEvaluationModelCopyWithImpl(this._self, this._then);

  final _DashboardEvaluationModel _self;
  final $Res Function(_DashboardEvaluationModel) _then;

/// Create a copy of DashboardEvaluationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? proposedEmi = null,Object? totalObligation = null,Object? foir = null,Object? loanReadyScore = null,Object? scoreBand = null,Object? scoreTitle = null,Object? gapItems = null,Object? roadmap = null,}) {
  return _then(_DashboardEvaluationModel(
proposedEmi: null == proposedEmi ? _self.proposedEmi : proposedEmi // ignore: cast_nullable_to_non_nullable
as double,totalObligation: null == totalObligation ? _self.totalObligation : totalObligation // ignore: cast_nullable_to_non_nullable
as double,foir: null == foir ? _self.foir : foir // ignore: cast_nullable_to_non_nullable
as double,loanReadyScore: null == loanReadyScore ? _self.loanReadyScore : loanReadyScore // ignore: cast_nullable_to_non_nullable
as int,scoreBand: null == scoreBand ? _self.scoreBand : scoreBand // ignore: cast_nullable_to_non_nullable
as DashboardScoreBand,scoreTitle: null == scoreTitle ? _self.scoreTitle : scoreTitle // ignore: cast_nullable_to_non_nullable
as String,gapItems: null == gapItems ? _self._gapItems : gapItems // ignore: cast_nullable_to_non_nullable
as List<DashboardGapItemModel>,roadmap: null == roadmap ? _self._roadmap : roadmap // ignore: cast_nullable_to_non_nullable
as List<DashboardRoadmapModel>,
  ));
}


}


/// @nodoc
mixin _$DashboardGapItemModel {

 String get title; String get currentValue; String get targetValue; String get suggestion;
/// Create a copy of DashboardGapItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardGapItemModelCopyWith<DashboardGapItemModel> get copyWith => _$DashboardGapItemModelCopyWithImpl<DashboardGapItemModel>(this as DashboardGapItemModel, _$identity);

  /// Serializes this DashboardGapItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardGapItemModel&&(identical(other.title, title) || other.title == title)&&(identical(other.currentValue, currentValue) || other.currentValue == currentValue)&&(identical(other.targetValue, targetValue) || other.targetValue == targetValue)&&(identical(other.suggestion, suggestion) || other.suggestion == suggestion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,currentValue,targetValue,suggestion);

@override
String toString() {
  return 'DashboardGapItemModel(title: $title, currentValue: $currentValue, targetValue: $targetValue, suggestion: $suggestion)';
}


}

/// @nodoc
abstract mixin class $DashboardGapItemModelCopyWith<$Res>  {
  factory $DashboardGapItemModelCopyWith(DashboardGapItemModel value, $Res Function(DashboardGapItemModel) _then) = _$DashboardGapItemModelCopyWithImpl;
@useResult
$Res call({
 String title, String currentValue, String targetValue, String suggestion
});




}
/// @nodoc
class _$DashboardGapItemModelCopyWithImpl<$Res>
    implements $DashboardGapItemModelCopyWith<$Res> {
  _$DashboardGapItemModelCopyWithImpl(this._self, this._then);

  final DashboardGapItemModel _self;
  final $Res Function(DashboardGapItemModel) _then;

/// Create a copy of DashboardGapItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? currentValue = null,Object? targetValue = null,Object? suggestion = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,currentValue: null == currentValue ? _self.currentValue : currentValue // ignore: cast_nullable_to_non_nullable
as String,targetValue: null == targetValue ? _self.targetValue : targetValue // ignore: cast_nullable_to_non_nullable
as String,suggestion: null == suggestion ? _self.suggestion : suggestion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardGapItemModel].
extension DashboardGapItemModelPatterns on DashboardGapItemModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardGapItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardGapItemModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardGapItemModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardGapItemModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardGapItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardGapItemModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String currentValue,  String targetValue,  String suggestion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardGapItemModel() when $default != null:
return $default(_that.title,_that.currentValue,_that.targetValue,_that.suggestion);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String currentValue,  String targetValue,  String suggestion)  $default,) {final _that = this;
switch (_that) {
case _DashboardGapItemModel():
return $default(_that.title,_that.currentValue,_that.targetValue,_that.suggestion);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String currentValue,  String targetValue,  String suggestion)?  $default,) {final _that = this;
switch (_that) {
case _DashboardGapItemModel() when $default != null:
return $default(_that.title,_that.currentValue,_that.targetValue,_that.suggestion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardGapItemModel implements DashboardGapItemModel {
  const _DashboardGapItemModel({required this.title, required this.currentValue, required this.targetValue, required this.suggestion});
  factory _DashboardGapItemModel.fromJson(Map<String, dynamic> json) => _$DashboardGapItemModelFromJson(json);

@override final  String title;
@override final  String currentValue;
@override final  String targetValue;
@override final  String suggestion;

/// Create a copy of DashboardGapItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardGapItemModelCopyWith<_DashboardGapItemModel> get copyWith => __$DashboardGapItemModelCopyWithImpl<_DashboardGapItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardGapItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardGapItemModel&&(identical(other.title, title) || other.title == title)&&(identical(other.currentValue, currentValue) || other.currentValue == currentValue)&&(identical(other.targetValue, targetValue) || other.targetValue == targetValue)&&(identical(other.suggestion, suggestion) || other.suggestion == suggestion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,currentValue,targetValue,suggestion);

@override
String toString() {
  return 'DashboardGapItemModel(title: $title, currentValue: $currentValue, targetValue: $targetValue, suggestion: $suggestion)';
}


}

/// @nodoc
abstract mixin class _$DashboardGapItemModelCopyWith<$Res> implements $DashboardGapItemModelCopyWith<$Res> {
  factory _$DashboardGapItemModelCopyWith(_DashboardGapItemModel value, $Res Function(_DashboardGapItemModel) _then) = __$DashboardGapItemModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String currentValue, String targetValue, String suggestion
});




}
/// @nodoc
class __$DashboardGapItemModelCopyWithImpl<$Res>
    implements _$DashboardGapItemModelCopyWith<$Res> {
  __$DashboardGapItemModelCopyWithImpl(this._self, this._then);

  final _DashboardGapItemModel _self;
  final $Res Function(_DashboardGapItemModel) _then;

/// Create a copy of DashboardGapItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? currentValue = null,Object? targetValue = null,Object? suggestion = null,}) {
  return _then(_DashboardGapItemModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,currentValue: null == currentValue ? _self.currentValue : currentValue // ignore: cast_nullable_to_non_nullable
as String,targetValue: null == targetValue ? _self.targetValue : targetValue // ignore: cast_nullable_to_non_nullable
as String,suggestion: null == suggestion ? _self.suggestion : suggestion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DashboardIntakeMessageModel {

 String get id; DashboardIntakeMessageSender get sender; String get text; DateTime get createdAt;
/// Create a copy of DashboardIntakeMessageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardIntakeMessageModelCopyWith<DashboardIntakeMessageModel> get copyWith => _$DashboardIntakeMessageModelCopyWithImpl<DashboardIntakeMessageModel>(this as DashboardIntakeMessageModel, _$identity);

  /// Serializes this DashboardIntakeMessageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardIntakeMessageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.text, text) || other.text == text)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sender,text,createdAt);

@override
String toString() {
  return 'DashboardIntakeMessageModel(id: $id, sender: $sender, text: $text, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DashboardIntakeMessageModelCopyWith<$Res>  {
  factory $DashboardIntakeMessageModelCopyWith(DashboardIntakeMessageModel value, $Res Function(DashboardIntakeMessageModel) _then) = _$DashboardIntakeMessageModelCopyWithImpl;
@useResult
$Res call({
 String id, DashboardIntakeMessageSender sender, String text, DateTime createdAt
});




}
/// @nodoc
class _$DashboardIntakeMessageModelCopyWithImpl<$Res>
    implements $DashboardIntakeMessageModelCopyWith<$Res> {
  _$DashboardIntakeMessageModelCopyWithImpl(this._self, this._then);

  final DashboardIntakeMessageModel _self;
  final $Res Function(DashboardIntakeMessageModel) _then;

/// Create a copy of DashboardIntakeMessageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sender = null,Object? text = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sender: null == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as DashboardIntakeMessageSender,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardIntakeMessageModel].
extension DashboardIntakeMessageModelPatterns on DashboardIntakeMessageModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardIntakeMessageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardIntakeMessageModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardIntakeMessageModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardIntakeMessageModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardIntakeMessageModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardIntakeMessageModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DashboardIntakeMessageSender sender,  String text,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardIntakeMessageModel() when $default != null:
return $default(_that.id,_that.sender,_that.text,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DashboardIntakeMessageSender sender,  String text,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _DashboardIntakeMessageModel():
return $default(_that.id,_that.sender,_that.text,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DashboardIntakeMessageSender sender,  String text,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _DashboardIntakeMessageModel() when $default != null:
return $default(_that.id,_that.sender,_that.text,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardIntakeMessageModel implements DashboardIntakeMessageModel {
  const _DashboardIntakeMessageModel({required this.id, required this.sender, required this.text, required this.createdAt});
  factory _DashboardIntakeMessageModel.fromJson(Map<String, dynamic> json) => _$DashboardIntakeMessageModelFromJson(json);

@override final  String id;
@override final  DashboardIntakeMessageSender sender;
@override final  String text;
@override final  DateTime createdAt;

/// Create a copy of DashboardIntakeMessageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardIntakeMessageModelCopyWith<_DashboardIntakeMessageModel> get copyWith => __$DashboardIntakeMessageModelCopyWithImpl<_DashboardIntakeMessageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardIntakeMessageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardIntakeMessageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.text, text) || other.text == text)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sender,text,createdAt);

@override
String toString() {
  return 'DashboardIntakeMessageModel(id: $id, sender: $sender, text: $text, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DashboardIntakeMessageModelCopyWith<$Res> implements $DashboardIntakeMessageModelCopyWith<$Res> {
  factory _$DashboardIntakeMessageModelCopyWith(_DashboardIntakeMessageModel value, $Res Function(_DashboardIntakeMessageModel) _then) = __$DashboardIntakeMessageModelCopyWithImpl;
@override @useResult
$Res call({
 String id, DashboardIntakeMessageSender sender, String text, DateTime createdAt
});




}
/// @nodoc
class __$DashboardIntakeMessageModelCopyWithImpl<$Res>
    implements _$DashboardIntakeMessageModelCopyWith<$Res> {
  __$DashboardIntakeMessageModelCopyWithImpl(this._self, this._then);

  final _DashboardIntakeMessageModel _self;
  final $Res Function(_DashboardIntakeMessageModel) _then;

/// Create a copy of DashboardIntakeMessageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sender = null,Object? text = null,Object? createdAt = null,}) {
  return _then(_DashboardIntakeMessageModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sender: null == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as DashboardIntakeMessageSender,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$DashboardIntakeOptionModel {

 String get label; double get value;
/// Create a copy of DashboardIntakeOptionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardIntakeOptionModelCopyWith<DashboardIntakeOptionModel> get copyWith => _$DashboardIntakeOptionModelCopyWithImpl<DashboardIntakeOptionModel>(this as DashboardIntakeOptionModel, _$identity);

  /// Serializes this DashboardIntakeOptionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardIntakeOptionModel&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,value);

@override
String toString() {
  return 'DashboardIntakeOptionModel(label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class $DashboardIntakeOptionModelCopyWith<$Res>  {
  factory $DashboardIntakeOptionModelCopyWith(DashboardIntakeOptionModel value, $Res Function(DashboardIntakeOptionModel) _then) = _$DashboardIntakeOptionModelCopyWithImpl;
@useResult
$Res call({
 String label, double value
});




}
/// @nodoc
class _$DashboardIntakeOptionModelCopyWithImpl<$Res>
    implements $DashboardIntakeOptionModelCopyWith<$Res> {
  _$DashboardIntakeOptionModelCopyWithImpl(this._self, this._then);

  final DashboardIntakeOptionModel _self;
  final $Res Function(DashboardIntakeOptionModel) _then;

/// Create a copy of DashboardIntakeOptionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? value = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardIntakeOptionModel].
extension DashboardIntakeOptionModelPatterns on DashboardIntakeOptionModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardIntakeOptionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardIntakeOptionModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardIntakeOptionModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardIntakeOptionModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardIntakeOptionModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardIntakeOptionModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  double value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardIntakeOptionModel() when $default != null:
return $default(_that.label,_that.value);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  double value)  $default,) {final _that = this;
switch (_that) {
case _DashboardIntakeOptionModel():
return $default(_that.label,_that.value);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  double value)?  $default,) {final _that = this;
switch (_that) {
case _DashboardIntakeOptionModel() when $default != null:
return $default(_that.label,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardIntakeOptionModel implements DashboardIntakeOptionModel {
  const _DashboardIntakeOptionModel({required this.label, required this.value});
  factory _DashboardIntakeOptionModel.fromJson(Map<String, dynamic> json) => _$DashboardIntakeOptionModelFromJson(json);

@override final  String label;
@override final  double value;

/// Create a copy of DashboardIntakeOptionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardIntakeOptionModelCopyWith<_DashboardIntakeOptionModel> get copyWith => __$DashboardIntakeOptionModelCopyWithImpl<_DashboardIntakeOptionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardIntakeOptionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardIntakeOptionModel&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,value);

@override
String toString() {
  return 'DashboardIntakeOptionModel(label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class _$DashboardIntakeOptionModelCopyWith<$Res> implements $DashboardIntakeOptionModelCopyWith<$Res> {
  factory _$DashboardIntakeOptionModelCopyWith(_DashboardIntakeOptionModel value, $Res Function(_DashboardIntakeOptionModel) _then) = __$DashboardIntakeOptionModelCopyWithImpl;
@override @useResult
$Res call({
 String label, double value
});




}
/// @nodoc
class __$DashboardIntakeOptionModelCopyWithImpl<$Res>
    implements _$DashboardIntakeOptionModelCopyWith<$Res> {
  __$DashboardIntakeOptionModelCopyWithImpl(this._self, this._then);

  final _DashboardIntakeOptionModel _self;
  final $Res Function(_DashboardIntakeOptionModel) _then;

/// Create a copy of DashboardIntakeOptionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? value = null,}) {
  return _then(_DashboardIntakeOptionModel(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$DashboardIntakeQuestionModel {

 String get id; String get fieldKey; String get prompt; DashboardIntakeInputType get inputType; String? get hint; double? get minValue; double? get maxValue; List<DashboardIntakeOptionModel> get options;
/// Create a copy of DashboardIntakeQuestionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardIntakeQuestionModelCopyWith<DashboardIntakeQuestionModel> get copyWith => _$DashboardIntakeQuestionModelCopyWithImpl<DashboardIntakeQuestionModel>(this as DashboardIntakeQuestionModel, _$identity);

  /// Serializes this DashboardIntakeQuestionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardIntakeQuestionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fieldKey, fieldKey) || other.fieldKey == fieldKey)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.inputType, inputType) || other.inputType == inputType)&&(identical(other.hint, hint) || other.hint == hint)&&(identical(other.minValue, minValue) || other.minValue == minValue)&&(identical(other.maxValue, maxValue) || other.maxValue == maxValue)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fieldKey,prompt,inputType,hint,minValue,maxValue,const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'DashboardIntakeQuestionModel(id: $id, fieldKey: $fieldKey, prompt: $prompt, inputType: $inputType, hint: $hint, minValue: $minValue, maxValue: $maxValue, options: $options)';
}


}

/// @nodoc
abstract mixin class $DashboardIntakeQuestionModelCopyWith<$Res>  {
  factory $DashboardIntakeQuestionModelCopyWith(DashboardIntakeQuestionModel value, $Res Function(DashboardIntakeQuestionModel) _then) = _$DashboardIntakeQuestionModelCopyWithImpl;
@useResult
$Res call({
 String id, String fieldKey, String prompt, DashboardIntakeInputType inputType, String? hint, double? minValue, double? maxValue, List<DashboardIntakeOptionModel> options
});




}
/// @nodoc
class _$DashboardIntakeQuestionModelCopyWithImpl<$Res>
    implements $DashboardIntakeQuestionModelCopyWith<$Res> {
  _$DashboardIntakeQuestionModelCopyWithImpl(this._self, this._then);

  final DashboardIntakeQuestionModel _self;
  final $Res Function(DashboardIntakeQuestionModel) _then;

/// Create a copy of DashboardIntakeQuestionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fieldKey = null,Object? prompt = null,Object? inputType = null,Object? hint = freezed,Object? minValue = freezed,Object? maxValue = freezed,Object? options = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fieldKey: null == fieldKey ? _self.fieldKey : fieldKey // ignore: cast_nullable_to_non_nullable
as String,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,inputType: null == inputType ? _self.inputType : inputType // ignore: cast_nullable_to_non_nullable
as DashboardIntakeInputType,hint: freezed == hint ? _self.hint : hint // ignore: cast_nullable_to_non_nullable
as String?,minValue: freezed == minValue ? _self.minValue : minValue // ignore: cast_nullable_to_non_nullable
as double?,maxValue: freezed == maxValue ? _self.maxValue : maxValue // ignore: cast_nullable_to_non_nullable
as double?,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<DashboardIntakeOptionModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardIntakeQuestionModel].
extension DashboardIntakeQuestionModelPatterns on DashboardIntakeQuestionModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardIntakeQuestionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardIntakeQuestionModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardIntakeQuestionModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardIntakeQuestionModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardIntakeQuestionModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardIntakeQuestionModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String fieldKey,  String prompt,  DashboardIntakeInputType inputType,  String? hint,  double? minValue,  double? maxValue,  List<DashboardIntakeOptionModel> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardIntakeQuestionModel() when $default != null:
return $default(_that.id,_that.fieldKey,_that.prompt,_that.inputType,_that.hint,_that.minValue,_that.maxValue,_that.options);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String fieldKey,  String prompt,  DashboardIntakeInputType inputType,  String? hint,  double? minValue,  double? maxValue,  List<DashboardIntakeOptionModel> options)  $default,) {final _that = this;
switch (_that) {
case _DashboardIntakeQuestionModel():
return $default(_that.id,_that.fieldKey,_that.prompt,_that.inputType,_that.hint,_that.minValue,_that.maxValue,_that.options);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String fieldKey,  String prompt,  DashboardIntakeInputType inputType,  String? hint,  double? minValue,  double? maxValue,  List<DashboardIntakeOptionModel> options)?  $default,) {final _that = this;
switch (_that) {
case _DashboardIntakeQuestionModel() when $default != null:
return $default(_that.id,_that.fieldKey,_that.prompt,_that.inputType,_that.hint,_that.minValue,_that.maxValue,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardIntakeQuestionModel implements DashboardIntakeQuestionModel {
  const _DashboardIntakeQuestionModel({required this.id, required this.fieldKey, required this.prompt, required this.inputType, this.hint, this.minValue, this.maxValue, final  List<DashboardIntakeOptionModel> options = const <DashboardIntakeOptionModel>[]}): _options = options;
  factory _DashboardIntakeQuestionModel.fromJson(Map<String, dynamic> json) => _$DashboardIntakeQuestionModelFromJson(json);

@override final  String id;
@override final  String fieldKey;
@override final  String prompt;
@override final  DashboardIntakeInputType inputType;
@override final  String? hint;
@override final  double? minValue;
@override final  double? maxValue;
 final  List<DashboardIntakeOptionModel> _options;
@override@JsonKey() List<DashboardIntakeOptionModel> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of DashboardIntakeQuestionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardIntakeQuestionModelCopyWith<_DashboardIntakeQuestionModel> get copyWith => __$DashboardIntakeQuestionModelCopyWithImpl<_DashboardIntakeQuestionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardIntakeQuestionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardIntakeQuestionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fieldKey, fieldKey) || other.fieldKey == fieldKey)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.inputType, inputType) || other.inputType == inputType)&&(identical(other.hint, hint) || other.hint == hint)&&(identical(other.minValue, minValue) || other.minValue == minValue)&&(identical(other.maxValue, maxValue) || other.maxValue == maxValue)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fieldKey,prompt,inputType,hint,minValue,maxValue,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'DashboardIntakeQuestionModel(id: $id, fieldKey: $fieldKey, prompt: $prompt, inputType: $inputType, hint: $hint, minValue: $minValue, maxValue: $maxValue, options: $options)';
}


}

/// @nodoc
abstract mixin class _$DashboardIntakeQuestionModelCopyWith<$Res> implements $DashboardIntakeQuestionModelCopyWith<$Res> {
  factory _$DashboardIntakeQuestionModelCopyWith(_DashboardIntakeQuestionModel value, $Res Function(_DashboardIntakeQuestionModel) _then) = __$DashboardIntakeQuestionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String fieldKey, String prompt, DashboardIntakeInputType inputType, String? hint, double? minValue, double? maxValue, List<DashboardIntakeOptionModel> options
});




}
/// @nodoc
class __$DashboardIntakeQuestionModelCopyWithImpl<$Res>
    implements _$DashboardIntakeQuestionModelCopyWith<$Res> {
  __$DashboardIntakeQuestionModelCopyWithImpl(this._self, this._then);

  final _DashboardIntakeQuestionModel _self;
  final $Res Function(_DashboardIntakeQuestionModel) _then;

/// Create a copy of DashboardIntakeQuestionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fieldKey = null,Object? prompt = null,Object? inputType = null,Object? hint = freezed,Object? minValue = freezed,Object? maxValue = freezed,Object? options = null,}) {
  return _then(_DashboardIntakeQuestionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fieldKey: null == fieldKey ? _self.fieldKey : fieldKey // ignore: cast_nullable_to_non_nullable
as String,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,inputType: null == inputType ? _self.inputType : inputType // ignore: cast_nullable_to_non_nullable
as DashboardIntakeInputType,hint: freezed == hint ? _self.hint : hint // ignore: cast_nullable_to_non_nullable
as String?,minValue: freezed == minValue ? _self.minValue : minValue // ignore: cast_nullable_to_non_nullable
as double?,maxValue: freezed == maxValue ? _self.maxValue : maxValue // ignore: cast_nullable_to_non_nullable
as double?,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<DashboardIntakeOptionModel>,
  ));
}


}


/// @nodoc
mixin _$DashboardIntakeStateModel {

 List<DashboardIntakeQuestionModel> get questions; List<DashboardIntakeMessageModel> get messages; Map<String, double> get answers; int get currentQuestionIndex; String get currentInputValue; bool get isCompleted; DashboardProfileModel? get generatedProfile; DashboardEvaluationModel? get generatedEvaluation; String? get validationError;
/// Create a copy of DashboardIntakeStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardIntakeStateModelCopyWith<DashboardIntakeStateModel> get copyWith => _$DashboardIntakeStateModelCopyWithImpl<DashboardIntakeStateModel>(this as DashboardIntakeStateModel, _$identity);

  /// Serializes this DashboardIntakeStateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardIntakeStateModel&&const DeepCollectionEquality().equals(other.questions, questions)&&const DeepCollectionEquality().equals(other.messages, messages)&&const DeepCollectionEquality().equals(other.answers, answers)&&(identical(other.currentQuestionIndex, currentQuestionIndex) || other.currentQuestionIndex == currentQuestionIndex)&&(identical(other.currentInputValue, currentInputValue) || other.currentInputValue == currentInputValue)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.generatedProfile, generatedProfile) || other.generatedProfile == generatedProfile)&&(identical(other.generatedEvaluation, generatedEvaluation) || other.generatedEvaluation == generatedEvaluation)&&(identical(other.validationError, validationError) || other.validationError == validationError));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(questions),const DeepCollectionEquality().hash(messages),const DeepCollectionEquality().hash(answers),currentQuestionIndex,currentInputValue,isCompleted,generatedProfile,generatedEvaluation,validationError);

@override
String toString() {
  return 'DashboardIntakeStateModel(questions: $questions, messages: $messages, answers: $answers, currentQuestionIndex: $currentQuestionIndex, currentInputValue: $currentInputValue, isCompleted: $isCompleted, generatedProfile: $generatedProfile, generatedEvaluation: $generatedEvaluation, validationError: $validationError)';
}


}

/// @nodoc
abstract mixin class $DashboardIntakeStateModelCopyWith<$Res>  {
  factory $DashboardIntakeStateModelCopyWith(DashboardIntakeStateModel value, $Res Function(DashboardIntakeStateModel) _then) = _$DashboardIntakeStateModelCopyWithImpl;
@useResult
$Res call({
 List<DashboardIntakeQuestionModel> questions, List<DashboardIntakeMessageModel> messages, Map<String, double> answers, int currentQuestionIndex, String currentInputValue, bool isCompleted, DashboardProfileModel? generatedProfile, DashboardEvaluationModel? generatedEvaluation, String? validationError
});


$DashboardProfileModelCopyWith<$Res>? get generatedProfile;$DashboardEvaluationModelCopyWith<$Res>? get generatedEvaluation;

}
/// @nodoc
class _$DashboardIntakeStateModelCopyWithImpl<$Res>
    implements $DashboardIntakeStateModelCopyWith<$Res> {
  _$DashboardIntakeStateModelCopyWithImpl(this._self, this._then);

  final DashboardIntakeStateModel _self;
  final $Res Function(DashboardIntakeStateModel) _then;

/// Create a copy of DashboardIntakeStateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questions = null,Object? messages = null,Object? answers = null,Object? currentQuestionIndex = null,Object? currentInputValue = null,Object? isCompleted = null,Object? generatedProfile = freezed,Object? generatedEvaluation = freezed,Object? validationError = freezed,}) {
  return _then(_self.copyWith(
questions: null == questions ? _self.questions : questions // ignore: cast_nullable_to_non_nullable
as List<DashboardIntakeQuestionModel>,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<DashboardIntakeMessageModel>,answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as Map<String, double>,currentQuestionIndex: null == currentQuestionIndex ? _self.currentQuestionIndex : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
as int,currentInputValue: null == currentInputValue ? _self.currentInputValue : currentInputValue // ignore: cast_nullable_to_non_nullable
as String,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,generatedProfile: freezed == generatedProfile ? _self.generatedProfile : generatedProfile // ignore: cast_nullable_to_non_nullable
as DashboardProfileModel?,generatedEvaluation: freezed == generatedEvaluation ? _self.generatedEvaluation : generatedEvaluation // ignore: cast_nullable_to_non_nullable
as DashboardEvaluationModel?,validationError: freezed == validationError ? _self.validationError : validationError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of DashboardIntakeStateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardProfileModelCopyWith<$Res>? get generatedProfile {
    if (_self.generatedProfile == null) {
    return null;
  }

  return $DashboardProfileModelCopyWith<$Res>(_self.generatedProfile!, (value) {
    return _then(_self.copyWith(generatedProfile: value));
  });
}/// Create a copy of DashboardIntakeStateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardEvaluationModelCopyWith<$Res>? get generatedEvaluation {
    if (_self.generatedEvaluation == null) {
    return null;
  }

  return $DashboardEvaluationModelCopyWith<$Res>(_self.generatedEvaluation!, (value) {
    return _then(_self.copyWith(generatedEvaluation: value));
  });
}
}


/// Adds pattern-matching-related methods to [DashboardIntakeStateModel].
extension DashboardIntakeStateModelPatterns on DashboardIntakeStateModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardIntakeStateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardIntakeStateModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardIntakeStateModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardIntakeStateModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardIntakeStateModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardIntakeStateModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DashboardIntakeQuestionModel> questions,  List<DashboardIntakeMessageModel> messages,  Map<String, double> answers,  int currentQuestionIndex,  String currentInputValue,  bool isCompleted,  DashboardProfileModel? generatedProfile,  DashboardEvaluationModel? generatedEvaluation,  String? validationError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardIntakeStateModel() when $default != null:
return $default(_that.questions,_that.messages,_that.answers,_that.currentQuestionIndex,_that.currentInputValue,_that.isCompleted,_that.generatedProfile,_that.generatedEvaluation,_that.validationError);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DashboardIntakeQuestionModel> questions,  List<DashboardIntakeMessageModel> messages,  Map<String, double> answers,  int currentQuestionIndex,  String currentInputValue,  bool isCompleted,  DashboardProfileModel? generatedProfile,  DashboardEvaluationModel? generatedEvaluation,  String? validationError)  $default,) {final _that = this;
switch (_that) {
case _DashboardIntakeStateModel():
return $default(_that.questions,_that.messages,_that.answers,_that.currentQuestionIndex,_that.currentInputValue,_that.isCompleted,_that.generatedProfile,_that.generatedEvaluation,_that.validationError);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DashboardIntakeQuestionModel> questions,  List<DashboardIntakeMessageModel> messages,  Map<String, double> answers,  int currentQuestionIndex,  String currentInputValue,  bool isCompleted,  DashboardProfileModel? generatedProfile,  DashboardEvaluationModel? generatedEvaluation,  String? validationError)?  $default,) {final _that = this;
switch (_that) {
case _DashboardIntakeStateModel() when $default != null:
return $default(_that.questions,_that.messages,_that.answers,_that.currentQuestionIndex,_that.currentInputValue,_that.isCompleted,_that.generatedProfile,_that.generatedEvaluation,_that.validationError);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardIntakeStateModel implements DashboardIntakeStateModel {
  const _DashboardIntakeStateModel({final  List<DashboardIntakeQuestionModel> questions = const <DashboardIntakeQuestionModel>[], final  List<DashboardIntakeMessageModel> messages = const <DashboardIntakeMessageModel>[], final  Map<String, double> answers = const <String, double>{}, this.currentQuestionIndex = 0, this.currentInputValue = '', this.isCompleted = false, this.generatedProfile, this.generatedEvaluation, this.validationError}): _questions = questions,_messages = messages,_answers = answers;
  factory _DashboardIntakeStateModel.fromJson(Map<String, dynamic> json) => _$DashboardIntakeStateModelFromJson(json);

 final  List<DashboardIntakeQuestionModel> _questions;
@override@JsonKey() List<DashboardIntakeQuestionModel> get questions {
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questions);
}

 final  List<DashboardIntakeMessageModel> _messages;
@override@JsonKey() List<DashboardIntakeMessageModel> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

 final  Map<String, double> _answers;
@override@JsonKey() Map<String, double> get answers {
  if (_answers is EqualUnmodifiableMapView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_answers);
}

@override@JsonKey() final  int currentQuestionIndex;
@override@JsonKey() final  String currentInputValue;
@override@JsonKey() final  bool isCompleted;
@override final  DashboardProfileModel? generatedProfile;
@override final  DashboardEvaluationModel? generatedEvaluation;
@override final  String? validationError;

/// Create a copy of DashboardIntakeStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardIntakeStateModelCopyWith<_DashboardIntakeStateModel> get copyWith => __$DashboardIntakeStateModelCopyWithImpl<_DashboardIntakeStateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardIntakeStateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardIntakeStateModel&&const DeepCollectionEquality().equals(other._questions, _questions)&&const DeepCollectionEquality().equals(other._messages, _messages)&&const DeepCollectionEquality().equals(other._answers, _answers)&&(identical(other.currentQuestionIndex, currentQuestionIndex) || other.currentQuestionIndex == currentQuestionIndex)&&(identical(other.currentInputValue, currentInputValue) || other.currentInputValue == currentInputValue)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.generatedProfile, generatedProfile) || other.generatedProfile == generatedProfile)&&(identical(other.generatedEvaluation, generatedEvaluation) || other.generatedEvaluation == generatedEvaluation)&&(identical(other.validationError, validationError) || other.validationError == validationError));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_questions),const DeepCollectionEquality().hash(_messages),const DeepCollectionEquality().hash(_answers),currentQuestionIndex,currentInputValue,isCompleted,generatedProfile,generatedEvaluation,validationError);

@override
String toString() {
  return 'DashboardIntakeStateModel(questions: $questions, messages: $messages, answers: $answers, currentQuestionIndex: $currentQuestionIndex, currentInputValue: $currentInputValue, isCompleted: $isCompleted, generatedProfile: $generatedProfile, generatedEvaluation: $generatedEvaluation, validationError: $validationError)';
}


}

/// @nodoc
abstract mixin class _$DashboardIntakeStateModelCopyWith<$Res> implements $DashboardIntakeStateModelCopyWith<$Res> {
  factory _$DashboardIntakeStateModelCopyWith(_DashboardIntakeStateModel value, $Res Function(_DashboardIntakeStateModel) _then) = __$DashboardIntakeStateModelCopyWithImpl;
@override @useResult
$Res call({
 List<DashboardIntakeQuestionModel> questions, List<DashboardIntakeMessageModel> messages, Map<String, double> answers, int currentQuestionIndex, String currentInputValue, bool isCompleted, DashboardProfileModel? generatedProfile, DashboardEvaluationModel? generatedEvaluation, String? validationError
});


@override $DashboardProfileModelCopyWith<$Res>? get generatedProfile;@override $DashboardEvaluationModelCopyWith<$Res>? get generatedEvaluation;

}
/// @nodoc
class __$DashboardIntakeStateModelCopyWithImpl<$Res>
    implements _$DashboardIntakeStateModelCopyWith<$Res> {
  __$DashboardIntakeStateModelCopyWithImpl(this._self, this._then);

  final _DashboardIntakeStateModel _self;
  final $Res Function(_DashboardIntakeStateModel) _then;

/// Create a copy of DashboardIntakeStateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questions = null,Object? messages = null,Object? answers = null,Object? currentQuestionIndex = null,Object? currentInputValue = null,Object? isCompleted = null,Object? generatedProfile = freezed,Object? generatedEvaluation = freezed,Object? validationError = freezed,}) {
  return _then(_DashboardIntakeStateModel(
questions: null == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<DashboardIntakeQuestionModel>,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<DashboardIntakeMessageModel>,answers: null == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as Map<String, double>,currentQuestionIndex: null == currentQuestionIndex ? _self.currentQuestionIndex : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
as int,currentInputValue: null == currentInputValue ? _self.currentInputValue : currentInputValue // ignore: cast_nullable_to_non_nullable
as String,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,generatedProfile: freezed == generatedProfile ? _self.generatedProfile : generatedProfile // ignore: cast_nullable_to_non_nullable
as DashboardProfileModel?,generatedEvaluation: freezed == generatedEvaluation ? _self.generatedEvaluation : generatedEvaluation // ignore: cast_nullable_to_non_nullable
as DashboardEvaluationModel?,validationError: freezed == validationError ? _self.validationError : validationError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of DashboardIntakeStateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardProfileModelCopyWith<$Res>? get generatedProfile {
    if (_self.generatedProfile == null) {
    return null;
  }

  return $DashboardProfileModelCopyWith<$Res>(_self.generatedProfile!, (value) {
    return _then(_self.copyWith(generatedProfile: value));
  });
}/// Create a copy of DashboardIntakeStateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardEvaluationModelCopyWith<$Res>? get generatedEvaluation {
    if (_self.generatedEvaluation == null) {
    return null;
  }

  return $DashboardEvaluationModelCopyWith<$Res>(_self.generatedEvaluation!, (value) {
    return _then(_self.copyWith(generatedEvaluation: value));
  });
}
}


/// @nodoc
mixin _$DashboardProfileModel {

 double get monthlyIncome; double get existingEmi; double get desiredLoanAmount; double get tenureMonths; double get savingsBuffer;
/// Create a copy of DashboardProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardProfileModelCopyWith<DashboardProfileModel> get copyWith => _$DashboardProfileModelCopyWithImpl<DashboardProfileModel>(this as DashboardProfileModel, _$identity);

  /// Serializes this DashboardProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardProfileModel&&(identical(other.monthlyIncome, monthlyIncome) || other.monthlyIncome == monthlyIncome)&&(identical(other.existingEmi, existingEmi) || other.existingEmi == existingEmi)&&(identical(other.desiredLoanAmount, desiredLoanAmount) || other.desiredLoanAmount == desiredLoanAmount)&&(identical(other.tenureMonths, tenureMonths) || other.tenureMonths == tenureMonths)&&(identical(other.savingsBuffer, savingsBuffer) || other.savingsBuffer == savingsBuffer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,monthlyIncome,existingEmi,desiredLoanAmount,tenureMonths,savingsBuffer);

@override
String toString() {
  return 'DashboardProfileModel(monthlyIncome: $monthlyIncome, existingEmi: $existingEmi, desiredLoanAmount: $desiredLoanAmount, tenureMonths: $tenureMonths, savingsBuffer: $savingsBuffer)';
}


}

/// @nodoc
abstract mixin class $DashboardProfileModelCopyWith<$Res>  {
  factory $DashboardProfileModelCopyWith(DashboardProfileModel value, $Res Function(DashboardProfileModel) _then) = _$DashboardProfileModelCopyWithImpl;
@useResult
$Res call({
 double monthlyIncome, double existingEmi, double desiredLoanAmount, double tenureMonths, double savingsBuffer
});




}
/// @nodoc
class _$DashboardProfileModelCopyWithImpl<$Res>
    implements $DashboardProfileModelCopyWith<$Res> {
  _$DashboardProfileModelCopyWithImpl(this._self, this._then);

  final DashboardProfileModel _self;
  final $Res Function(DashboardProfileModel) _then;

/// Create a copy of DashboardProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? monthlyIncome = null,Object? existingEmi = null,Object? desiredLoanAmount = null,Object? tenureMonths = null,Object? savingsBuffer = null,}) {
  return _then(_self.copyWith(
monthlyIncome: null == monthlyIncome ? _self.monthlyIncome : monthlyIncome // ignore: cast_nullable_to_non_nullable
as double,existingEmi: null == existingEmi ? _self.existingEmi : existingEmi // ignore: cast_nullable_to_non_nullable
as double,desiredLoanAmount: null == desiredLoanAmount ? _self.desiredLoanAmount : desiredLoanAmount // ignore: cast_nullable_to_non_nullable
as double,tenureMonths: null == tenureMonths ? _self.tenureMonths : tenureMonths // ignore: cast_nullable_to_non_nullable
as double,savingsBuffer: null == savingsBuffer ? _self.savingsBuffer : savingsBuffer // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardProfileModel].
extension DashboardProfileModelPatterns on DashboardProfileModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardProfileModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardProfileModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardProfileModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double monthlyIncome,  double existingEmi,  double desiredLoanAmount,  double tenureMonths,  double savingsBuffer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardProfileModel() when $default != null:
return $default(_that.monthlyIncome,_that.existingEmi,_that.desiredLoanAmount,_that.tenureMonths,_that.savingsBuffer);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double monthlyIncome,  double existingEmi,  double desiredLoanAmount,  double tenureMonths,  double savingsBuffer)  $default,) {final _that = this;
switch (_that) {
case _DashboardProfileModel():
return $default(_that.monthlyIncome,_that.existingEmi,_that.desiredLoanAmount,_that.tenureMonths,_that.savingsBuffer);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double monthlyIncome,  double existingEmi,  double desiredLoanAmount,  double tenureMonths,  double savingsBuffer)?  $default,) {final _that = this;
switch (_that) {
case _DashboardProfileModel() when $default != null:
return $default(_that.monthlyIncome,_that.existingEmi,_that.desiredLoanAmount,_that.tenureMonths,_that.savingsBuffer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardProfileModel implements DashboardProfileModel {
  const _DashboardProfileModel({this.monthlyIncome = 65000, this.existingEmi = 14000, this.desiredLoanAmount = 500000, this.tenureMonths = 36, this.savingsBuffer = 50000});
  factory _DashboardProfileModel.fromJson(Map<String, dynamic> json) => _$DashboardProfileModelFromJson(json);

@override@JsonKey() final  double monthlyIncome;
@override@JsonKey() final  double existingEmi;
@override@JsonKey() final  double desiredLoanAmount;
@override@JsonKey() final  double tenureMonths;
@override@JsonKey() final  double savingsBuffer;

/// Create a copy of DashboardProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardProfileModelCopyWith<_DashboardProfileModel> get copyWith => __$DashboardProfileModelCopyWithImpl<_DashboardProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardProfileModel&&(identical(other.monthlyIncome, monthlyIncome) || other.monthlyIncome == monthlyIncome)&&(identical(other.existingEmi, existingEmi) || other.existingEmi == existingEmi)&&(identical(other.desiredLoanAmount, desiredLoanAmount) || other.desiredLoanAmount == desiredLoanAmount)&&(identical(other.tenureMonths, tenureMonths) || other.tenureMonths == tenureMonths)&&(identical(other.savingsBuffer, savingsBuffer) || other.savingsBuffer == savingsBuffer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,monthlyIncome,existingEmi,desiredLoanAmount,tenureMonths,savingsBuffer);

@override
String toString() {
  return 'DashboardProfileModel(monthlyIncome: $monthlyIncome, existingEmi: $existingEmi, desiredLoanAmount: $desiredLoanAmount, tenureMonths: $tenureMonths, savingsBuffer: $savingsBuffer)';
}


}

/// @nodoc
abstract mixin class _$DashboardProfileModelCopyWith<$Res> implements $DashboardProfileModelCopyWith<$Res> {
  factory _$DashboardProfileModelCopyWith(_DashboardProfileModel value, $Res Function(_DashboardProfileModel) _then) = __$DashboardProfileModelCopyWithImpl;
@override @useResult
$Res call({
 double monthlyIncome, double existingEmi, double desiredLoanAmount, double tenureMonths, double savingsBuffer
});




}
/// @nodoc
class __$DashboardProfileModelCopyWithImpl<$Res>
    implements _$DashboardProfileModelCopyWith<$Res> {
  __$DashboardProfileModelCopyWithImpl(this._self, this._then);

  final _DashboardProfileModel _self;
  final $Res Function(_DashboardProfileModel) _then;

/// Create a copy of DashboardProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? monthlyIncome = null,Object? existingEmi = null,Object? desiredLoanAmount = null,Object? tenureMonths = null,Object? savingsBuffer = null,}) {
  return _then(_DashboardProfileModel(
monthlyIncome: null == monthlyIncome ? _self.monthlyIncome : monthlyIncome // ignore: cast_nullable_to_non_nullable
as double,existingEmi: null == existingEmi ? _self.existingEmi : existingEmi // ignore: cast_nullable_to_non_nullable
as double,desiredLoanAmount: null == desiredLoanAmount ? _self.desiredLoanAmount : desiredLoanAmount // ignore: cast_nullable_to_non_nullable
as double,tenureMonths: null == tenureMonths ? _self.tenureMonths : tenureMonths // ignore: cast_nullable_to_non_nullable
as double,savingsBuffer: null == savingsBuffer ? _self.savingsBuffer : savingsBuffer // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$DashboardRoadmapModel {

 String get phase; List<String> get steps;
/// Create a copy of DashboardRoadmapModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardRoadmapModelCopyWith<DashboardRoadmapModel> get copyWith => _$DashboardRoadmapModelCopyWithImpl<DashboardRoadmapModel>(this as DashboardRoadmapModel, _$identity);

  /// Serializes this DashboardRoadmapModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardRoadmapModel&&(identical(other.phase, phase) || other.phase == phase)&&const DeepCollectionEquality().equals(other.steps, steps));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phase,const DeepCollectionEquality().hash(steps));

@override
String toString() {
  return 'DashboardRoadmapModel(phase: $phase, steps: $steps)';
}


}

/// @nodoc
abstract mixin class $DashboardRoadmapModelCopyWith<$Res>  {
  factory $DashboardRoadmapModelCopyWith(DashboardRoadmapModel value, $Res Function(DashboardRoadmapModel) _then) = _$DashboardRoadmapModelCopyWithImpl;
@useResult
$Res call({
 String phase, List<String> steps
});




}
/// @nodoc
class _$DashboardRoadmapModelCopyWithImpl<$Res>
    implements $DashboardRoadmapModelCopyWith<$Res> {
  _$DashboardRoadmapModelCopyWithImpl(this._self, this._then);

  final DashboardRoadmapModel _self;
  final $Res Function(DashboardRoadmapModel) _then;

/// Create a copy of DashboardRoadmapModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phase = null,Object? steps = null,}) {
  return _then(_self.copyWith(
phase: null == phase ? _self.phase : phase // ignore: cast_nullable_to_non_nullable
as String,steps: null == steps ? _self.steps : steps // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardRoadmapModel].
extension DashboardRoadmapModelPatterns on DashboardRoadmapModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardRoadmapModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardRoadmapModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardRoadmapModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardRoadmapModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardRoadmapModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardRoadmapModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phase,  List<String> steps)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardRoadmapModel() when $default != null:
return $default(_that.phase,_that.steps);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phase,  List<String> steps)  $default,) {final _that = this;
switch (_that) {
case _DashboardRoadmapModel():
return $default(_that.phase,_that.steps);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phase,  List<String> steps)?  $default,) {final _that = this;
switch (_that) {
case _DashboardRoadmapModel() when $default != null:
return $default(_that.phase,_that.steps);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardRoadmapModel implements DashboardRoadmapModel {
  const _DashboardRoadmapModel({required this.phase, final  List<String> steps = const <String>[]}): _steps = steps;
  factory _DashboardRoadmapModel.fromJson(Map<String, dynamic> json) => _$DashboardRoadmapModelFromJson(json);

@override final  String phase;
 final  List<String> _steps;
@override@JsonKey() List<String> get steps {
  if (_steps is EqualUnmodifiableListView) return _steps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_steps);
}


/// Create a copy of DashboardRoadmapModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardRoadmapModelCopyWith<_DashboardRoadmapModel> get copyWith => __$DashboardRoadmapModelCopyWithImpl<_DashboardRoadmapModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardRoadmapModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardRoadmapModel&&(identical(other.phase, phase) || other.phase == phase)&&const DeepCollectionEquality().equals(other._steps, _steps));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phase,const DeepCollectionEquality().hash(_steps));

@override
String toString() {
  return 'DashboardRoadmapModel(phase: $phase, steps: $steps)';
}


}

/// @nodoc
abstract mixin class _$DashboardRoadmapModelCopyWith<$Res> implements $DashboardRoadmapModelCopyWith<$Res> {
  factory _$DashboardRoadmapModelCopyWith(_DashboardRoadmapModel value, $Res Function(_DashboardRoadmapModel) _then) = __$DashboardRoadmapModelCopyWithImpl;
@override @useResult
$Res call({
 String phase, List<String> steps
});




}
/// @nodoc
class __$DashboardRoadmapModelCopyWithImpl<$Res>
    implements _$DashboardRoadmapModelCopyWith<$Res> {
  __$DashboardRoadmapModelCopyWithImpl(this._self, this._then);

  final _DashboardRoadmapModel _self;
  final $Res Function(_DashboardRoadmapModel) _then;

/// Create a copy of DashboardRoadmapModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phase = null,Object? steps = null,}) {
  return _then(_DashboardRoadmapModel(
phase: null == phase ? _self.phase : phase // ignore: cast_nullable_to_non_nullable
as String,steps: null == steps ? _self._steps : steps // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$DashboardScenarioModel {

 DashboardScenarioType get type; String get title; String? get description;
/// Create a copy of DashboardScenarioModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardScenarioModelCopyWith<DashboardScenarioModel> get copyWith => _$DashboardScenarioModelCopyWithImpl<DashboardScenarioModel>(this as DashboardScenarioModel, _$identity);

  /// Serializes this DashboardScenarioModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardScenarioModel&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,title,description);

@override
String toString() {
  return 'DashboardScenarioModel(type: $type, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $DashboardScenarioModelCopyWith<$Res>  {
  factory $DashboardScenarioModelCopyWith(DashboardScenarioModel value, $Res Function(DashboardScenarioModel) _then) = _$DashboardScenarioModelCopyWithImpl;
@useResult
$Res call({
 DashboardScenarioType type, String title, String? description
});




}
/// @nodoc
class _$DashboardScenarioModelCopyWithImpl<$Res>
    implements $DashboardScenarioModelCopyWith<$Res> {
  _$DashboardScenarioModelCopyWithImpl(this._self, this._then);

  final DashboardScenarioModel _self;
  final $Res Function(DashboardScenarioModel) _then;

/// Create a copy of DashboardScenarioModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? title = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as DashboardScenarioType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardScenarioModel].
extension DashboardScenarioModelPatterns on DashboardScenarioModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardScenarioModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardScenarioModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardScenarioModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardScenarioModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardScenarioModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardScenarioModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DashboardScenarioType type,  String title,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardScenarioModel() when $default != null:
return $default(_that.type,_that.title,_that.description);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DashboardScenarioType type,  String title,  String? description)  $default,) {final _that = this;
switch (_that) {
case _DashboardScenarioModel():
return $default(_that.type,_that.title,_that.description);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DashboardScenarioType type,  String title,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _DashboardScenarioModel() when $default != null:
return $default(_that.type,_that.title,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardScenarioModel implements DashboardScenarioModel {
  const _DashboardScenarioModel({required this.type, required this.title, this.description});
  factory _DashboardScenarioModel.fromJson(Map<String, dynamic> json) => _$DashboardScenarioModelFromJson(json);

@override final  DashboardScenarioType type;
@override final  String title;
@override final  String? description;

/// Create a copy of DashboardScenarioModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardScenarioModelCopyWith<_DashboardScenarioModel> get copyWith => __$DashboardScenarioModelCopyWithImpl<_DashboardScenarioModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardScenarioModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardScenarioModel&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,title,description);

@override
String toString() {
  return 'DashboardScenarioModel(type: $type, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$DashboardScenarioModelCopyWith<$Res> implements $DashboardScenarioModelCopyWith<$Res> {
  factory _$DashboardScenarioModelCopyWith(_DashboardScenarioModel value, $Res Function(_DashboardScenarioModel) _then) = __$DashboardScenarioModelCopyWithImpl;
@override @useResult
$Res call({
 DashboardScenarioType type, String title, String? description
});




}
/// @nodoc
class __$DashboardScenarioModelCopyWithImpl<$Res>
    implements _$DashboardScenarioModelCopyWith<$Res> {
  __$DashboardScenarioModelCopyWithImpl(this._self, this._then);

  final _DashboardScenarioModel _self;
  final $Res Function(_DashboardScenarioModel) _then;

/// Create a copy of DashboardScenarioModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? title = null,Object? description = freezed,}) {
  return _then(_DashboardScenarioModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as DashboardScenarioType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DashboardStateModel {

 DashboardProfileModel get profile; DashboardEvaluationModel get evaluation; List<DashboardScenarioModel> get scenarios;
/// Create a copy of DashboardStateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardStateModelCopyWith<DashboardStateModel> get copyWith => _$DashboardStateModelCopyWithImpl<DashboardStateModel>(this as DashboardStateModel, _$identity);

  /// Serializes this DashboardStateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardStateModel&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.evaluation, evaluation) || other.evaluation == evaluation)&&const DeepCollectionEquality().equals(other.scenarios, scenarios));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profile,evaluation,const DeepCollectionEquality().hash(scenarios));

@override
String toString() {
  return 'DashboardStateModel(profile: $profile, evaluation: $evaluation, scenarios: $scenarios)';
}


}

/// @nodoc
abstract mixin class $DashboardStateModelCopyWith<$Res>  {
  factory $DashboardStateModelCopyWith(DashboardStateModel value, $Res Function(DashboardStateModel) _then) = _$DashboardStateModelCopyWithImpl;
@useResult
$Res call({
 DashboardProfileModel profile, DashboardEvaluationModel evaluation, List<DashboardScenarioModel> scenarios
});


$DashboardProfileModelCopyWith<$Res> get profile;$DashboardEvaluationModelCopyWith<$Res> get evaluation;

}
/// @nodoc
class _$DashboardStateModelCopyWithImpl<$Res>
    implements $DashboardStateModelCopyWith<$Res> {
  _$DashboardStateModelCopyWithImpl(this._self, this._then);

  final DashboardStateModel _self;
  final $Res Function(DashboardStateModel) _then;

/// Create a copy of DashboardStateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profile = null,Object? evaluation = null,Object? scenarios = null,}) {
  return _then(_self.copyWith(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as DashboardProfileModel,evaluation: null == evaluation ? _self.evaluation : evaluation // ignore: cast_nullable_to_non_nullable
as DashboardEvaluationModel,scenarios: null == scenarios ? _self.scenarios : scenarios // ignore: cast_nullable_to_non_nullable
as List<DashboardScenarioModel>,
  ));
}
/// Create a copy of DashboardStateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardProfileModelCopyWith<$Res> get profile {
  
  return $DashboardProfileModelCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of DashboardStateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardEvaluationModelCopyWith<$Res> get evaluation {
  
  return $DashboardEvaluationModelCopyWith<$Res>(_self.evaluation, (value) {
    return _then(_self.copyWith(evaluation: value));
  });
}
}


/// Adds pattern-matching-related methods to [DashboardStateModel].
extension DashboardStateModelPatterns on DashboardStateModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardStateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardStateModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardStateModel value)  $default,){
final _that = this;
switch (_that) {
case _DashboardStateModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardStateModel value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardStateModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DashboardProfileModel profile,  DashboardEvaluationModel evaluation,  List<DashboardScenarioModel> scenarios)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardStateModel() when $default != null:
return $default(_that.profile,_that.evaluation,_that.scenarios);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DashboardProfileModel profile,  DashboardEvaluationModel evaluation,  List<DashboardScenarioModel> scenarios)  $default,) {final _that = this;
switch (_that) {
case _DashboardStateModel():
return $default(_that.profile,_that.evaluation,_that.scenarios);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DashboardProfileModel profile,  DashboardEvaluationModel evaluation,  List<DashboardScenarioModel> scenarios)?  $default,) {final _that = this;
switch (_that) {
case _DashboardStateModel() when $default != null:
return $default(_that.profile,_that.evaluation,_that.scenarios);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardStateModel implements DashboardStateModel {
  const _DashboardStateModel({required this.profile, required this.evaluation, final  List<DashboardScenarioModel> scenarios = const <DashboardScenarioModel>[]}): _scenarios = scenarios;
  factory _DashboardStateModel.fromJson(Map<String, dynamic> json) => _$DashboardStateModelFromJson(json);

@override final  DashboardProfileModel profile;
@override final  DashboardEvaluationModel evaluation;
 final  List<DashboardScenarioModel> _scenarios;
@override@JsonKey() List<DashboardScenarioModel> get scenarios {
  if (_scenarios is EqualUnmodifiableListView) return _scenarios;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scenarios);
}


/// Create a copy of DashboardStateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardStateModelCopyWith<_DashboardStateModel> get copyWith => __$DashboardStateModelCopyWithImpl<_DashboardStateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardStateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardStateModel&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.evaluation, evaluation) || other.evaluation == evaluation)&&const DeepCollectionEquality().equals(other._scenarios, _scenarios));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,profile,evaluation,const DeepCollectionEquality().hash(_scenarios));

@override
String toString() {
  return 'DashboardStateModel(profile: $profile, evaluation: $evaluation, scenarios: $scenarios)';
}


}

/// @nodoc
abstract mixin class _$DashboardStateModelCopyWith<$Res> implements $DashboardStateModelCopyWith<$Res> {
  factory _$DashboardStateModelCopyWith(_DashboardStateModel value, $Res Function(_DashboardStateModel) _then) = __$DashboardStateModelCopyWithImpl;
@override @useResult
$Res call({
 DashboardProfileModel profile, DashboardEvaluationModel evaluation, List<DashboardScenarioModel> scenarios
});


@override $DashboardProfileModelCopyWith<$Res> get profile;@override $DashboardEvaluationModelCopyWith<$Res> get evaluation;

}
/// @nodoc
class __$DashboardStateModelCopyWithImpl<$Res>
    implements _$DashboardStateModelCopyWith<$Res> {
  __$DashboardStateModelCopyWithImpl(this._self, this._then);

  final _DashboardStateModel _self;
  final $Res Function(_DashboardStateModel) _then;

/// Create a copy of DashboardStateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profile = null,Object? evaluation = null,Object? scenarios = null,}) {
  return _then(_DashboardStateModel(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as DashboardProfileModel,evaluation: null == evaluation ? _self.evaluation : evaluation // ignore: cast_nullable_to_non_nullable
as DashboardEvaluationModel,scenarios: null == scenarios ? _self._scenarios : scenarios // ignore: cast_nullable_to_non_nullable
as List<DashboardScenarioModel>,
  ));
}

/// Create a copy of DashboardStateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardProfileModelCopyWith<$Res> get profile {
  
  return $DashboardProfileModelCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of DashboardStateModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardEvaluationModelCopyWith<$Res> get evaluation {
  
  return $DashboardEvaluationModelCopyWith<$Res>(_self.evaluation, (value) {
    return _then(_self.copyWith(evaluation: value));
  });
}
}

// dart format on
