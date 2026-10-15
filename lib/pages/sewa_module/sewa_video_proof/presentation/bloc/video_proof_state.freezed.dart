// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_proof_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VideoProofState {

 String get errorMessage; String get raiseConcernMessage; String get approveVideoMessage; bool get isApproveVideoDone; bool get isLoading; VideoProofApiResponse get videoProofApiResponse;
/// Create a copy of VideoProofState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VideoProofStateCopyWith<VideoProofState> get copyWith => _$VideoProofStateCopyWithImpl<VideoProofState>(this as VideoProofState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoProofState&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.raiseConcernMessage, raiseConcernMessage) || other.raiseConcernMessage == raiseConcernMessage)&&(identical(other.approveVideoMessage, approveVideoMessage) || other.approveVideoMessage == approveVideoMessage)&&(identical(other.isApproveVideoDone, isApproveVideoDone) || other.isApproveVideoDone == isApproveVideoDone)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.videoProofApiResponse, videoProofApiResponse) || other.videoProofApiResponse == videoProofApiResponse));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage,raiseConcernMessage,approveVideoMessage,isApproveVideoDone,isLoading,videoProofApiResponse);

@override
String toString() {
  return 'VideoProofState(errorMessage: $errorMessage, raiseConcernMessage: $raiseConcernMessage, approveVideoMessage: $approveVideoMessage, isApproveVideoDone: $isApproveVideoDone, isLoading: $isLoading, videoProofApiResponse: $videoProofApiResponse)';
}


}

/// @nodoc
abstract mixin class $VideoProofStateCopyWith<$Res>  {
  factory $VideoProofStateCopyWith(VideoProofState value, $Res Function(VideoProofState) _then) = _$VideoProofStateCopyWithImpl;
@useResult
$Res call({
 String errorMessage, String raiseConcernMessage, String approveVideoMessage, bool isApproveVideoDone, bool isLoading, VideoProofApiResponse videoProofApiResponse
});


$VideoProofApiResponseCopyWith<$Res> get videoProofApiResponse;

}
/// @nodoc
class _$VideoProofStateCopyWithImpl<$Res>
    implements $VideoProofStateCopyWith<$Res> {
  _$VideoProofStateCopyWithImpl(this._self, this._then);

  final VideoProofState _self;
  final $Res Function(VideoProofState) _then;

/// Create a copy of VideoProofState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? errorMessage = null,Object? raiseConcernMessage = null,Object? approveVideoMessage = null,Object? isApproveVideoDone = null,Object? isLoading = null,Object? videoProofApiResponse = null,}) {
  return _then(_self.copyWith(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,raiseConcernMessage: null == raiseConcernMessage ? _self.raiseConcernMessage : raiseConcernMessage // ignore: cast_nullable_to_non_nullable
as String,approveVideoMessage: null == approveVideoMessage ? _self.approveVideoMessage : approveVideoMessage // ignore: cast_nullable_to_non_nullable
as String,isApproveVideoDone: null == isApproveVideoDone ? _self.isApproveVideoDone : isApproveVideoDone // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,videoProofApiResponse: null == videoProofApiResponse ? _self.videoProofApiResponse : videoProofApiResponse // ignore: cast_nullable_to_non_nullable
as VideoProofApiResponse,
  ));
}
/// Create a copy of VideoProofState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoProofApiResponseCopyWith<$Res> get videoProofApiResponse {
  
  return $VideoProofApiResponseCopyWith<$Res>(_self.videoProofApiResponse, (value) {
    return _then(_self.copyWith(videoProofApiResponse: value));
  });
}
}


/// Adds pattern-matching-related methods to [VideoProofState].
extension VideoProofStatePatterns on VideoProofState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VideoProofState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoProofState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VideoProofState value)  $default,){
final _that = this;
switch (_that) {
case _VideoProofState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VideoProofState value)?  $default,){
final _that = this;
switch (_that) {
case _VideoProofState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String errorMessage,  String raiseConcernMessage,  String approveVideoMessage,  bool isApproveVideoDone,  bool isLoading,  VideoProofApiResponse videoProofApiResponse)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoProofState() when $default != null:
return $default(_that.errorMessage,_that.raiseConcernMessage,_that.approveVideoMessage,_that.isApproveVideoDone,_that.isLoading,_that.videoProofApiResponse);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String errorMessage,  String raiseConcernMessage,  String approveVideoMessage,  bool isApproveVideoDone,  bool isLoading,  VideoProofApiResponse videoProofApiResponse)  $default,) {final _that = this;
switch (_that) {
case _VideoProofState():
return $default(_that.errorMessage,_that.raiseConcernMessage,_that.approveVideoMessage,_that.isApproveVideoDone,_that.isLoading,_that.videoProofApiResponse);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String errorMessage,  String raiseConcernMessage,  String approveVideoMessage,  bool isApproveVideoDone,  bool isLoading,  VideoProofApiResponse videoProofApiResponse)?  $default,) {final _that = this;
switch (_that) {
case _VideoProofState() when $default != null:
return $default(_that.errorMessage,_that.raiseConcernMessage,_that.approveVideoMessage,_that.isApproveVideoDone,_that.isLoading,_that.videoProofApiResponse);case _:
  return null;

}
}

}

