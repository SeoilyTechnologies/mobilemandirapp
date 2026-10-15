// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chadava_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChadavaDetailEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChadavaDetailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChadavaDetailEvent()';
}


}

/// @nodoc
class $ChadavaDetailEventCopyWith<$Res>  {
$ChadavaDetailEventCopyWith(ChadavaDetailEvent _, $Res Function(ChadavaDetailEvent) __);
}


/// Adds pattern-matching-related methods to [ChadavaDetailEvent].
extension ChadavaDetailEventPatterns on ChadavaDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadChadavaDetail value)?  loadDetail,TResult Function( SelectChadavaOffering value)?  selectOffering,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadChadavaDetail() when loadDetail != null:
return loadDetail(_that);case SelectChadavaOffering() when selectOffering != null:
return selectOffering(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadChadavaDetail value)  loadDetail,required TResult Function( SelectChadavaOffering value)  selectOffering,}){
final _that = this;
switch (_that) {
case LoadChadavaDetail():
return loadDetail(_that);case SelectChadavaOffering():
return selectOffering(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadChadavaDetail value)?  loadDetail,TResult? Function( SelectChadavaOffering value)?  selectOffering,}){
final _that = this;
switch (_that) {
case LoadChadavaDetail() when loadDetail != null:
return loadDetail(_that);case SelectChadavaOffering() when selectOffering != null:
return selectOffering(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String itemId,  String? itemTitle,  String? itemImage)?  loadDetail,TResult Function( String offeringId)?  selectOffering,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadChadavaDetail() when loadDetail != null:
return loadDetail(_that.itemId,_that.itemTitle,_that.itemImage);case SelectChadavaOffering() when selectOffering != null:
return selectOffering(_that.offeringId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String itemId,  String? itemTitle,  String? itemImage)  loadDetail,required TResult Function( String offeringId)  selectOffering,}) {final _that = this;
switch (_that) {
case LoadChadavaDetail():
return loadDetail(_that.itemId,_that.itemTitle,_that.itemImage);case SelectChadavaOffering():
return selectOffering(_that.offeringId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String itemId,  String? itemTitle,  String? itemImage)?  loadDetail,TResult? Function( String offeringId)?  selectOffering,}) {final _that = this;
switch (_that) {
case LoadChadavaDetail() when loadDetail != null:
return loadDetail(_that.itemId,_that.itemTitle,_that.itemImage);case SelectChadavaOffering() when selectOffering != null:
return selectOffering(_that.offeringId);case _:
  return null;

}
}

}

/// @nodoc


class LoadChadavaDetail implements ChadavaDetailEvent {
  const LoadChadavaDetail({this.itemId = 'shani_dev', this.itemTitle, this.itemImage});
  

@JsonKey() final  String itemId;
 final  String? itemTitle;
 final  String? itemImage;

/// Create a copy of ChadavaDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadChadavaDetailCopyWith<LoadChadavaDetail> get copyWith => _$LoadChadavaDetailCopyWithImpl<LoadChadavaDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadChadavaDetail&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemTitle, itemTitle) || other.itemTitle == itemTitle)&&(identical(other.itemImage, itemImage) || other.itemImage == itemImage));
}


@override
int get hashCode => Object.hash(runtimeType,itemId,itemTitle,itemImage);

@override
String toString() {
  return 'ChadavaDetailEvent.loadDetail(itemId: $itemId, itemTitle: $itemTitle, itemImage: $itemImage)';
}


}

/// @nodoc
abstract mixin class $LoadChadavaDetailCopyWith<$Res> implements $ChadavaDetailEventCopyWith<$Res> {
  factory $LoadChadavaDetailCopyWith(LoadChadavaDetail value, $Res Function(LoadChadavaDetail) _then) = _$LoadChadavaDetailCopyWithImpl;
@useResult
$Res call({
 String itemId, String? itemTitle, String? itemImage
});




}
/// @nodoc
class _$LoadChadavaDetailCopyWithImpl<$Res>
    implements $LoadChadavaDetailCopyWith<$Res> {
  _$LoadChadavaDetailCopyWithImpl(this._self, this._then);

  final LoadChadavaDetail _self;
  final $Res Function(LoadChadavaDetail) _then;

/// Create a copy of ChadavaDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? itemTitle = freezed,Object? itemImage = freezed,}) {
  return _then(LoadChadavaDetail(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemTitle: freezed == itemTitle ? _self.itemTitle : itemTitle // ignore: cast_nullable_to_non_nullable
as String?,itemImage: freezed == itemImage ? _self.itemImage : itemImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class SelectChadavaOffering implements ChadavaDetailEvent {
  const SelectChadavaOffering(this.offeringId);
  

 final  String offeringId;

/// Create a copy of ChadavaDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectChadavaOfferingCopyWith<SelectChadavaOffering> get copyWith => _$SelectChadavaOfferingCopyWithImpl<SelectChadavaOffering>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectChadavaOffering&&(identical(other.offeringId, offeringId) || other.offeringId == offeringId));
}


@override
int get hashCode => Object.hash(runtimeType,offeringId);

@override
String toString() {
  return 'ChadavaDetailEvent.selectOffering(offeringId: $offeringId)';
}


}

/// @nodoc
abstract mixin class $SelectChadavaOfferingCopyWith<$Res> implements $ChadavaDetailEventCopyWith<$Res> {
  factory $SelectChadavaOfferingCopyWith(SelectChadavaOffering value, $Res Function(SelectChadavaOffering) _then) = _$SelectChadavaOfferingCopyWithImpl;
@useResult
$Res call({
 String offeringId
});




}
/// @nodoc
class _$SelectChadavaOfferingCopyWithImpl<$Res>
    implements $SelectChadavaOfferingCopyWith<$Res> {
  _$SelectChadavaOfferingCopyWithImpl(this._self, this._then);

  final SelectChadavaOffering _self;
  final $Res Function(SelectChadavaOffering) _then;

/// Create a copy of ChadavaDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? offeringId = null,}) {
  return _then(SelectChadavaOffering(
null == offeringId ? _self.offeringId : offeringId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
