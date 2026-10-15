// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CompleteProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompleteProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CompleteProfileEvent()';
}


}

/// @nodoc
class $CompleteProfileEventCopyWith<$Res>  {
$CompleteProfileEventCopyWith(CompleteProfileEvent _, $Res Function(CompleteProfileEvent) __);
}


/// Adds pattern-matching-related methods to [CompleteProfileEvent].
extension CompleteProfileEventPatterns on CompleteProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NameChanged value)?  nameChanged,TResult Function( GenderChanged value)?  genderChanged,TResult Function( DobChanged value)?  dobChanged,TResult Function( TimeChanged value)?  timeChanged,TResult Function( SubmitProfile value)?  submitProfile,TResult Function( ResetProfile value)?  reset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NameChanged() when nameChanged != null:
return nameChanged(_that);case GenderChanged() when genderChanged != null:
return genderChanged(_that);case DobChanged() when dobChanged != null:
return dobChanged(_that);case TimeChanged() when timeChanged != null:
return timeChanged(_that);case SubmitProfile() when submitProfile != null:
return submitProfile(_that);case ResetProfile() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NameChanged value)  nameChanged,required TResult Function( GenderChanged value)  genderChanged,required TResult Function( DobChanged value)  dobChanged,required TResult Function( TimeChanged value)  timeChanged,required TResult Function( SubmitProfile value)  submitProfile,required TResult Function( ResetProfile value)  reset,}){
final _that = this;
switch (_that) {
case NameChanged():
return nameChanged(_that);case GenderChanged():
return genderChanged(_that);case DobChanged():
return dobChanged(_that);case TimeChanged():
return timeChanged(_that);case SubmitProfile():
return submitProfile(_that);case ResetProfile():
return reset(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NameChanged value)?  nameChanged,TResult? Function( GenderChanged value)?  genderChanged,TResult? Function( DobChanged value)?  dobChanged,TResult? Function( TimeChanged value)?  timeChanged,TResult? Function( SubmitProfile value)?  submitProfile,TResult? Function( ResetProfile value)?  reset,}){
final _that = this;
switch (_that) {
case NameChanged() when nameChanged != null:
return nameChanged(_that);case GenderChanged() when genderChanged != null:
return genderChanged(_that);case DobChanged() when dobChanged != null:
return dobChanged(_that);case TimeChanged() when timeChanged != null:
return timeChanged(_that);case SubmitProfile() when submitProfile != null:
return submitProfile(_that);case ResetProfile() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String name)?  nameChanged,TResult Function( String gender)?  genderChanged,TResult Function( String dob)?  dobChanged,TResult Function( String time)?  timeChanged,TResult Function()?  submitProfile,TResult Function()?  reset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NameChanged() when nameChanged != null:
return nameChanged(_that.name);case GenderChanged() when genderChanged != null:
return genderChanged(_that.gender);case DobChanged() when dobChanged != null:
return dobChanged(_that.dob);case TimeChanged() when timeChanged != null:
return timeChanged(_that.time);case SubmitProfile() when submitProfile != null:
return submitProfile();case ResetProfile() when reset != null:
return reset();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String name)  nameChanged,required TResult Function( String gender)  genderChanged,required TResult Function( String dob)  dobChanged,required TResult Function( String time)  timeChanged,required TResult Function()  submitProfile,required TResult Function()  reset,}) {final _that = this;
switch (_that) {
case NameChanged():
return nameChanged(_that.name);case GenderChanged():
return genderChanged(_that.gender);case DobChanged():
return dobChanged(_that.dob);case TimeChanged():
return timeChanged(_that.time);case SubmitProfile():
return submitProfile();case ResetProfile():
return reset();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String name)?  nameChanged,TResult? Function( String gender)?  genderChanged,TResult? Function( String dob)?  dobChanged,TResult? Function( String time)?  timeChanged,TResult? Function()?  submitProfile,TResult? Function()?  reset,}) {final _that = this;
switch (_that) {
case NameChanged() when nameChanged != null:
return nameChanged(_that.name);case GenderChanged() when genderChanged != null:
return genderChanged(_that.gender);case DobChanged() when dobChanged != null:
return dobChanged(_that.dob);case TimeChanged() when timeChanged != null:
return timeChanged(_that.time);case SubmitProfile() when submitProfile != null:
return submitProfile();case ResetProfile() when reset != null:
return reset();case _:
  return null;

}
}

}

/// @nodoc


class NameChanged implements CompleteProfileEvent {
  const NameChanged(this.name);
  

