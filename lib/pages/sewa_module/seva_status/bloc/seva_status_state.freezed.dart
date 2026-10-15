// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seva_status_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SevaStatusState {

 String get errorMessage; bool get isLoading; SevaStatusApiResponse get sevaStatusApiResponse;
/// Create a copy of SevaStatusState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SevaStatusStateCopyWith<SevaStatusState> get copyWith => _$SevaStatusStateCopyWithImpl<SevaStatusState>(this as SevaStatusState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SevaStatusState&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.sevaStatusApiResponse, sevaStatusApiResponse) || other.sevaStatusApiResponse == sevaStatusApiResponse));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage,isLoading,sevaStatusApiResponse);

@override
String toString() {
  return 'SevaStatusState(errorMessage: $errorMessage, isLoading: $isLoading, sevaStatusApiResponse: $sevaStatusApiResponse)';
}


}

/// @nodoc
abstract mixin class $SevaStatusStateCopyWith<$Res>  {
  factory $SevaStatusStateCopyWith(SevaStatusState value, $Res Function(SevaStatusState) _then) = _$SevaStatusStateCopyWithImpl;
@useResult
$Res call({
 String errorMessage, bool isLoading, SevaStatusApiResponse sevaStatusApiResponse
});


$SevaStatusApiResponseCopyWith<$Res> get sevaStatusApiResponse;

}
/// @nodoc
class _$SevaStatusStateCopyWithImpl<$Res>
    implements $SevaStatusStateCopyWith<$Res> {
  _$SevaStatusStateCopyWithImpl(this._self, this._then);

  final SevaStatusState _self;
  final $Res Function(SevaStatusState) _then;

/// Create a copy of SevaStatusState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? errorMessage = null,Object? isLoading = null,Object? sevaStatusApiResponse = null,}) {
  return _then(_self.copyWith(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,sevaStatusApiResponse: null == sevaStatusApiResponse ? _self.sevaStatusApiResponse : sevaStatusApiResponse // ignore: cast_nullable_to_non_nullable
as SevaStatusApiResponse,
  ));
}
/// Create a copy of SevaStatusState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SevaStatusApiResponseCopyWith<$Res> get sevaStatusApiResponse {
  
  return $SevaStatusApiResponseCopyWith<$Res>(_self.sevaStatusApiResponse, (value) {
    return _then(_self.copyWith(sevaStatusApiResponse: value));
  });
}
}


/// Adds pattern-matching-related methods to [SevaStatusState].
extension SevaStatusStatePatterns on SevaStatusState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SevaStatusState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SevaStatusState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SevaStatusState value)  $default,){
final _that = this;
switch (_that) {
case _SevaStatusState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SevaStatusState value)?  $default,){
final _that = this;
switch (_that) {
case _SevaStatusState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String errorMessage,  bool isLoading,  SevaStatusApiResponse sevaStatusApiResponse)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SevaStatusState() when $default != null:
return $default(_that.errorMessage,_that.isLoading,_that.sevaStatusApiResponse);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String errorMessage,  bool isLoading,  SevaStatusApiResponse sevaStatusApiResponse)  $default,) {final _that = this;
switch (_that) {
case _SevaStatusState():
return $default(_that.errorMessage,_that.isLoading,_that.sevaStatusApiResponse);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String errorMessage,  bool isLoading,  SevaStatusApiResponse sevaStatusApiResponse)?  $default,) {final _that = this;
switch (_that) {
case _SevaStatusState() when $default != null:
return $default(_that.errorMessage,_that.isLoading,_that.sevaStatusApiResponse);case _:
  return null;

}
}

}

/// @nodoc


class _SevaStatusState implements SevaStatusState {
  const _SevaStatusState({this.errorMessage = '', this.isLoading = false, this.sevaStatusApiResponse = const SevaStatusApiResponse()});
  

@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  SevaStatusApiResponse sevaStatusApiResponse;

/// Create a copy of SevaStatusState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SevaStatusStateCopyWith<_SevaStatusState> get copyWith => __$SevaStatusStateCopyWithImpl<_SevaStatusState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SevaStatusState&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.sevaStatusApiResponse, sevaStatusApiResponse) || other.sevaStatusApiResponse == sevaStatusApiResponse));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage,isLoading,sevaStatusApiResponse);

@override
String toString() {
  return 'SevaStatusState(errorMessage: $errorMessage, isLoading: $isLoading, sevaStatusApiResponse: $sevaStatusApiResponse)';
}


}

/// @nodoc
abstract mixin class _$SevaStatusStateCopyWith<$Res> implements $SevaStatusStateCopyWith<$Res> {
  factory _$SevaStatusStateCopyWith(_SevaStatusState value, $Res Function(_SevaStatusState) _then) = __$SevaStatusStateCopyWithImpl;
@override @useResult
$Res call({
 String errorMessage, bool isLoading, SevaStatusApiResponse sevaStatusApiResponse
});


@override $SevaStatusApiResponseCopyWith<$Res> get sevaStatusApiResponse;

}
/// @nodoc
class __$SevaStatusStateCopyWithImpl<$Res>
    implements _$SevaStatusStateCopyWith<$Res> {
  __$SevaStatusStateCopyWithImpl(this._self, this._then);

  final _SevaStatusState _self;
  final $Res Function(_SevaStatusState) _then;

/// Create a copy of SevaStatusState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,Object? isLoading = null,Object? sevaStatusApiResponse = null,}) {
  return _then(_SevaStatusState(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,sevaStatusApiResponse: null == sevaStatusApiResponse ? _self.sevaStatusApiResponse : sevaStatusApiResponse // ignore: cast_nullable_to_non_nullable
as SevaStatusApiResponse,
  ));
}

/// Create a copy of SevaStatusState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SevaStatusApiResponseCopyWith<$Res> get sevaStatusApiResponse {
  
  return $SevaStatusApiResponseCopyWith<$Res>(_self.sevaStatusApiResponse, (value) {
    return _then(_self.copyWith(sevaStatusApiResponse: value));
  });
}
}

// dart format on
