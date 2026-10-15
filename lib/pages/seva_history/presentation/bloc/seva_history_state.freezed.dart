// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seva_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SevaHistoryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SevaHistoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SevaHistoryState()';
}


}

/// @nodoc
class $SevaHistoryStateCopyWith<$Res>  {
$SevaHistoryStateCopyWith(SevaHistoryState _, $Res Function(SevaHistoryState) __);
}


/// Adds pattern-matching-related methods to [SevaHistoryState].
extension SevaHistoryStatePatterns on SevaHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( SevaHistoryLoaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case SevaHistoryLoaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( SevaHistoryLoaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case SevaHistoryLoaded():
return loaded(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( SevaHistoryLoaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case SevaHistoryLoaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( SevaHistoryResponse response,  List<SevaHistoryCard> accumulatedSevaList,  String currentStatus,  bool isFiltering,  bool isLoadingMore)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case SevaHistoryLoaded() when loaded != null:
return loaded(_that.response,_that.accumulatedSevaList,_that.currentStatus,_that.isFiltering,_that.isLoadingMore);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( SevaHistoryResponse response,  List<SevaHistoryCard> accumulatedSevaList,  String currentStatus,  bool isFiltering,  bool isLoadingMore)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case SevaHistoryLoaded():
return loaded(_that.response,_that.accumulatedSevaList,_that.currentStatus,_that.isFiltering,_that.isLoadingMore);case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( SevaHistoryResponse response,  List<SevaHistoryCard> accumulatedSevaList,  String currentStatus,  bool isFiltering,  bool isLoadingMore)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case SevaHistoryLoaded() when loaded != null:
return loaded(_that.response,_that.accumulatedSevaList,_that.currentStatus,_that.isFiltering,_that.isLoadingMore);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SevaHistoryState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SevaHistoryState.initial()';
}


}




/// @nodoc


class _Loading implements SevaHistoryState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SevaHistoryState.loading()';
}


}




/// @nodoc


class SevaHistoryLoaded implements SevaHistoryState {
  const SevaHistoryLoaded({required this.response, required final  List<SevaHistoryCard> accumulatedSevaList, this.currentStatus = 'all', this.isFiltering = false, this.isLoadingMore = false}): _accumulatedSevaList = accumulatedSevaList;
  

 final  SevaHistoryResponse response;
 final  List<SevaHistoryCard> _accumulatedSevaList;
 List<SevaHistoryCard> get accumulatedSevaList {
  if (_accumulatedSevaList is EqualUnmodifiableListView) return _accumulatedSevaList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accumulatedSevaList);
}

@JsonKey() final  String currentStatus;
@JsonKey() final  bool isFiltering;
@JsonKey() final  bool isLoadingMore;

/// Create a copy of SevaHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SevaHistoryLoadedCopyWith<SevaHistoryLoaded> get copyWith => _$SevaHistoryLoadedCopyWithImpl<SevaHistoryLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SevaHistoryLoaded&&(identical(other.response, response) || other.response == response)&&const DeepCollectionEquality().equals(other._accumulatedSevaList, _accumulatedSevaList)&&(identical(other.currentStatus, currentStatus) || other.currentStatus == currentStatus)&&(identical(other.isFiltering, isFiltering) || other.isFiltering == isFiltering)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,response,const DeepCollectionEquality().hash(_accumulatedSevaList),currentStatus,isFiltering,isLoadingMore);

@override
String toString() {
  return 'SevaHistoryState.loaded(response: $response, accumulatedSevaList: $accumulatedSevaList, currentStatus: $currentStatus, isFiltering: $isFiltering, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $SevaHistoryLoadedCopyWith<$Res> implements $SevaHistoryStateCopyWith<$Res> {
  factory $SevaHistoryLoadedCopyWith(SevaHistoryLoaded value, $Res Function(SevaHistoryLoaded) _then) = _$SevaHistoryLoadedCopyWithImpl;
@useResult
$Res call({
 SevaHistoryResponse response, List<SevaHistoryCard> accumulatedSevaList, String currentStatus, bool isFiltering, bool isLoadingMore
});


$SevaHistoryResponseCopyWith<$Res> get response;

}
/// @nodoc
class _$SevaHistoryLoadedCopyWithImpl<$Res>
    implements $SevaHistoryLoadedCopyWith<$Res> {
  _$SevaHistoryLoadedCopyWithImpl(this._self, this._then);

  final SevaHistoryLoaded _self;
  final $Res Function(SevaHistoryLoaded) _then;

/// Create a copy of SevaHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,Object? accumulatedSevaList = null,Object? currentStatus = null,Object? isFiltering = null,Object? isLoadingMore = null,}) {
  return _then(SevaHistoryLoaded(
response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as SevaHistoryResponse,accumulatedSevaList: null == accumulatedSevaList ? _self._accumulatedSevaList : accumulatedSevaList // ignore: cast_nullable_to_non_nullable
as List<SevaHistoryCard>,currentStatus: null == currentStatus ? _self.currentStatus : currentStatus // ignore: cast_nullable_to_non_nullable
as String,isFiltering: null == isFiltering ? _self.isFiltering : isFiltering // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of SevaHistoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SevaHistoryResponseCopyWith<$Res> get response {
  
  return $SevaHistoryResponseCopyWith<$Res>(_self.response, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}

/// @nodoc


class _Error implements SevaHistoryState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of SevaHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SevaHistoryState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $SevaHistoryStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of SevaHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
