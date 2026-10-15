// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temple_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TempleState {

 bool get isLoading; List<TempleModel> get templeList; String? get error;
/// Create a copy of TempleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TempleStateCopyWith<TempleState> get copyWith => _$TempleStateCopyWithImpl<TempleState>(this as TempleState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TempleState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.templeList, templeList)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(templeList),error);

@override
String toString() {
  return 'TempleState(isLoading: $isLoading, templeList: $templeList, error: $error)';
}


}

/// @nodoc
abstract mixin class $TempleStateCopyWith<$Res>  {
  factory $TempleStateCopyWith(TempleState value, $Res Function(TempleState) _then) = _$TempleStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<TempleModel> templeList, String? error
});




}
/// @nodoc
class _$TempleStateCopyWithImpl<$Res>
    implements $TempleStateCopyWith<$Res> {
  _$TempleStateCopyWithImpl(this._self, this._then);

  final TempleState _self;
  final $Res Function(TempleState) _then;

/// Create a copy of TempleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? templeList = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,templeList: null == templeList ? _self.templeList : templeList // ignore: cast_nullable_to_non_nullable
as List<TempleModel>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TempleState].
extension TempleStatePatterns on TempleState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TempleState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TempleState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TempleState value)  $default,){
final _that = this;
switch (_that) {
case _TempleState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TempleState value)?  $default,){
final _that = this;
switch (_that) {
case _TempleState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<TempleModel> templeList,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TempleState() when $default != null:
return $default(_that.isLoading,_that.templeList,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<TempleModel> templeList,  String? error)  $default,) {final _that = this;
switch (_that) {
case _TempleState():
return $default(_that.isLoading,_that.templeList,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<TempleModel> templeList,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _TempleState() when $default != null:
return $default(_that.isLoading,_that.templeList,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _TempleState implements TempleState {
  const _TempleState({this.isLoading = false, final  List<TempleModel> templeList = const [], this.error}): _templeList = templeList;
  

@override@JsonKey() final  bool isLoading;
 final  List<TempleModel> _templeList;
@override@JsonKey() List<TempleModel> get templeList {
  if (_templeList is EqualUnmodifiableListView) return _templeList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_templeList);
}

@override final  String? error;

/// Create a copy of TempleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TempleStateCopyWith<_TempleState> get copyWith => __$TempleStateCopyWithImpl<_TempleState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TempleState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._templeList, _templeList)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_templeList),error);

@override
String toString() {
  return 'TempleState(isLoading: $isLoading, templeList: $templeList, error: $error)';
}


}

/// @nodoc
abstract mixin class _$TempleStateCopyWith<$Res> implements $TempleStateCopyWith<$Res> {
  factory _$TempleStateCopyWith(_TempleState value, $Res Function(_TempleState) _then) = __$TempleStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<TempleModel> templeList, String? error
});




}
/// @nodoc
class __$TempleStateCopyWithImpl<$Res>
    implements _$TempleStateCopyWith<$Res> {
  __$TempleStateCopyWithImpl(this._self, this._then);

  final _TempleState _self;
  final $Res Function(_TempleState) _then;

/// Create a copy of TempleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? templeList = null,Object? error = freezed,}) {
  return _then(_TempleState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,templeList: null == templeList ? _self._templeList : templeList // ignore: cast_nullable_to_non_nullable
as List<TempleModel>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
