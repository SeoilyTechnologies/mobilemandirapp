// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SelectCategoryState {

 CategoryItem? get selectedCategory; CategoriesListResponse get categoriesListApiResponse; String get errorMessage; bool get isProceedSuccess;
/// Create a copy of SelectCategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectCategoryStateCopyWith<SelectCategoryState> get copyWith => _$SelectCategoryStateCopyWithImpl<SelectCategoryState>(this as SelectCategoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectCategoryState&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.categoriesListApiResponse, categoriesListApiResponse) || other.categoriesListApiResponse == categoriesListApiResponse)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isProceedSuccess, isProceedSuccess) || other.isProceedSuccess == isProceedSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,selectedCategory,categoriesListApiResponse,errorMessage,isProceedSuccess);

@override
String toString() {
  return 'SelectCategoryState(selectedCategory: $selectedCategory, categoriesListApiResponse: $categoriesListApiResponse, errorMessage: $errorMessage, isProceedSuccess: $isProceedSuccess)';
}


}

/// @nodoc
abstract mixin class $SelectCategoryStateCopyWith<$Res>  {
  factory $SelectCategoryStateCopyWith(SelectCategoryState value, $Res Function(SelectCategoryState) _then) = _$SelectCategoryStateCopyWithImpl;
@useResult
$Res call({
 CategoryItem? selectedCategory, CategoriesListResponse categoriesListApiResponse, String errorMessage, bool isProceedSuccess
});


$CategoryItemCopyWith<$Res>? get selectedCategory;$CategoriesListResponseCopyWith<$Res> get categoriesListApiResponse;

}
/// @nodoc
class _$SelectCategoryStateCopyWithImpl<$Res>
    implements $SelectCategoryStateCopyWith<$Res> {
  _$SelectCategoryStateCopyWithImpl(this._self, this._then);

  final SelectCategoryState _self;
  final $Res Function(SelectCategoryState) _then;

/// Create a copy of SelectCategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedCategory = freezed,Object? categoriesListApiResponse = null,Object? errorMessage = null,Object? isProceedSuccess = null,}) {
  return _then(_self.copyWith(
selectedCategory: freezed == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as CategoryItem?,categoriesListApiResponse: null == categoriesListApiResponse ? _self.categoriesListApiResponse : categoriesListApiResponse // ignore: cast_nullable_to_non_nullable
as CategoriesListResponse,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isProceedSuccess: null == isProceedSuccess ? _self.isProceedSuccess : isProceedSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of SelectCategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryItemCopyWith<$Res>? get selectedCategory {
    if (_self.selectedCategory == null) {
    return null;
  }

  return $CategoryItemCopyWith<$Res>(_self.selectedCategory!, (value) {
    return _then(_self.copyWith(selectedCategory: value));
  });
}/// Create a copy of SelectCategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoriesListResponseCopyWith<$Res> get categoriesListApiResponse {
  
  return $CategoriesListResponseCopyWith<$Res>(_self.categoriesListApiResponse, (value) {
    return _then(_self.copyWith(categoriesListApiResponse: value));
  });
}
}


/// Adds pattern-matching-related methods to [SelectCategoryState].
extension SelectCategoryStatePatterns on SelectCategoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SelectCategoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SelectCategoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SelectCategoryState value)  $default,){
final _that = this;
switch (_that) {
case _SelectCategoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SelectCategoryState value)?  $default,){
final _that = this;
switch (_that) {
case _SelectCategoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CategoryItem? selectedCategory,  CategoriesListResponse categoriesListApiResponse,  String errorMessage,  bool isProceedSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SelectCategoryState() when $default != null:
return $default(_that.selectedCategory,_that.categoriesListApiResponse,_that.errorMessage,_that.isProceedSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CategoryItem? selectedCategory,  CategoriesListResponse categoriesListApiResponse,  String errorMessage,  bool isProceedSuccess)  $default,) {final _that = this;
switch (_that) {
case _SelectCategoryState():
return $default(_that.selectedCategory,_that.categoriesListApiResponse,_that.errorMessage,_that.isProceedSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CategoryItem? selectedCategory,  CategoriesListResponse categoriesListApiResponse,  String errorMessage,  bool isProceedSuccess)?  $default,) {final _that = this;
switch (_that) {
case _SelectCategoryState() when $default != null:
return $default(_that.selectedCategory,_that.categoriesListApiResponse,_that.errorMessage,_that.isProceedSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _SelectCategoryState implements SelectCategoryState {
  const _SelectCategoryState({this.selectedCategory, this.categoriesListApiResponse = const CategoriesListResponse(), this.errorMessage = '', this.isProceedSuccess = false});
  

@override final  CategoryItem? selectedCategory;
@override@JsonKey() final  CategoriesListResponse categoriesListApiResponse;
@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  bool isProceedSuccess;

/// Create a copy of SelectCategoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectCategoryStateCopyWith<_SelectCategoryState> get copyWith => __$SelectCategoryStateCopyWithImpl<_SelectCategoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectCategoryState&&(identical(other.selectedCategory, selectedCategory) || other.selectedCategory == selectedCategory)&&(identical(other.categoriesListApiResponse, categoriesListApiResponse) || other.categoriesListApiResponse == categoriesListApiResponse)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isProceedSuccess, isProceedSuccess) || other.isProceedSuccess == isProceedSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,selectedCategory,categoriesListApiResponse,errorMessage,isProceedSuccess);

@override
String toString() {
  return 'SelectCategoryState(selectedCategory: $selectedCategory, categoriesListApiResponse: $categoriesListApiResponse, errorMessage: $errorMessage, isProceedSuccess: $isProceedSuccess)';
}


}

/// @nodoc
abstract mixin class _$SelectCategoryStateCopyWith<$Res> implements $SelectCategoryStateCopyWith<$Res> {
  factory _$SelectCategoryStateCopyWith(_SelectCategoryState value, $Res Function(_SelectCategoryState) _then) = __$SelectCategoryStateCopyWithImpl;
@override @useResult
$Res call({
 CategoryItem? selectedCategory, CategoriesListResponse categoriesListApiResponse, String errorMessage, bool isProceedSuccess
});


@override $CategoryItemCopyWith<$Res>? get selectedCategory;@override $CategoriesListResponseCopyWith<$Res> get categoriesListApiResponse;

}
/// @nodoc
class __$SelectCategoryStateCopyWithImpl<$Res>
    implements _$SelectCategoryStateCopyWith<$Res> {
  __$SelectCategoryStateCopyWithImpl(this._self, this._then);

  final _SelectCategoryState _self;
  final $Res Function(_SelectCategoryState) _then;

/// Create a copy of SelectCategoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedCategory = freezed,Object? categoriesListApiResponse = null,Object? errorMessage = null,Object? isProceedSuccess = null,}) {
  return _then(_SelectCategoryState(
selectedCategory: freezed == selectedCategory ? _self.selectedCategory : selectedCategory // ignore: cast_nullable_to_non_nullable
as CategoryItem?,categoriesListApiResponse: null == categoriesListApiResponse ? _self.categoriesListApiResponse : categoriesListApiResponse // ignore: cast_nullable_to_non_nullable
as CategoriesListResponse,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isProceedSuccess: null == isProceedSuccess ? _self.isProceedSuccess : isProceedSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of SelectCategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryItemCopyWith<$Res>? get selectedCategory {
    if (_self.selectedCategory == null) {
    return null;
  }

  return $CategoryItemCopyWith<$Res>(_self.selectedCategory!, (value) {
    return _then(_self.copyWith(selectedCategory: value));
  });
}/// Create a copy of SelectCategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoriesListResponseCopyWith<$Res> get categoriesListApiResponse {
  
  return $CategoriesListResponseCopyWith<$Res>(_self.categoriesListApiResponse, (value) {
    return _then(_self.copyWith(categoriesListApiResponse: value));
  });
}
}

// dart format on
