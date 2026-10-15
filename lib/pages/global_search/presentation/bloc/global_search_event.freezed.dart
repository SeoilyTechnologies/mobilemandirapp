// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GlobalSearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GlobalSearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GlobalSearchEvent()';
}


}

/// @nodoc
class $GlobalSearchEventCopyWith<$Res>  {
$GlobalSearchEventCopyWith(GlobalSearchEvent _, $Res Function(GlobalSearchEvent) __);
}


/// Adds pattern-matching-related methods to [GlobalSearchEvent].
extension GlobalSearchEventPatterns on GlobalSearchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchQueryEvent value)?  search,TResult Function( ToggleGlobalSearchWishlistEvent value)?  toggleWishlist,TResult Function( ClearSearchEvent value)?  clear,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchQueryEvent() when search != null:
return search(_that);case ToggleGlobalSearchWishlistEvent() when toggleWishlist != null:
return toggleWishlist(_that);case ClearSearchEvent() when clear != null:
return clear(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchQueryEvent value)  search,required TResult Function( ToggleGlobalSearchWishlistEvent value)  toggleWishlist,required TResult Function( ClearSearchEvent value)  clear,}){
final _that = this;
switch (_that) {
case SearchQueryEvent():
return search(_that);case ToggleGlobalSearchWishlistEvent():
return toggleWishlist(_that);case ClearSearchEvent():
return clear(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchQueryEvent value)?  search,TResult? Function( ToggleGlobalSearchWishlistEvent value)?  toggleWishlist,TResult? Function( ClearSearchEvent value)?  clear,}){
final _that = this;
switch (_that) {
case SearchQueryEvent() when search != null:
return search(_that);case ToggleGlobalSearchWishlistEvent() when toggleWishlist != null:
return toggleWishlist(_that);case ClearSearchEvent() when clear != null:
return clear(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String query,  String? apiQuery)?  search,TResult Function( String itemId,  String itemModel)?  toggleWishlist,TResult Function()?  clear,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchQueryEvent() when search != null:
return search(_that.query,_that.apiQuery);case ToggleGlobalSearchWishlistEvent() when toggleWishlist != null:
return toggleWishlist(_that.itemId,_that.itemModel);case ClearSearchEvent() when clear != null:
return clear();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String query,  String? apiQuery)  search,required TResult Function( String itemId,  String itemModel)  toggleWishlist,required TResult Function()  clear,}) {final _that = this;
switch (_that) {
case SearchQueryEvent():
return search(_that.query,_that.apiQuery);case ToggleGlobalSearchWishlistEvent():
return toggleWishlist(_that.itemId,_that.itemModel);case ClearSearchEvent():
return clear();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String query,  String? apiQuery)?  search,TResult? Function( String itemId,  String itemModel)?  toggleWishlist,TResult? Function()?  clear,}) {final _that = this;
switch (_that) {
case SearchQueryEvent() when search != null:
return search(_that.query,_that.apiQuery);case ToggleGlobalSearchWishlistEvent() when toggleWishlist != null:
return toggleWishlist(_that.itemId,_that.itemModel);case ClearSearchEvent() when clear != null:
return clear();case _:
  return null;

}
}

}

/// @nodoc


class SearchQueryEvent implements GlobalSearchEvent {
  const SearchQueryEvent({this.query = '', this.apiQuery});
  

@JsonKey() final  String query;
 final  String? apiQuery;

/// Create a copy of GlobalSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchQueryEventCopyWith<SearchQueryEvent> get copyWith => _$SearchQueryEventCopyWithImpl<SearchQueryEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchQueryEvent&&(identical(other.query, query) || other.query == query)&&(identical(other.apiQuery, apiQuery) || other.apiQuery == apiQuery));
}


@override
int get hashCode => Object.hash(runtimeType,query,apiQuery);

@override
String toString() {
  return 'GlobalSearchEvent.search(query: $query, apiQuery: $apiQuery)';
}


}

/// @nodoc
abstract mixin class $SearchQueryEventCopyWith<$Res> implements $GlobalSearchEventCopyWith<$Res> {
  factory $SearchQueryEventCopyWith(SearchQueryEvent value, $Res Function(SearchQueryEvent) _then) = _$SearchQueryEventCopyWithImpl;
@useResult
$Res call({
 String query, String? apiQuery
});




}
/// @nodoc
class _$SearchQueryEventCopyWithImpl<$Res>
    implements $SearchQueryEventCopyWith<$Res> {
  _$SearchQueryEventCopyWithImpl(this._self, this._then);

  final SearchQueryEvent _self;
  final $Res Function(SearchQueryEvent) _then;

/// Create a copy of GlobalSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,Object? apiQuery = freezed,}) {
  return _then(SearchQueryEvent(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,apiQuery: freezed == apiQuery ? _self.apiQuery : apiQuery // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ToggleGlobalSearchWishlistEvent implements GlobalSearchEvent {
  const ToggleGlobalSearchWishlistEvent({required this.itemId, required this.itemModel});
  

 final  String itemId;
 final  String itemModel;

/// Create a copy of GlobalSearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleGlobalSearchWishlistEventCopyWith<ToggleGlobalSearchWishlistEvent> get copyWith => _$ToggleGlobalSearchWishlistEventCopyWithImpl<ToggleGlobalSearchWishlistEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleGlobalSearchWishlistEvent&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemModel, itemModel) || other.itemModel == itemModel));
}


@override
int get hashCode => Object.hash(runtimeType,itemId,itemModel);

@override
String toString() {
  return 'GlobalSearchEvent.toggleWishlist(itemId: $itemId, itemModel: $itemModel)';
}


}

/// @nodoc
abstract mixin class $ToggleGlobalSearchWishlistEventCopyWith<$Res> implements $GlobalSearchEventCopyWith<$Res> {
  factory $ToggleGlobalSearchWishlistEventCopyWith(ToggleGlobalSearchWishlistEvent value, $Res Function(ToggleGlobalSearchWishlistEvent) _then) = _$ToggleGlobalSearchWishlistEventCopyWithImpl;
@useResult
$Res call({
 String itemId, String itemModel
});




}
/// @nodoc
class _$ToggleGlobalSearchWishlistEventCopyWithImpl<$Res>
    implements $ToggleGlobalSearchWishlistEventCopyWith<$Res> {
  _$ToggleGlobalSearchWishlistEventCopyWithImpl(this._self, this._then);

  final ToggleGlobalSearchWishlistEvent _self;
  final $Res Function(ToggleGlobalSearchWishlistEvent) _then;

/// Create a copy of GlobalSearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? itemModel = null,}) {
  return _then(ToggleGlobalSearchWishlistEvent(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemModel: null == itemModel ? _self.itemModel : itemModel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClearSearchEvent implements GlobalSearchEvent {
  const ClearSearchEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearSearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GlobalSearchEvent.clear()';
}


}




// dart format on
