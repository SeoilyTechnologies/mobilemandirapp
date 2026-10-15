// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chadava_sankalp_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChadavaSankalpEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChadavaSankalpEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChadavaSankalpEvent()';
}


}

/// @nodoc
class $ChadavaSankalpEventCopyWith<$Res>  {
$ChadavaSankalpEventCopyWith(ChadavaSankalpEvent _, $Res Function(ChadavaSankalpEvent) __);
}


/// Adds pattern-matching-related methods to [ChadavaSankalpEvent].
extension ChadavaSankalpEventPatterns on ChadavaSankalpEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitChadavaSankalp value)?  initSankalp,TResult Function( SelectSankalpOption value)?  selectOption,TResult Function( SelectSankalpWeeks value)?  selectWeeks,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitChadavaSankalp() when initSankalp != null:
return initSankalp(_that);case SelectSankalpOption() when selectOption != null:
return selectOption(_that);case SelectSankalpWeeks() when selectWeeks != null:
return selectWeeks(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitChadavaSankalp value)  initSankalp,required TResult Function( SelectSankalpOption value)  selectOption,required TResult Function( SelectSankalpWeeks value)  selectWeeks,}){
final _that = this;
switch (_that) {
case InitChadavaSankalp():
return initSankalp(_that);case SelectSankalpOption():
return selectOption(_that);case SelectSankalpWeeks():
return selectWeeks(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitChadavaSankalp value)?  initSankalp,TResult? Function( SelectSankalpOption value)?  selectOption,TResult? Function( SelectSankalpWeeks value)?  selectWeeks,}){
final _that = this;
switch (_that) {
case InitChadavaSankalp() when initSankalp != null:
return initSankalp(_that);case SelectSankalpOption() when selectOption != null:
return selectOption(_that);case SelectSankalpWeeks() when selectWeeks != null:
return selectWeeks(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int offeringPrice,  String offeringTitle)?  initSankalp,TResult Function( SankalpOptionType optionType)?  selectOption,TResult Function( int weeksCount)?  selectWeeks,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitChadavaSankalp() when initSankalp != null:
return initSankalp(_that.offeringPrice,_that.offeringTitle);case SelectSankalpOption() when selectOption != null:
return selectOption(_that.optionType);case SelectSankalpWeeks() when selectWeeks != null:
return selectWeeks(_that.weeksCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int offeringPrice,  String offeringTitle)  initSankalp,required TResult Function( SankalpOptionType optionType)  selectOption,required TResult Function( int weeksCount)  selectWeeks,}) {final _that = this;
switch (_that) {
case InitChadavaSankalp():
return initSankalp(_that.offeringPrice,_that.offeringTitle);case SelectSankalpOption():
return selectOption(_that.optionType);case SelectSankalpWeeks():
return selectWeeks(_that.weeksCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int offeringPrice,  String offeringTitle)?  initSankalp,TResult? Function( SankalpOptionType optionType)?  selectOption,TResult? Function( int weeksCount)?  selectWeeks,}) {final _that = this;
switch (_that) {
case InitChadavaSankalp() when initSankalp != null:
return initSankalp(_that.offeringPrice,_that.offeringTitle);case SelectSankalpOption() when selectOption != null:
return selectOption(_that.optionType);case SelectSankalpWeeks() when selectWeeks != null:
return selectWeeks(_that.weeksCount);case _:
  return null;

}
}

}

/// @nodoc


class InitChadavaSankalp implements ChadavaSankalpEvent {
  const InitChadavaSankalp({this.offeringPrice = 101, this.offeringTitle = 'Sarson ka tel'});
  

@JsonKey() final  int offeringPrice;
@JsonKey() final  String offeringTitle;

/// Create a copy of ChadavaSankalpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitChadavaSankalpCopyWith<InitChadavaSankalp> get copyWith => _$InitChadavaSankalpCopyWithImpl<InitChadavaSankalp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitChadavaSankalp&&(identical(other.offeringPrice, offeringPrice) || other.offeringPrice == offeringPrice)&&(identical(other.offeringTitle, offeringTitle) || other.offeringTitle == offeringTitle));
}


@override
int get hashCode => Object.hash(runtimeType,offeringPrice,offeringTitle);

@override
String toString() {
  return 'ChadavaSankalpEvent.initSankalp(offeringPrice: $offeringPrice, offeringTitle: $offeringTitle)';
}


}

