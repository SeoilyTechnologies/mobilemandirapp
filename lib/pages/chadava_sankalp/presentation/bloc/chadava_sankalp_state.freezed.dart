// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chadava_sankalp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChadavaSankalpState {

 bool get isLoading; int get baseOfferingPrice; String get offeringTitle; SankalpOptionType get selectedOption; int get selectedWeeks; List<int> get availableWeeks; String get errorMessage;
/// Create a copy of ChadavaSankalpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChadavaSankalpStateCopyWith<ChadavaSankalpState> get copyWith => _$ChadavaSankalpStateCopyWithImpl<ChadavaSankalpState>(this as ChadavaSankalpState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChadavaSankalpState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.baseOfferingPrice, baseOfferingPrice) || other.baseOfferingPrice == baseOfferingPrice)&&(identical(other.offeringTitle, offeringTitle) || other.offeringTitle == offeringTitle)&&(identical(other.selectedOption, selectedOption) || other.selectedOption == selectedOption)&&(identical(other.selectedWeeks, selectedWeeks) || other.selectedWeeks == selectedWeeks)&&const DeepCollectionEquality().equals(other.availableWeeks, availableWeeks)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,baseOfferingPrice,offeringTitle,selectedOption,selectedWeeks,const DeepCollectionEquality().hash(availableWeeks),errorMessage);