 final  String name;

/// Create a copy of CompleteProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NameChangedCopyWith<NameChanged> get copyWith => _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NameChanged&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CompleteProfileEvent.nameChanged(name: $name)';
}


}

/// @nodoc
abstract mixin class $NameChangedCopyWith<$Res> implements $CompleteProfileEventCopyWith<$Res> {
  factory $NameChangedCopyWith(NameChanged value, $Res Function(NameChanged) _then) = _$NameChangedCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$NameChangedCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(this._self, this._then);

  final NameChanged _self;
  final $Res Function(NameChanged) _then;

/// Create a copy of CompleteProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(NameChanged(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GenderChanged implements CompleteProfileEvent {
  const GenderChanged(this.gender);
  

 final  String gender;

/// Create a copy of CompleteProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenderChangedCopyWith<GenderChanged> get copyWith => _$GenderChangedCopyWithImpl<GenderChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenderChanged&&(identical(other.gender, gender) || other.gender == gender));
}


@override
int get hashCode => Object.hash(runtimeType,gender);

@override
String toString() {
  return 'CompleteProfileEvent.genderChanged(gender: $gender)';
}


}

/// @nodoc
abstract mixin class $GenderChangedCopyWith<$Res> implements $CompleteProfileEventCopyWith<$Res> {
  factory $GenderChangedCopyWith(GenderChanged value, $Res Function(GenderChanged) _then) = _$GenderChangedCopyWithImpl;
@useResult
$Res call({
 String gender
});




}
/// @nodoc
class _$GenderChangedCopyWithImpl<$Res>
    implements $GenderChangedCopyWith<$Res> {
  _$GenderChangedCopyWithImpl(this._self, this._then);

  final GenderChanged _self;
  final $Res Function(GenderChanged) _then;

/// Create a copy of CompleteProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? gender = null,}) {
  return _then(GenderChanged(
null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DobChanged implements CompleteProfileEvent {
  const DobChanged(this.dob);
  

 final  String dob;

/// Create a copy of CompleteProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DobChangedCopyWith<DobChanged> get copyWith => _$DobChangedCopyWithImpl<DobChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DobChanged&&(identical(other.dob, dob) || other.dob == dob));
}


@override
int get hashCode => Object.hash(runtimeType,dob);

@override
String toString() {
  return 'CompleteProfileEvent.dobChanged(dob: $dob)';
}


}

/// @nodoc
abstract mixin class $DobChangedCopyWith<$Res> implements $CompleteProfileEventCopyWith<$Res> {
  factory $DobChangedCopyWith(DobChanged value, $Res Function(DobChanged) _then) = _$DobChangedCopyWithImpl;
@useResult
$Res call({
 String dob
});




}
/// @nodoc
class _$DobChangedCopyWithImpl<$Res>
    implements $DobChangedCopyWith<$Res> {
  _$DobChangedCopyWithImpl(this._self, this._then);

  final DobChanged _self;
  final $Res Function(DobChanged) _then;

/// Create a copy of CompleteProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dob = null,}) {
  return _then(DobChanged(
null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TimeChanged implements CompleteProfileEvent {
  const TimeChanged(this.time);
  

 final  String time;

/// Create a copy of CompleteProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeChangedCopyWith<TimeChanged> get copyWith => _$TimeChangedCopyWithImpl<TimeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeChanged&&(identical(other.time, time) || other.time == time));
}


@override
int get hashCode => Object.hash(runtimeType,time);

@override
String toString() {
  return 'CompleteProfileEvent.timeChanged(time: $time)';
}


}

/// @nodoc
abstract mixin class $TimeChangedCopyWith<$Res> implements $CompleteProfileEventCopyWith<$Res> {
  factory $TimeChangedCopyWith(TimeChanged value, $Res Function(TimeChanged) _then) = _$TimeChangedCopyWithImpl;
@useResult
$Res call({
 String time
});




}
/// @nodoc
class _$TimeChangedCopyWithImpl<$Res>
    implements $TimeChangedCopyWith<$Res> {
  _$TimeChangedCopyWithImpl(this._self, this._then);

  final TimeChanged _self;
  final $Res Function(TimeChanged) _then;

/// Create a copy of CompleteProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? time = null,}) {
  return _then(TimeChanged(
null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SubmitProfile implements CompleteProfileEvent {
  const SubmitProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CompleteProfileEvent.submitProfile()';
}


}




/// @nodoc


class ResetProfile implements CompleteProfileEvent {
  const ResetProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CompleteProfileEvent.reset()';
}


}




// dart format on
