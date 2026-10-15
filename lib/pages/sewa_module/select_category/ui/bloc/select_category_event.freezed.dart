// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_category_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SelectCategoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectCategoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SelectCategoryEvent()';
}


}

/// @nodoc
class $SelectCategoryEventCopyWith<$Res>  {
$SelectCategoryEventCopyWith(SelectCategoryEvent _, $Res Function(SelectCategoryEvent) __);
}


/// Adds pattern-matching-related methods to [SelectCategoryEvent].
extension SelectCategoryEventPatterns on SelectCategoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CategorySelected value)?  categorySelected,TResult Function( Proceed value)?  proceed,TResult Function( GetCategoriesList value)?  getCateroiesList,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CategorySelected() when categorySelected != null:
return categorySelected(_that);case Proceed() when proceed != null:
return proceed(_that);case GetCategoriesList() when getCateroiesList != null:
return getCateroiesList(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CategorySelected value)  categorySelected,required TResult Function( Proceed value)  proceed,required TResult Function( GetCategoriesList value)  getCateroiesList,}){
final _that = this;
switch (_that) {
case CategorySelected():
return categorySelected(_that);case Proceed():
return proceed(_that);case GetCategoriesList():
return getCateroiesList(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CategorySelected value)?  categorySelected,TResult? Function( Proceed value)?  proceed,TResult? Function( GetCategoriesList value)?  getCateroiesList,}){
final _that = this;
switch (_that) {
case CategorySelected() when categorySelected != null:
return categorySelected(_that);case Proceed() when proceed != null:
return proceed(_that);case GetCategoriesList() when getCateroiesList != null:
return getCateroiesList(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( CategoryItem category)?  categorySelected,TResult Function()?  proceed,TResult Function()?  getCateroiesList,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CategorySelected() when categorySelected != null:
return categorySelected(_that.category);case Proceed() when proceed != null:
return proceed();case GetCategoriesList() when getCateroiesList != null:
return getCateroiesList();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( CategoryItem category)  categorySelected,required TResult Function()  proceed,required TResult Function()  getCateroiesList,}) {final _that = this;
switch (_that) {
case CategorySelected():
return categorySelected(_that.category);case Proceed():
return proceed();case GetCategoriesList():
return getCateroiesList();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( CategoryItem category)?  categorySelected,TResult? Function()?  proceed,TResult? Function()?  getCateroiesList,}) {final _that = this;
switch (_that) {
case CategorySelected() when categorySelected != null:
return categorySelected(_that.category);case Proceed() when proceed != null:
return proceed();case GetCategoriesList() when getCateroiesList != null:
return getCateroiesList();case _:
  return null;

}
}

}

/// @nodoc


class CategorySelected implements SelectCategoryEvent {
  const CategorySelected(this.category);
  

 final  CategoryItem category;

/// Create a copy of SelectCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategorySelectedCopyWith<CategorySelected> get copyWith => _$CategorySelectedCopyWithImpl<CategorySelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategorySelected&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'SelectCategoryEvent.categorySelected(category: $category)';
}


}

/// @nodoc
abstract mixin class $CategorySelectedCopyWith<$Res> implements $SelectCategoryEventCopyWith<$Res> {
  factory $CategorySelectedCopyWith(CategorySelected value, $Res Function(CategorySelected) _then) = _$CategorySelectedCopyWithImpl;
@useResult
$Res call({
 CategoryItem category
});


$CategoryItemCopyWith<$Res> get category;

}
/// @nodoc
class _$CategorySelectedCopyWithImpl<$Res>
    implements $CategorySelectedCopyWith<$Res> {
  _$CategorySelectedCopyWithImpl(this._self, this._then);

  final CategorySelected _self;
  final $Res Function(CategorySelected) _then;

/// Create a copy of SelectCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(CategorySelected(
null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryItem,
  ));
}

/// Create a copy of SelectCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryItemCopyWith<$Res> get category {
  
  return $CategoryItemCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}

/// @nodoc


class Proceed implements SelectCategoryEvent {
  const Proceed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Proceed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SelectCategoryEvent.proceed()';
}


}




/// @nodoc


class GetCategoriesList implements SelectCategoryEvent {
  const GetCategoriesList();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCategoriesList);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SelectCategoryEvent.getCateroiesList()';
}


}




// dart format on
