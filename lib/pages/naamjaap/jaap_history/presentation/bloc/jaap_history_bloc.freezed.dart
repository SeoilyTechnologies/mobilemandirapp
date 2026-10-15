// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jaap_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JaapHistoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JaapHistoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JaapHistoryEvent()';
}


}

/// @nodoc
class $JaapHistoryEventCopyWith<$Res>  {
$JaapHistoryEventCopyWith(JaapHistoryEvent _, $Res Function(JaapHistoryEvent) __);
}


/// Adds pattern-matching-related methods to [JaapHistoryEvent].
extension JaapHistoryEventPatterns on JaapHistoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadHistory value)?  loadHistory,TResult Function( ChangeStartDate value)?  changeStartDate,TResult Function( ChangeEndDate value)?  changeEndDate,TResult Function( ApplyFilter value)?  applyFilter,TResult Function( ClearFilter value)?  clearFilter,TResult Function( Retry value)?  retry,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadHistory() when loadHistory != null:
return loadHistory(_that);case ChangeStartDate() when changeStartDate != null:
return changeStartDate(_that);case ChangeEndDate() when changeEndDate != null:
return changeEndDate(_that);case ApplyFilter() when applyFilter != null:
return applyFilter(_that);case ClearFilter() when clearFilter != null:
return clearFilter(_that);case Retry() when retry != null:
return retry(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadHistory value)  loadHistory,required TResult Function( ChangeStartDate value)  changeStartDate,required TResult Function( ChangeEndDate value)  changeEndDate,required TResult Function( ApplyFilter value)  applyFilter,required TResult Function( ClearFilter value)  clearFilter,required TResult Function( Retry value)  retry,}){
final _that = this;
switch (_that) {
case LoadHistory():
return loadHistory(_that);case ChangeStartDate():
return changeStartDate(_that);case ChangeEndDate():
return changeEndDate(_that);case ApplyFilter():
return applyFilter(_that);case ClearFilter():
return clearFilter(_that);case Retry():
return retry(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadHistory value)?  loadHistory,TResult? Function( ChangeStartDate value)?  changeStartDate,TResult? Function( ChangeEndDate value)?  changeEndDate,TResult? Function( ApplyFilter value)?  applyFilter,TResult? Function( ClearFilter value)?  clearFilter,TResult? Function( Retry value)?  retry,}){
final _that = this;
switch (_that) {
case LoadHistory() when loadHistory != null:
return loadHistory(_that);case ChangeStartDate() when changeStartDate != null:
return changeStartDate(_that);case ChangeEndDate() when changeEndDate != null:
return changeEndDate(_that);case ApplyFilter() when applyFilter != null:
return applyFilter(_that);case ClearFilter() when clearFilter != null:
return clearFilter(_that);case Retry() when retry != null:
return retry(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( DateTime? startDate,  DateTime? endDate)?  loadHistory,TResult Function( DateTime? startDate)?  changeStartDate,TResult Function( DateTime? endDate)?  changeEndDate,TResult Function()?  applyFilter,TResult Function()?  clearFilter,TResult Function()?  retry,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadHistory() when loadHistory != null:
return loadHistory(_that.startDate,_that.endDate);case ChangeStartDate() when changeStartDate != null:
return changeStartDate(_that.startDate);case ChangeEndDate() when changeEndDate != null:
return changeEndDate(_that.endDate);case ApplyFilter() when applyFilter != null:
return applyFilter();case ClearFilter() when clearFilter != null:
return clearFilter();case Retry() when retry != null:
return retry();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( DateTime? startDate,  DateTime? endDate)  loadHistory,required TResult Function( DateTime? startDate)  changeStartDate,required TResult Function( DateTime? endDate)  changeEndDate,required TResult Function()  applyFilter,required TResult Function()  clearFilter,required TResult Function()  retry,}) {final _that = this;
switch (_that) {
case LoadHistory():
return loadHistory(_that.startDate,_that.endDate);case ChangeStartDate():
return changeStartDate(_that.startDate);case ChangeEndDate():
return changeEndDate(_that.endDate);case ApplyFilter():
return applyFilter();case ClearFilter():
return clearFilter();case Retry():
return retry();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( DateTime? startDate,  DateTime? endDate)?  loadHistory,TResult? Function( DateTime? startDate)?  changeStartDate,TResult? Function( DateTime? endDate)?  changeEndDate,TResult? Function()?  applyFilter,TResult? Function()?  clearFilter,TResult? Function()?  retry,}) {final _that = this;
switch (_that) {
case LoadHistory() when loadHistory != null:
return loadHistory(_that.startDate,_that.endDate);case ChangeStartDate() when changeStartDate != null:
return changeStartDate(_that.startDate);case ChangeEndDate() when changeEndDate != null:
return changeEndDate(_that.endDate);case ApplyFilter() when applyFilter != null:
return applyFilter();case ClearFilter() when clearFilter != null:
return clearFilter();case Retry() when retry != null:
return retry();case _:
  return null;

}
}

}