/// @nodoc


class _VideoProofState implements VideoProofState {
  const _VideoProofState({this.errorMessage = '', this.raiseConcernMessage = '', this.approveVideoMessage = '', this.isApproveVideoDone = false, this.isLoading = false, this.videoProofApiResponse = const VideoProofApiResponse()});
  

@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  String raiseConcernMessage;
@override@JsonKey() final  String approveVideoMessage;
@override@JsonKey() final  bool isApproveVideoDone;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  VideoProofApiResponse videoProofApiResponse;

/// Create a copy of VideoProofState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoProofStateCopyWith<_VideoProofState> get copyWith => __$VideoProofStateCopyWithImpl<_VideoProofState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoProofState&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.raiseConcernMessage, raiseConcernMessage) || other.raiseConcernMessage == raiseConcernMessage)&&(identical(other.approveVideoMessage, approveVideoMessage) || other.approveVideoMessage == approveVideoMessage)&&(identical(other.isApproveVideoDone, isApproveVideoDone) || other.isApproveVideoDone == isApproveVideoDone)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.videoProofApiResponse, videoProofApiResponse) || other.videoProofApiResponse == videoProofApiResponse));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage,raiseConcernMessage,approveVideoMessage,isApproveVideoDone,isLoading,videoProofApiResponse);

@override
String toString() {
  return 'VideoProofState(errorMessage: $errorMessage, raiseConcernMessage: $raiseConcernMessage, approveVideoMessage: $approveVideoMessage, isApproveVideoDone: $isApproveVideoDone, isLoading: $isLoading, videoProofApiResponse: $videoProofApiResponse)';
}


}

/// @nodoc
abstract mixin class _$VideoProofStateCopyWith<$Res> implements $VideoProofStateCopyWith<$Res> {
  factory _$VideoProofStateCopyWith(_VideoProofState value, $Res Function(_VideoProofState) _then) = __$VideoProofStateCopyWithImpl;
@override @useResult
$Res call({
 String errorMessage, String raiseConcernMessage, String approveVideoMessage, bool isApproveVideoDone, bool isLoading, VideoProofApiResponse videoProofApiResponse
});


@override $VideoProofApiResponseCopyWith<$Res> get videoProofApiResponse;

}
/// @nodoc
class __$VideoProofStateCopyWithImpl<$Res>
    implements _$VideoProofStateCopyWith<$Res> {
  __$VideoProofStateCopyWithImpl(this._self, this._then);

  final _VideoProofState _self;
  final $Res Function(_VideoProofState) _then;

/// Create a copy of VideoProofState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,Object? raiseConcernMessage = null,Object? approveVideoMessage = null,Object? isApproveVideoDone = null,Object? isLoading = null,Object? videoProofApiResponse = null,}) {
  return _then(_VideoProofState(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,raiseConcernMessage: null == raiseConcernMessage ? _self.raiseConcernMessage : raiseConcernMessage // ignore: cast_nullable_to_non_nullable
as String,approveVideoMessage: null == approveVideoMessage ? _self.approveVideoMessage : approveVideoMessage // ignore: cast_nullable_to_non_nullable
as String,isApproveVideoDone: null == isApproveVideoDone ? _self.isApproveVideoDone : isApproveVideoDone // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,videoProofApiResponse: null == videoProofApiResponse ? _self.videoProofApiResponse : videoProofApiResponse // ignore: cast_nullable_to_non_nullable
as VideoProofApiResponse,
  ));
}

/// Create a copy of VideoProofState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VideoProofApiResponseCopyWith<$Res> get videoProofApiResponse {
  
  return $VideoProofApiResponseCopyWith<$Res>(_self.videoProofApiResponse, (value) {
    return _then(_self.copyWith(videoProofApiResponse: value));
  });
}
}

// dart format on
