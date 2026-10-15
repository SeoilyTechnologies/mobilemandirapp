// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chadava_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChadavaDetailState {

 bool get isLoading; ChadavaDetailModel? get detailModel; ChadavaOfferingModel? get selectedOffering; String get errorMessage;
/// Create a copy of ChadavaDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChadavaDetailStateCopyWith<ChadavaDetailState> get copyWith => _$ChadavaDetailStateCopyWithImpl<ChadavaDetailState>(this as ChadavaDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChadavaDetailState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.detailModel, detailModel) || other.detailModel == detailModel)&&(identical(other.selectedOffering, selectedOffering) || other.selectedOffering == selectedOffering)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,detailModel,selectedOffering,errorMessage);

@override
String toString() {
  return 'ChadavaDetailState(isLoading: $isLoading, detailModel: $detailModel, selectedOffering: $selectedOffering, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ChadavaDetailStateCopyWith<$Res>  {
  factory $ChadavaDetailStateCopyWith(ChadavaDetailState value, $Res Function(ChadavaDetailState) _then) = _$ChadavaDetailStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, ChadavaDetailModel? detailModel, ChadavaOfferingModel? selectedOffering, String errorMessage
});




}
/// @nodoc
class _$ChadavaDetailStateCopyWithImpl<$Res>
    implements $ChadavaDetailStateCopyWith<$Res> {
  _$ChadavaDetailStateCopyWithImpl(this._self, this._then);

  final ChadavaDetailState _self;
  final $Res Function(ChadavaDetailState) _then;

/// Create a copy of ChadavaDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? detailModel = freezed,Object? selectedOffering = freezed,Object? errorMessage = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,detailModel: freezed == detailModel ? _self.detailModel : detailModel // ignore: cast_nullable_to_non_nullable
as ChadavaDetailModel?,selectedOffering: freezed == selectedOffering ? _self.selectedOffering : selectedOffering // ignore: cast_nullable_to_non_nullable
as ChadavaOfferingModel?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChadavaDetailState].
extension ChadavaDetailStatePatterns on ChadavaDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChadavaDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChadavaDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChadavaDetailState value)  $default,){
final _that = this;
switch (_that) {
case _ChadavaDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChadavaDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _ChadavaDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  ChadavaDetailModel? detailModel,  ChadavaOfferingModel? selectedOffering,  String errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChadavaDetailState() when $default != null:
return $default(_that.isLoading,_that.detailModel,_that.selectedOffering,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  ChadavaDetailModel? detailModel,  ChadavaOfferingModel? selectedOffering,  String errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ChadavaDetailState():
return $default(_that.isLoading,_that.detailModel,_that.selectedOffering,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  ChadavaDetailModel? detailModel,  ChadavaOfferingModel? selectedOffering,  String errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ChadavaDetailState() when $default != null:
return $default(_that.isLoading,_that.detailModel,_that.selectedOffering,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ChadavaDetailState implements ChadavaDetailState {
  const _ChadavaDetailState({this.isLoading = false, this.detailModel, this.selectedOffering, this.errorMessage = ''});
  

@override@JsonKey() final  bool isLoading;
@override final  ChadavaDetailModel? detailModel;
@override final  ChadavaOfferingModel? selectedOffering;
@override@JsonKey() final  String errorMessage;

/// Create a copy of ChadavaDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChadavaDetailStateCopyWith<_ChadavaDetailState> get copyWith => __$ChadavaDetailStateCopyWithImpl<_ChadavaDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChadavaDetailState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.detailModel, detailModel) || other.detailModel == detailModel)&&(identical(other.selectedOffering, selectedOffering) || other.selectedOffering == selectedOffering)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,detailModel,selectedOffering,errorMessage);

@override
String toString() {
  return 'ChadavaDetailState(isLoading: $isLoading, detailModel: $detailModel, selectedOffering: $selectedOffering, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ChadavaDetailStateCopyWith<$Res> implements $ChadavaDetailStateCopyWith<$Res> {
  factory _$ChadavaDetailStateCopyWith(_ChadavaDetailState value, $Res Function(_ChadavaDetailState) _then) = __$ChadavaDetailStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, ChadavaDetailModel? detailModel, ChadavaOfferingModel? selectedOffering, String errorMessage
});




}
/// @nodoc
class __$ChadavaDetailStateCopyWithImpl<$Res>
    implements _$ChadavaDetailStateCopyWith<$Res> {
  __$ChadavaDetailStateCopyWithImpl(this._self, this._then);

  final _ChadavaDetailState _self;
  final $Res Function(_ChadavaDetailState) _then;

/// Create a copy of ChadavaDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? detailModel = freezed,Object? selectedOffering = freezed,Object? errorMessage = null,}) {
  return _then(_ChadavaDetailState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,detailModel: freezed == detailModel ? _self.detailModel : detailModel // ignore: cast_nullable_to_non_nullable
as ChadavaDetailModel?,selectedOffering: freezed == selectedOffering ? _self.selectedOffering : selectedOffering // ignore: cast_nullable_to_non_nullable
as ChadavaOfferingModel?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
