// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chadava_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChadavaEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChadavaEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChadavaEvent()';
}


}

/// @nodoc
class $ChadavaEventCopyWith<$Res>  {
$ChadavaEventCopyWith(ChadavaEvent _, $Res Function(ChadavaEvent) __);
}


/// Adds pattern-matching-related methods to [ChadavaEvent].
extension ChadavaEventPatterns on ChadavaEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadChadavaData value)?  loadData,TResult Function( SelectChadavaTab value)?  selectTab,TResult Function( SelectChadavaItem value)?  selectItem,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadChadavaData() when loadData != null:
return loadData(_that);case SelectChadavaTab() when selectTab != null:
return selectTab(_that);case SelectChadavaItem() when selectItem != null:
return selectItem(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadChadavaData value)  loadData,required TResult Function( SelectChadavaTab value)  selectTab,required TResult Function( SelectChadavaItem value)  selectItem,}){
final _that = this;
switch (_that) {
case LoadChadavaData():
return loadData(_that);case SelectChadavaTab():
return selectTab(_that);case SelectChadavaItem():
return selectItem(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadChadavaData value)?  loadData,TResult? Function( SelectChadavaTab value)?  selectTab,TResult? Function( SelectChadavaItem value)?  selectItem,}){
final _that = this;
switch (_that) {
case LoadChadavaData() when loadData != null:
return loadData(_that);case SelectChadavaTab() when selectTab != null:
return selectTab(_that);case SelectChadavaItem() when selectItem != null:
return selectItem(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadData,TResult Function( int tabIndex)?  selectTab,TResult Function( String itemId)?  selectItem,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadChadavaData() when loadData != null:
return loadData();case SelectChadavaTab() when selectTab != null:
return selectTab(_that.tabIndex);case SelectChadavaItem() when selectItem != null:
return selectItem(_that.itemId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadData,required TResult Function( int tabIndex)  selectTab,required TResult Function( String itemId)  selectItem,}) {final _that = this;
switch (_that) {
case LoadChadavaData():
return loadData();case SelectChadavaTab():
return selectTab(_that.tabIndex);case SelectChadavaItem():
return selectItem(_that.itemId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadData,TResult? Function( int tabIndex)?  selectTab,TResult? Function( String itemId)?  selectItem,}) {final _that = this;
switch (_that) {
case LoadChadavaData() when loadData != null:
return loadData();case SelectChadavaTab() when selectTab != null:
return selectTab(_that.tabIndex);case SelectChadavaItem() when selectItem != null:
return selectItem(_that.itemId);case _:
  return null;

}
}

}

/// @nodoc


class LoadChadavaData implements ChadavaEvent {
  const LoadChadavaData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadChadavaData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChadavaEvent.loadData()';
}


}




/// @nodoc


class SelectChadavaTab implements ChadavaEvent {
  const SelectChadavaTab(this.tabIndex);
  

 final  int tabIndex;

/// Create a copy of ChadavaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectChadavaTabCopyWith<SelectChadavaTab> get copyWith => _$SelectChadavaTabCopyWithImpl<SelectChadavaTab>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectChadavaTab&&(identical(other.tabIndex, tabIndex) || other.tabIndex == tabIndex));
}


@override
int get hashCode => Object.hash(runtimeType,tabIndex);

@override
String toString() {
  return 'ChadavaEvent.selectTab(tabIndex: $tabIndex)';
}


}

/// @nodoc
abstract mixin class $SelectChadavaTabCopyWith<$Res> implements $ChadavaEventCopyWith<$Res> {
  factory $SelectChadavaTabCopyWith(SelectChadavaTab value, $Res Function(SelectChadavaTab) _then) = _$SelectChadavaTabCopyWithImpl;
@useResult
$Res call({
 int tabIndex
});




}
/// @nodoc
class _$SelectChadavaTabCopyWithImpl<$Res>
    implements $SelectChadavaTabCopyWith<$Res> {
  _$SelectChadavaTabCopyWithImpl(this._self, this._then);

  final SelectChadavaTab _self;
  final $Res Function(SelectChadavaTab) _then;

/// Create a copy of ChadavaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tabIndex = null,}) {
  return _then(SelectChadavaTab(
null == tabIndex ? _self.tabIndex : tabIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SelectChadavaItem implements ChadavaEvent {
  const SelectChadavaItem(this.itemId);
  

 final  String itemId;

/// Create a copy of ChadavaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectChadavaItemCopyWith<SelectChadavaItem> get copyWith => _$SelectChadavaItemCopyWithImpl<SelectChadavaItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectChadavaItem&&(identical(other.itemId, itemId) || other.itemId == itemId));
}


@override
int get hashCode => Object.hash(runtimeType,itemId);

@override
String toString() {
  return 'ChadavaEvent.selectItem(itemId: $itemId)';
}


}

/// @nodoc
abstract mixin class $SelectChadavaItemCopyWith<$Res> implements $ChadavaEventCopyWith<$Res> {
  factory $SelectChadavaItemCopyWith(SelectChadavaItem value, $Res Function(SelectChadavaItem) _then) = _$SelectChadavaItemCopyWithImpl;
@useResult
$Res call({
 String itemId
});




}
/// @nodoc
class _$SelectChadavaItemCopyWithImpl<$Res>
    implements $SelectChadavaItemCopyWith<$Res> {
  _$SelectChadavaItemCopyWithImpl(this._self, this._then);

  final SelectChadavaItem _self;
  final $Res Function(SelectChadavaItem) _then;

/// Create a copy of ChadavaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemId = null,}) {
  return _then(SelectChadavaItem(
null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