/// @nodoc
abstract mixin class $InitChadavaSankalpCopyWith<$Res> implements $ChadavaSankalpEventCopyWith<$Res> {
  factory $InitChadavaSankalpCopyWith(InitChadavaSankalp value, $Res Function(InitChadavaSankalp) _then) = _$InitChadavaSankalpCopyWithImpl;
@useResult
$Res call({
 int offeringPrice, String offeringTitle
});




}
/// @nodoc
class _$InitChadavaSankalpCopyWithImpl<$Res>
    implements $InitChadavaSankalpCopyWith<$Res> {
  _$InitChadavaSankalpCopyWithImpl(this._self, this._then);

  final InitChadavaSankalp _self;
  final $Res Function(InitChadavaSankalp) _then;

/// Create a copy of ChadavaSankalpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? offeringPrice = null,Object? offeringTitle = null,}) {
  return _then(InitChadavaSankalp(
offeringPrice: null == offeringPrice ? _self.offeringPrice : offeringPrice // ignore: cast_nullable_to_non_nullable
as int,offeringTitle: null == offeringTitle ? _self.offeringTitle : offeringTitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SelectSankalpOption implements ChadavaSankalpEvent {
  const SelectSankalpOption(this.optionType);
  

 final  SankalpOptionType optionType;

/// Create a copy of ChadavaSankalpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectSankalpOptionCopyWith<SelectSankalpOption> get copyWith => _$SelectSankalpOptionCopyWithImpl<SelectSankalpOption>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectSankalpOption&&(identical(other.optionType, optionType) || other.optionType == optionType));
}


@override
int get hashCode => Object.hash(runtimeType,optionType);

@override
String toString() {
  return 'ChadavaSankalpEvent.selectOption(optionType: $optionType)';
}


}

/// @nodoc
abstract mixin class $SelectSankalpOptionCopyWith<$Res> implements $ChadavaSankalpEventCopyWith<$Res> {
  factory $SelectSankalpOptionCopyWith(SelectSankalpOption value, $Res Function(SelectSankalpOption) _then) = _$SelectSankalpOptionCopyWithImpl;
@useResult
$Res call({
 SankalpOptionType optionType
});




}
/// @nodoc
class _$SelectSankalpOptionCopyWithImpl<$Res>
    implements $SelectSankalpOptionCopyWith<$Res> {
  _$SelectSankalpOptionCopyWithImpl(this._self, this._then);

  final SelectSankalpOption _self;
  final $Res Function(SelectSankalpOption) _then;

/// Create a copy of ChadavaSankalpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? optionType = null,}) {
  return _then(SelectSankalpOption(
null == optionType ? _self.optionType : optionType // ignore: cast_nullable_to_non_nullable
as SankalpOptionType,
  ));
}


}

/// @nodoc


class SelectSankalpWeeks implements ChadavaSankalpEvent {
  const SelectSankalpWeeks(this.weeksCount);
  

 final  int weeksCount;

/// Create a copy of ChadavaSankalpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectSankalpWeeksCopyWith<SelectSankalpWeeks> get copyWith => _$SelectSankalpWeeksCopyWithImpl<SelectSankalpWeeks>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectSankalpWeeks&&(identical(other.weeksCount, weeksCount) || other.weeksCount == weeksCount));
}


@override
int get hashCode => Object.hash(runtimeType,weeksCount);

@override
String toString() {
  return 'ChadavaSankalpEvent.selectWeeks(weeksCount: $weeksCount)';
}


}

/// @nodoc
abstract mixin class $SelectSankalpWeeksCopyWith<$Res> implements $ChadavaSankalpEventCopyWith<$Res> {
  factory $SelectSankalpWeeksCopyWith(SelectSankalpWeeks value, $Res Function(SelectSankalpWeeks) _then) = _$SelectSankalpWeeksCopyWithImpl;
@useResult
$Res call({
 int weeksCount
});




}
/// @nodoc
class _$SelectSankalpWeeksCopyWithImpl<$Res>
    implements $SelectSankalpWeeksCopyWith<$Res> {
  _$SelectSankalpWeeksCopyWithImpl(this._self, this._then);

  final SelectSankalpWeeks _self;
  final $Res Function(SelectSankalpWeeks) _then;

/// Create a copy of ChadavaSankalpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? weeksCount = null,}) {
  return _then(SelectSankalpWeeks(
null == weeksCount ? _self.weeksCount : weeksCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