@override
String toString() {
  return 'ChadavaSankalpState(isLoading: $isLoading, baseOfferingPrice: $baseOfferingPrice, offeringTitle: $offeringTitle, selectedOption: $selectedOption, selectedWeeks: $selectedWeeks, availableWeeks: $availableWeeks, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ChadavaSankalpStateCopyWith<$Res>  {
  factory $ChadavaSankalpStateCopyWith(ChadavaSankalpState value, $Res Function(ChadavaSankalpState) _then) = _$ChadavaSankalpStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, int baseOfferingPrice, String offeringTitle, SankalpOptionType selectedOption, int selectedWeeks, List<int> availableWeeks, String errorMessage
});




}
/// @nodoc
class _$ChadavaSankalpStateCopyWithImpl<$Res>
    implements $ChadavaSankalpStateCopyWith<$Res> {
  _$ChadavaSankalpStateCopyWithImpl(this._self, this._then);

  final ChadavaSankalpState _self;
  final $Res Function(ChadavaSankalpState) _then;

/// Create a copy of ChadavaSankalpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? baseOfferingPrice = null,Object? offeringTitle = null,Object? selectedOption = null,Object? selectedWeeks = null,Object? availableWeeks = null,Object? errorMessage = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,baseOfferingPrice: null == baseOfferingPrice ? _self.baseOfferingPrice : baseOfferingPrice // ignore: cast_nullable_to_non_nullable
as int,offeringTitle: null == offeringTitle ? _self.offeringTitle : offeringTitle // ignore: cast_nullable_to_non_nullable
as String,selectedOption: null == selectedOption ? _self.selectedOption : selectedOption // ignore: cast_nullable_to_non_nullable
as SankalpOptionType,selectedWeeks: null == selectedWeeks ? _self.selectedWeeks : selectedWeeks // ignore: cast_nullable_to_non_nullable
as int,availableWeeks: null == availableWeeks ? _self.availableWeeks : availableWeeks // ignore: cast_nullable_to_non_nullable
as List<int>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChadavaSankalpState].
extension ChadavaSankalpStatePatterns on ChadavaSankalpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChadavaSankalpState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChadavaSankalpState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChadavaSankalpState value)  $default,){
final _that = this;
switch (_that) {
case _ChadavaSankalpState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChadavaSankalpState value)?  $default,){
final _that = this;
switch (_that) {
case _ChadavaSankalpState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  int baseOfferingPrice,  String offeringTitle,  SankalpOptionType selectedOption,  int selectedWeeks,  List<int> availableWeeks,  String errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChadavaSankalpState() when $default != null:
return $default(_that.isLoading,_that.baseOfferingPrice,_that.offeringTitle,_that.selectedOption,_that.selectedWeeks,_that.availableWeeks,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  int baseOfferingPrice,  String offeringTitle,  SankalpOptionType selectedOption,  int selectedWeeks,  List<int> availableWeeks,  String errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ChadavaSankalpState():
return $default(_that.isLoading,_that.baseOfferingPrice,_that.offeringTitle,_that.selectedOption,_that.selectedWeeks,_that.availableWeeks,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  int baseOfferingPrice,  String offeringTitle,  SankalpOptionType selectedOption,  int selectedWeeks,  List<int> availableWeeks,  String errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ChadavaSankalpState() when $default != null:
return $default(_that.isLoading,_that.baseOfferingPrice,_that.offeringTitle,_that.selectedOption,_that.selectedWeeks,_that.availableWeeks,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ChadavaSankalpState implements ChadavaSankalpState {
  const _ChadavaSankalpState({this.isLoading = false, this.baseOfferingPrice = 101, this.offeringTitle = 'Sarson ka tel', this.selectedOption = SankalpOptionType.sankalp, this.selectedWeeks = 11, final  List<int> availableWeeks = const [5, 11, 21, 51], this.errorMessage = ''}): _availableWeeks = availableWeeks;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  int baseOfferingPrice;
@override@JsonKey() final  String offeringTitle;
@override@JsonKey() final  SankalpOptionType selectedOption;
@override@JsonKey() final  int selectedWeeks;
 final  List<int> _availableWeeks;
@override@JsonKey() List<int> get availableWeeks {
  if (_availableWeeks is EqualUnmodifiableListView) return _availableWeeks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableWeeks);
}

@override@JsonKey() final  String errorMessage;

/// Create a copy of ChadavaSankalpState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChadavaSankalpStateCopyWith<_ChadavaSankalpState> get copyWith => __$ChadavaSankalpStateCopyWithImpl<_ChadavaSankalpState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChadavaSankalpState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.baseOfferingPrice, baseOfferingPrice) || other.baseOfferingPrice == baseOfferingPrice)&&(identical(other.offeringTitle, offeringTitle) || other.offeringTitle == offeringTitle)&&(identical(other.selectedOption, selectedOption) || other.selectedOption == selectedOption)&&(identical(other.selectedWeeks, selectedWeeks) || other.selectedWeeks == selectedWeeks)&&const DeepCollectionEquality().equals(other._availableWeeks, _availableWeeks)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,baseOfferingPrice,offeringTitle,selectedOption,selectedWeeks,const DeepCollectionEquality().hash(_availableWeeks),errorMessage);

@override
String toString() {
  return 'ChadavaSankalpState(isLoading: $isLoading, baseOfferingPrice: $baseOfferingPrice, offeringTitle: $offeringTitle, selectedOption: $selectedOption, selectedWeeks: $selectedWeeks, availableWeeks: $availableWeeks, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ChadavaSankalpStateCopyWith<$Res> implements $ChadavaSankalpStateCopyWith<$Res> {
  factory _$ChadavaSankalpStateCopyWith(_ChadavaSankalpState value, $Res Function(_ChadavaSankalpState) _then) = __$ChadavaSankalpStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, int baseOfferingPrice, String offeringTitle, SankalpOptionType selectedOption, int selectedWeeks, List<int> availableWeeks, String errorMessage
});




}
/// @nodoc
class __$ChadavaSankalpStateCopyWithImpl<$Res>
    implements _$ChadavaSankalpStateCopyWith<$Res> {
  __$ChadavaSankalpStateCopyWithImpl(this._self, this._then);

  final _ChadavaSankalpState _self;
  final $Res Function(_ChadavaSankalpState) _then;

/// Create a copy of ChadavaSankalpState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? baseOfferingPrice = null,Object? offeringTitle = null,Object? selectedOption = null,Object? selectedWeeks = null,Object? availableWeeks = null,Object? errorMessage = null,}) {
  return _then(_ChadavaSankalpState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,baseOfferingPrice: null == baseOfferingPrice ? _self.baseOfferingPrice : baseOfferingPrice // ignore: cast_nullable_to_non_nullable
as int,offeringTitle: null == offeringTitle ? _self.offeringTitle : offeringTitle // ignore: cast_nullable_to_non_nullable
as String,selectedOption: null == selectedOption ? _self.selectedOption : selectedOption // ignore: cast_nullable_to_non_nullable
as SankalpOptionType,selectedWeeks: null == selectedWeeks ? _self.selectedWeeks : selectedWeeks // ignore: cast_nullable_to_non_nullable
as int,availableWeeks: null == availableWeeks ? _self._availableWeeks : availableWeeks // ignore: cast_nullable_to_non_nullable
as List<int>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
