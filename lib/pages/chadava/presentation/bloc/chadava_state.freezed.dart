// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chadava_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChadavaState {

 bool get isLoading; int get selectedTabIndex; List<ChadavaItemModel> get godItems; List<ChadavaItemModel> get vanspatiItems; ChadavaItemModel? get selectedItem; String get errorMessage;
/// Create a copy of ChadavaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChadavaStateCopyWith<ChadavaState> get copyWith => _$ChadavaStateCopyWithImpl<ChadavaState>(this as ChadavaState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChadavaState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.selectedTabIndex, selectedTabIndex) || other.selectedTabIndex == selectedTabIndex)&&const DeepCollectionEquality().equals(other.godItems, godItems)&&const DeepCollectionEquality().equals(other.vanspatiItems, vanspatiItems)&&(identical(other.selectedItem, selectedItem) || other.selectedItem == selectedItem)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,selectedTabIndex,const DeepCollectionEquality().hash(godItems),const DeepCollectionEquality().hash(vanspatiItems),selectedItem,errorMessage);

@override
String toString() {
  return 'ChadavaState(isLoading: $isLoading, selectedTabIndex: $selectedTabIndex, godItems: $godItems, vanspatiItems: $vanspatiItems, selectedItem: $selectedItem, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ChadavaStateCopyWith<$Res>  {
  factory $ChadavaStateCopyWith(ChadavaState value, $Res Function(ChadavaState) _then) = _$ChadavaStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, int selectedTabIndex, List<ChadavaItemModel> godItems, List<ChadavaItemModel> vanspatiItems, ChadavaItemModel? selectedItem, String errorMessage
});




}
/// @nodoc
class _$ChadavaStateCopyWithImpl<$Res>
    implements $ChadavaStateCopyWith<$Res> {
  _$ChadavaStateCopyWithImpl(this._self, this._then);

  final ChadavaState _self;
  final $Res Function(ChadavaState) _then;

/// Create a copy of ChadavaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? selectedTabIndex = null,Object? godItems = null,Object? vanspatiItems = null,Object? selectedItem = freezed,Object? errorMessage = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,selectedTabIndex: null == selectedTabIndex ? _self.selectedTabIndex : selectedTabIndex // ignore: cast_nullable_to_non_nullable
as int,godItems: null == godItems ? _self.godItems : godItems // ignore: cast_nullable_to_non_nullable
as List<ChadavaItemModel>,vanspatiItems: null == vanspatiItems ? _self.vanspatiItems : vanspatiItems // ignore: cast_nullable_to_non_nullable
as List<ChadavaItemModel>,selectedItem: freezed == selectedItem ? _self.selectedItem : selectedItem // ignore: cast_nullable_to_non_nullable
as ChadavaItemModel?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChadavaState].
extension ChadavaStatePatterns on ChadavaState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChadavaState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChadavaState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChadavaState value)  $default,){
final _that = this;
switch (_that) {
case _ChadavaState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChadavaState value)?  $default,){
final _that = this;
switch (_that) {
case _ChadavaState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  int selectedTabIndex,  List<ChadavaItemModel> godItems,  List<ChadavaItemModel> vanspatiItems,  ChadavaItemModel? selectedItem,  String errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChadavaState() when $default != null:
return $default(_that.isLoading,_that.selectedTabIndex,_that.godItems,_that.vanspatiItems,_that.selectedItem,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  int selectedTabIndex,  List<ChadavaItemModel> godItems,  List<ChadavaItemModel> vanspatiItems,  ChadavaItemModel? selectedItem,  String errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ChadavaState():
return $default(_that.isLoading,_that.selectedTabIndex,_that.godItems,_that.vanspatiItems,_that.selectedItem,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  int selectedTabIndex,  List<ChadavaItemModel> godItems,  List<ChadavaItemModel> vanspatiItems,  ChadavaItemModel? selectedItem,  String errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ChadavaState() when $default != null:
return $default(_that.isLoading,_that.selectedTabIndex,_that.godItems,_that.vanspatiItems,_that.selectedItem,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ChadavaState implements ChadavaState {
  const _ChadavaState({this.isLoading = false, this.selectedTabIndex = 0, final  List<ChadavaItemModel> godItems = const [], final  List<ChadavaItemModel> vanspatiItems = const [], this.selectedItem, this.errorMessage = ''}): _godItems = godItems,_vanspatiItems = vanspatiItems;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  int selectedTabIndex;
 final  List<ChadavaItemModel> _godItems;
@override@JsonKey() List<ChadavaItemModel> get godItems {
  if (_godItems is EqualUnmodifiableListView) return _godItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_godItems);
}

 final  List<ChadavaItemModel> _vanspatiItems;
@override@JsonKey() List<ChadavaItemModel> get vanspatiItems {
  if (_vanspatiItems is EqualUnmodifiableListView) return _vanspatiItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_vanspatiItems);
}

@override final  ChadavaItemModel? selectedItem;
@override@JsonKey() final  String errorMessage;

/// Create a copy of ChadavaState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChadavaStateCopyWith<_ChadavaState> get copyWith => __$ChadavaStateCopyWithImpl<_ChadavaState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChadavaState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.selectedTabIndex, selectedTabIndex) || other.selectedTabIndex == selectedTabIndex)&&const DeepCollectionEquality().equals(other._godItems, _godItems)&&const DeepCollectionEquality().equals(other._vanspatiItems, _vanspatiItems)&&(identical(other.selectedItem, selectedItem) || other.selectedItem == selectedItem)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,selectedTabIndex,const DeepCollectionEquality().hash(_godItems),const DeepCollectionEquality().hash(_vanspatiItems),selectedItem,errorMessage);

@override
String toString() {
  return 'ChadavaState(isLoading: $isLoading, selectedTabIndex: $selectedTabIndex, godItems: $godItems, vanspatiItems: $vanspatiItems, selectedItem: $selectedItem, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ChadavaStateCopyWith<$Res> implements $ChadavaStateCopyWith<$Res> {
  factory _$ChadavaStateCopyWith(_ChadavaState value, $Res Function(_ChadavaState) _then) = __$ChadavaStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, int selectedTabIndex, List<ChadavaItemModel> godItems, List<ChadavaItemModel> vanspatiItems, ChadavaItemModel? selectedItem, String errorMessage
});




}
/// @nodoc
class __$ChadavaStateCopyWithImpl<$Res>
    implements _$ChadavaStateCopyWith<$Res> {
  __$ChadavaStateCopyWithImpl(this._self, this._then);

  final _ChadavaState _self;
  final $Res Function(_ChadavaState) _then;

/// Create a copy of ChadavaState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? selectedTabIndex = null,Object? godItems = null,Object? vanspatiItems = null,Object? selectedItem = freezed,Object? errorMessage = null,}) {
  return _then(_ChadavaState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,selectedTabIndex: null == selectedTabIndex ? _self.selectedTabIndex : selectedTabIndex // ignore: cast_nullable_to_non_nullable
as int,godItems: null == godItems ? _self._godItems : godItems // ignore: cast_nullable_to_non_nullable
as List<ChadavaItemModel>,vanspatiItems: null == vanspatiItems ? _self._vanspatiItems : vanspatiItems // ignore: cast_nullable_to_non_nullable
as List<ChadavaItemModel>,selectedItem: freezed == selectedItem ? _self.selectedItem : selectedItem // ignore: cast_nullable_to_non_nullable
as ChadavaItemModel?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
