// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_proof_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VideoProofEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VideoProofEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoProofEvent()';
}


}

/// @nodoc
class $VideoProofEventCopyWith<$Res>  {
$VideoProofEventCopyWith(VideoProofEvent _, $Res Function(VideoProofEvent) __);
}


/// Adds pattern-matching-related methods to [VideoProofEvent].
extension VideoProofEventPatterns on VideoProofEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetVideoProof value)?  getVideoProof,TResult Function( RaiseConcernVideoProof value)?  raiseConcernVideoProof,TResult Function( ApproveVideoProof value)?  approveVideoProof,TResult Function( ResetState value)?  resetState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetVideoProof() when getVideoProof != null:
return getVideoProof(_that);case RaiseConcernVideoProof() when raiseConcernVideoProof != null:
return raiseConcernVideoProof(_that);case ApproveVideoProof() when approveVideoProof != null:
return approveVideoProof(_that);case ResetState() when resetState != null:
return resetState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetVideoProof value)  getVideoProof,required TResult Function( RaiseConcernVideoProof value)  raiseConcernVideoProof,required TResult Function( ApproveVideoProof value)  approveVideoProof,required TResult Function( ResetState value)  resetState,}){
final _that = this;
switch (_that) {
case GetVideoProof():
return getVideoProof(_that);case RaiseConcernVideoProof():
return raiseConcernVideoProof(_that);case ApproveVideoProof():
return approveVideoProof(_that);case ResetState():
return resetState(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetVideoProof value)?  getVideoProof,TResult? Function( RaiseConcernVideoProof value)?  raiseConcernVideoProof,TResult? Function( ApproveVideoProof value)?  approveVideoProof,TResult? Function( ResetState value)?  resetState,}){
final _that = this;
switch (_that) {
case GetVideoProof() when getVideoProof != null:
return getVideoProof(_that);case RaiseConcernVideoProof() when raiseConcernVideoProof != null:
return raiseConcernVideoProof(_that);case ApproveVideoProof() when approveVideoProof != null:
return approveVideoProof(_that);case ResetState() when resetState != null:
return resetState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id)?  getVideoProof,TResult Function( String id,  String message)?  raiseConcernVideoProof,TResult Function()?  approveVideoProof,TResult Function()?  resetState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetVideoProof() when getVideoProof != null:
return getVideoProof(_that.id);case RaiseConcernVideoProof() when raiseConcernVideoProof != null:
return raiseConcernVideoProof(_that.id,_that.message);case ApproveVideoProof() when approveVideoProof != null:
return approveVideoProof();case ResetState() when resetState != null:
return resetState();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id)  getVideoProof,required TResult Function( String id,  String message)  raiseConcernVideoProof,required TResult Function()  approveVideoProof,required TResult Function()  resetState,}) {final _that = this;
switch (_that) {
case GetVideoProof():
return getVideoProof(_that.id);case RaiseConcernVideoProof():
return raiseConcernVideoProof(_that.id,_that.message);case ApproveVideoProof():
return approveVideoProof();case ResetState():
return resetState();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id)?  getVideoProof,TResult? Function( String id,  String message)?  raiseConcernVideoProof,TResult? Function()?  approveVideoProof,TResult? Function()?  resetState,}) {final _that = this;
switch (_that) {
case GetVideoProof() when getVideoProof != null:
return getVideoProof(_that.id);case RaiseConcernVideoProof() when raiseConcernVideoProof != null:
return raiseConcernVideoProof(_that.id,_that.message);case ApproveVideoProof() when approveVideoProof != null:
return approveVideoProof();case ResetState() when resetState != null:
return resetState();case _:
  return null;

}
}

}

/// @nodoc


class GetVideoProof implements VideoProofEvent {
  const GetVideoProof({required this.id});
  

 final  String id;

/// Create a copy of VideoProofEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetVideoProofCopyWith<GetVideoProof> get copyWith => _$GetVideoProofCopyWithImpl<GetVideoProof>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetVideoProof&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'VideoProofEvent.getVideoProof(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetVideoProofCopyWith<$Res> implements $VideoProofEventCopyWith<$Res> {
  factory $GetVideoProofCopyWith(GetVideoProof value, $Res Function(GetVideoProof) _then) = _$GetVideoProofCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetVideoProofCopyWithImpl<$Res>
    implements $GetVideoProofCopyWith<$Res> {
  _$GetVideoProofCopyWithImpl(this._self, this._then);

  final GetVideoProof _self;
  final $Res Function(GetVideoProof) _then;

/// Create a copy of VideoProofEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetVideoProof(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RaiseConcernVideoProof implements VideoProofEvent {
  const RaiseConcernVideoProof(this.id, this.message);
  

 final  String id;
 final  String message;

/// Create a copy of VideoProofEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RaiseConcernVideoProofCopyWith<RaiseConcernVideoProof> get copyWith => _$RaiseConcernVideoProofCopyWithImpl<RaiseConcernVideoProof>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RaiseConcernVideoProof&&(identical(other.id, id) || other.id == id)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,id,message);

@override
String toString() {
  return 'VideoProofEvent.raiseConcernVideoProof(id: $id, message: $message)';
}


}

/// @nodoc
abstract mixin class $RaiseConcernVideoProofCopyWith<$Res> implements $VideoProofEventCopyWith<$Res> {
  factory $RaiseConcernVideoProofCopyWith(RaiseConcernVideoProof value, $Res Function(RaiseConcernVideoProof) _then) = _$RaiseConcernVideoProofCopyWithImpl;
@useResult
$Res call({
 String id, String message
});




}
/// @nodoc
class _$RaiseConcernVideoProofCopyWithImpl<$Res>
    implements $RaiseConcernVideoProofCopyWith<$Res> {
  _$RaiseConcernVideoProofCopyWithImpl(this._self, this._then);

  final RaiseConcernVideoProof _self;
  final $Res Function(RaiseConcernVideoProof) _then;

/// Create a copy of VideoProofEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? message = null,}) {
  return _then(RaiseConcernVideoProof(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ApproveVideoProof implements VideoProofEvent {
  const ApproveVideoProof();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApproveVideoProof);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoProofEvent.approveVideoProof()';
}


}




/// @nodoc


class ResetState implements VideoProofEvent {
  const ResetState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VideoProofEvent.resetState()';
}


}




// dart format on