/// @nodoc


class LoadHistory implements JaapHistoryEvent {
  const LoadHistory({this.startDate, this.endDate});
  

 final  DateTime? startDate;
 final  DateTime? endDate;

/// Create a copy of JaapHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadHistoryCopyWith<LoadHistory> get copyWith => _$LoadHistoryCopyWithImpl<LoadHistory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadHistory&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,startDate,endDate);

@override
String toString() {
  return 'JaapHistoryEvent.loadHistory(startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $LoadHistoryCopyWith<$Res> implements $JaapHistoryEventCopyWith<$Res> {
  factory $LoadHistoryCopyWith(LoadHistory value, $Res Function(LoadHistory) _then) = _$LoadHistoryCopyWithImpl;
@useResult
$Res call({
 DateTime? startDate, DateTime? endDate
});




}
/// @nodoc
class _$LoadHistoryCopyWithImpl<$Res>
    implements $LoadHistoryCopyWith<$Res> {
  _$LoadHistoryCopyWithImpl(this._self, this._then);

  final LoadHistory _self;
  final $Res Function(LoadHistory) _then;

/// Create a copy of JaapHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? startDate = freezed,Object? endDate = freezed,}) {
  return _then(LoadHistory(
startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc


class ChangeStartDate implements JaapHistoryEvent {
  const ChangeStartDate(this.startDate);
  

 final  DateTime? startDate;

/// Create a copy of JaapHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeStartDateCopyWith<ChangeStartDate> get copyWith => _$ChangeStartDateCopyWithImpl<ChangeStartDate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeStartDate&&(identical(other.startDate, startDate) || other.startDate == startDate));
}


@override
int get hashCode => Object.hash(runtimeType,startDate);

@override
String toString() {
  return 'JaapHistoryEvent.changeStartDate(startDate: $startDate)';
}


}

/// @nodoc
abstract mixin class $ChangeStartDateCopyWith<$Res> implements $JaapHistoryEventCopyWith<$Res> {
  factory $ChangeStartDateCopyWith(ChangeStartDate value, $Res Function(ChangeStartDate) _then) = _$ChangeStartDateCopyWithImpl;
@useResult
$Res call({
 DateTime? startDate
});




}
/// @nodoc
class _$ChangeStartDateCopyWithImpl<$Res>
    implements $ChangeStartDateCopyWith<$Res> {
  _$ChangeStartDateCopyWithImpl(this._self, this._then);

  final ChangeStartDate _self;
  final $Res Function(ChangeStartDate) _then;

/// Create a copy of JaapHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? startDate = freezed,}) {
  return _then(ChangeStartDate(
freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc


class ChangeEndDate implements JaapHistoryEvent {
  const ChangeEndDate(this.endDate);
  

 final  DateTime? endDate;

/// Create a copy of JaapHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeEndDateCopyWith<ChangeEndDate> get copyWith => _$ChangeEndDateCopyWithImpl<ChangeEndDate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeEndDate&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,endDate);

@override
String toString() {
  return 'JaapHistoryEvent.changeEndDate(endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $ChangeEndDateCopyWith<$Res> implements $JaapHistoryEventCopyWith<$Res> {
  factory $ChangeEndDateCopyWith(ChangeEndDate value, $Res Function(ChangeEndDate) _then) = _$ChangeEndDateCopyWithImpl;
@useResult
$Res call({
 DateTime? endDate
});




}
/// @nodoc
class _$ChangeEndDateCopyWithImpl<$Res>
    implements $ChangeEndDateCopyWith<$Res> {
  _$ChangeEndDateCopyWithImpl(this._self, this._then);

  final ChangeEndDate _self;
  final $Res Function(ChangeEndDate) _then;

/// Create a copy of JaapHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? endDate = freezed,}) {
  return _then(ChangeEndDate(
freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc


class ApplyFilter implements JaapHistoryEvent {
  const ApplyFilter();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplyFilter);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JaapHistoryEvent.applyFilter()';
}


}




/// @nodoc


class ClearFilter implements JaapHistoryEvent {
  const ClearFilter();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearFilter);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JaapHistoryEvent.clearFilter()';
}


}




/// @nodoc


class Retry implements JaapHistoryEvent {
  const Retry();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Retry);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JaapHistoryEvent.retry()';
}


}




// dart format on
