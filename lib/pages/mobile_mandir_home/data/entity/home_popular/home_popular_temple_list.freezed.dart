// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_popular_temple_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomePopularTempleListResponse {

@JsonKey(name: "success") bool get success;@JsonKey(name: "data") HomePopularTempleData get data;
/// Create a copy of HomePopularTempleListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomePopularTempleListResponseCopyWith<HomePopularTempleListResponse> get copyWith => _$HomePopularTempleListResponseCopyWithImpl<HomePopularTempleListResponse>(this as HomePopularTempleListResponse, _$identity);

  /// Serializes this HomePopularTempleListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePopularTempleListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'HomePopularTempleListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $HomePopularTempleListResponseCopyWith<$Res>  {
  factory $HomePopularTempleListResponseCopyWith(HomePopularTempleListResponse value, $Res Function(HomePopularTempleListResponse) _then) = _$HomePopularTempleListResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "success") bool success,@JsonKey(name: "data") HomePopularTempleData data
});


$HomePopularTempleDataCopyWith<$Res> get data;

}
/// @nodoc
class _$HomePopularTempleListResponseCopyWithImpl<$Res>
    implements $HomePopularTempleListResponseCopyWith<$Res> {
  _$HomePopularTempleListResponseCopyWithImpl(this._self, this._then);

  final HomePopularTempleListResponse _self;
  final $Res Function(HomePopularTempleListResponse) _then;

/// Create a copy of HomePopularTempleListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as HomePopularTempleData,
  ));
}
/// Create a copy of HomePopularTempleListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomePopularTempleDataCopyWith<$Res> get data {
  
  return $HomePopularTempleDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomePopularTempleListResponse].
extension HomePopularTempleListResponsePatterns on HomePopularTempleListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomePopularTempleListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomePopularTempleListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomePopularTempleListResponse value)  $default,){
final _that = this;
switch (_that) {
case _HomePopularTempleListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomePopularTempleListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _HomePopularTempleListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "data")  HomePopularTempleData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomePopularTempleListResponse() when $default != null:
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "data")  HomePopularTempleData data)  $default,) {final _that = this;
switch (_that) {
case _HomePopularTempleListResponse():
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "success")  bool success, @JsonKey(name: "data")  HomePopularTempleData data)?  $default,) {final _that = this;
switch (_that) {
case _HomePopularTempleListResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomePopularTempleListResponse implements HomePopularTempleListResponse {
  const _HomePopularTempleListResponse({@JsonKey(name: "success") this.success = false, @JsonKey(name: "data") this.data = const HomePopularTempleData()});
  factory _HomePopularTempleListResponse.fromJson(Map<String, dynamic> json) => _$HomePopularTempleListResponseFromJson(json);

@override@JsonKey(name: "success") final  bool success;
@override@JsonKey(name: "data") final  HomePopularTempleData data;

/// Create a copy of HomePopularTempleListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomePopularTempleListResponseCopyWith<_HomePopularTempleListResponse> get copyWith => __$HomePopularTempleListResponseCopyWithImpl<_HomePopularTempleListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomePopularTempleListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomePopularTempleListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'HomePopularTempleListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$HomePopularTempleListResponseCopyWith<$Res> implements $HomePopularTempleListResponseCopyWith<$Res> {
  factory _$HomePopularTempleListResponseCopyWith(_HomePopularTempleListResponse value, $Res Function(_HomePopularTempleListResponse) _then) = __$HomePopularTempleListResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "success") bool success,@JsonKey(name: "data") HomePopularTempleData data
});


@override $HomePopularTempleDataCopyWith<$Res> get data;

}
/// @nodoc
class __$HomePopularTempleListResponseCopyWithImpl<$Res>
    implements _$HomePopularTempleListResponseCopyWith<$Res> {
  __$HomePopularTempleListResponseCopyWithImpl(this._self, this._then);

  final _HomePopularTempleListResponse _self;
  final $Res Function(_HomePopularTempleListResponse) _then;

/// Create a copy of HomePopularTempleListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_HomePopularTempleListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as HomePopularTempleData,
  ));
}

/// Create a copy of HomePopularTempleListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomePopularTempleDataCopyWith<$Res> get data {
  
  return $HomePopularTempleDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$HomePopularTempleData {

@JsonKey(name: "items") List<PopularTempleItem> get items;@JsonKey(name: "pagination") PopularTemplePagination get pagination;
/// Create a copy of HomePopularTempleData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomePopularTempleDataCopyWith<HomePopularTempleData> get copyWith => _$HomePopularTempleDataCopyWithImpl<HomePopularTempleData>(this as HomePopularTempleData, _$identity);

  /// Serializes this HomePopularTempleData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePopularTempleData&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),pagination);

@override
String toString() {
  return 'HomePopularTempleData(items: $items, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $HomePopularTempleDataCopyWith<$Res>  {
  factory $HomePopularTempleDataCopyWith(HomePopularTempleData value, $Res Function(HomePopularTempleData) _then) = _$HomePopularTempleDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "items") List<PopularTempleItem> items,@JsonKey(name: "pagination") PopularTemplePagination pagination
});


$PopularTemplePaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class _$HomePopularTempleDataCopyWithImpl<$Res>
    implements $HomePopularTempleDataCopyWith<$Res> {
  _$HomePopularTempleDataCopyWithImpl(this._self, this._then);

  final HomePopularTempleData _self;
  final $Res Function(HomePopularTempleData) _then;

/// Create a copy of HomePopularTempleData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? pagination = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<PopularTempleItem>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PopularTemplePagination,
  ));
}
/// Create a copy of HomePopularTempleData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PopularTemplePaginationCopyWith<$Res> get pagination {
  
  return $PopularTemplePaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomePopularTempleData].
extension HomePopularTempleDataPatterns on HomePopularTempleData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomePopularTempleData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomePopularTempleData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomePopularTempleData value)  $default,){
final _that = this;
switch (_that) {
case _HomePopularTempleData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomePopularTempleData value)?  $default,){
final _that = this;
switch (_that) {
case _HomePopularTempleData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "items")  List<PopularTempleItem> items, @JsonKey(name: "pagination")  PopularTemplePagination pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomePopularTempleData() when $default != null:
return $default(_that.items,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "items")  List<PopularTempleItem> items, @JsonKey(name: "pagination")  PopularTemplePagination pagination)  $default,) {final _that = this;
switch (_that) {
case _HomePopularTempleData():
return $default(_that.items,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "items")  List<PopularTempleItem> items, @JsonKey(name: "pagination")  PopularTemplePagination pagination)?  $default,) {final _that = this;
switch (_that) {
case _HomePopularTempleData() when $default != null:
return $default(_that.items,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomePopularTempleData implements HomePopularTempleData {
  const _HomePopularTempleData({@JsonKey(name: "items") final  List<PopularTempleItem> items = const [], @JsonKey(name: "pagination") this.pagination = const PopularTemplePagination()}): _items = items;
  factory _HomePopularTempleData.fromJson(Map<String, dynamic> json) => _$HomePopularTempleDataFromJson(json);

 final  List<PopularTempleItem> _items;
@override@JsonKey(name: "items") List<PopularTempleItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey(name: "pagination") final  PopularTemplePagination pagination;

/// Create a copy of HomePopularTempleData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomePopularTempleDataCopyWith<_HomePopularTempleData> get copyWith => __$HomePopularTempleDataCopyWithImpl<_HomePopularTempleData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomePopularTempleDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomePopularTempleData&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),pagination);

@override
String toString() {
  return 'HomePopularTempleData(items: $items, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$HomePopularTempleDataCopyWith<$Res> implements $HomePopularTempleDataCopyWith<$Res> {
  factory _$HomePopularTempleDataCopyWith(_HomePopularTempleData value, $Res Function(_HomePopularTempleData) _then) = __$HomePopularTempleDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "items") List<PopularTempleItem> items,@JsonKey(name: "pagination") PopularTemplePagination pagination
});


@override $PopularTemplePaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class __$HomePopularTempleDataCopyWithImpl<$Res>
    implements _$HomePopularTempleDataCopyWith<$Res> {
  __$HomePopularTempleDataCopyWithImpl(this._self, this._then);

  final _HomePopularTempleData _self;
  final $Res Function(_HomePopularTempleData) _then;

/// Create a copy of HomePopularTempleData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? pagination = null,}) {
  return _then(_HomePopularTempleData(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<PopularTempleItem>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PopularTemplePagination,
  ));
}

/// Create a copy of HomePopularTempleData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PopularTemplePaginationCopyWith<$Res> get pagination {
  
  return $PopularTemplePaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$PopularTempleItem {

@JsonKey(name: "id") String get id;@JsonKey(name: "title") String get title;@JsonKey(name: "slug") String get slug;@JsonKey(name: "category") String get category;@JsonKey(name: "location") String get location;@JsonKey(name: "image") String get image;@JsonKey(name: "isWishlist") bool get isWishlist;
/// Create a copy of PopularTempleItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopularTempleItemCopyWith<PopularTempleItem> get copyWith => _$PopularTempleItemCopyWithImpl<PopularTempleItem>(this as PopularTempleItem, _$identity);

  /// Serializes this PopularTempleItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularTempleItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.category, category) || other.category == category)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image)&&(identical(other.isWishlist, isWishlist) || other.isWishlist == isWishlist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,slug,category,location,image,isWishlist);

@override
String toString() {
  return 'PopularTempleItem(id: $id, title: $title, slug: $slug, category: $category, location: $location, image: $image, isWishlist: $isWishlist)';
}


}

/// @nodoc
abstract mixin class $PopularTempleItemCopyWith<$Res>  {
  factory $PopularTempleItemCopyWith(PopularTempleItem value, $Res Function(PopularTempleItem) _then) = _$PopularTempleItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") String id,@JsonKey(name: "title") String title,@JsonKey(name: "slug") String slug,@JsonKey(name: "category") String category,@JsonKey(name: "location") String location,@JsonKey(name: "image") String image,@JsonKey(name: "isWishlist") bool isWishlist
});




}
/// @nodoc
class _$PopularTempleItemCopyWithImpl<$Res>
    implements $PopularTempleItemCopyWith<$Res> {
  _$PopularTempleItemCopyWithImpl(this._self, this._then);

  final PopularTempleItem _self;
  final $Res Function(PopularTempleItem) _then;

/// Create a copy of PopularTempleItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? slug = null,Object? category = null,Object? location = null,Object? image = null,Object? isWishlist = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isWishlist: null == isWishlist ? _self.isWishlist : isWishlist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PopularTempleItem].
extension PopularTempleItemPatterns on PopularTempleItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopularTempleItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopularTempleItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopularTempleItem value)  $default,){
final _that = this;
switch (_that) {
case _PopularTempleItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopularTempleItem value)?  $default,){
final _that = this;
switch (_that) {
case _PopularTempleItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String id, @JsonKey(name: "title")  String title, @JsonKey(name: "slug")  String slug, @JsonKey(name: "category")  String category, @JsonKey(name: "location")  String location, @JsonKey(name: "image")  String image, @JsonKey(name: "isWishlist")  bool isWishlist)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PopularTempleItem() when $default != null:
return $default(_that.id,_that.title,_that.slug,_that.category,_that.location,_that.image,_that.isWishlist);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  String id, @JsonKey(name: "title")  String title, @JsonKey(name: "slug")  String slug, @JsonKey(name: "category")  String category, @JsonKey(name: "location")  String location, @JsonKey(name: "image")  String image, @JsonKey(name: "isWishlist")  bool isWishlist)  $default,) {final _that = this;
switch (_that) {
case _PopularTempleItem():
return $default(_that.id,_that.title,_that.slug,_that.category,_that.location,_that.image,_that.isWishlist);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  String id, @JsonKey(name: "title")  String title, @JsonKey(name: "slug")  String slug, @JsonKey(name: "category")  String category, @JsonKey(name: "location")  String location, @JsonKey(name: "image")  String image, @JsonKey(name: "isWishlist")  bool isWishlist)?  $default,) {final _that = this;
switch (_that) {
case _PopularTempleItem() when $default != null:
return $default(_that.id,_that.title,_that.slug,_that.category,_that.location,_that.image,_that.isWishlist);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PopularTempleItem implements PopularTempleItem {
  const _PopularTempleItem({@JsonKey(name: "id") this.id = "", @JsonKey(name: "title") this.title = "", @JsonKey(name: "slug") this.slug = "", @JsonKey(name: "category") this.category = "", @JsonKey(name: "location") this.location = "", @JsonKey(name: "image") this.image = "", @JsonKey(name: "isWishlist") this.isWishlist = false});
  factory _PopularTempleItem.fromJson(Map<String, dynamic> json) => _$PopularTempleItemFromJson(json);

@override@JsonKey(name: "id") final  String id;
@override@JsonKey(name: "title") final  String title;
@override@JsonKey(name: "slug") final  String slug;
@override@JsonKey(name: "category") final  String category;
@override@JsonKey(name: "location") final  String location;
@override@JsonKey(name: "image") final  String image;
@override@JsonKey(name: "isWishlist") final  bool isWishlist;

/// Create a copy of PopularTempleItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopularTempleItemCopyWith<_PopularTempleItem> get copyWith => __$PopularTempleItemCopyWithImpl<_PopularTempleItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PopularTempleItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopularTempleItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.category, category) || other.category == category)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image)&&(identical(other.isWishlist, isWishlist) || other.isWishlist == isWishlist));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,slug,category,location,image,isWishlist);

@override
String toString() {
  return 'PopularTempleItem(id: $id, title: $title, slug: $slug, category: $category, location: $location, image: $image, isWishlist: $isWishlist)';
}


}

/// @nodoc
abstract mixin class _$PopularTempleItemCopyWith<$Res> implements $PopularTempleItemCopyWith<$Res> {
  factory _$PopularTempleItemCopyWith(_PopularTempleItem value, $Res Function(_PopularTempleItem) _then) = __$PopularTempleItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") String id,@JsonKey(name: "title") String title,@JsonKey(name: "slug") String slug,@JsonKey(name: "category") String category,@JsonKey(name: "location") String location,@JsonKey(name: "image") String image,@JsonKey(name: "isWishlist") bool isWishlist
});




}
/// @nodoc
class __$PopularTempleItemCopyWithImpl<$Res>
    implements _$PopularTempleItemCopyWith<$Res> {
  __$PopularTempleItemCopyWithImpl(this._self, this._then);

  final _PopularTempleItem _self;
  final $Res Function(_PopularTempleItem) _then;

/// Create a copy of PopularTempleItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? slug = null,Object? category = null,Object? location = null,Object? image = null,Object? isWishlist = null,}) {
  return _then(_PopularTempleItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isWishlist: null == isWishlist ? _self.isWishlist : isWishlist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$PopularTemplePagination {

@JsonKey(name: "total") int get total;@JsonKey(name: "page") int get page;@JsonKey(name: "limit") int get limit;@JsonKey(name: "totalPages") int get totalPages;
/// Create a copy of PopularTemplePagination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopularTemplePaginationCopyWith<PopularTemplePagination> get copyWith => _$PopularTemplePaginationCopyWithImpl<PopularTemplePagination>(this as PopularTemplePagination, _$identity);

  /// Serializes this PopularTemplePagination to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopularTemplePagination&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,totalPages);

@override
String toString() {
  return 'PopularTemplePagination(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $PopularTemplePaginationCopyWith<$Res>  {
  factory $PopularTemplePaginationCopyWith(PopularTemplePagination value, $Res Function(PopularTemplePagination) _then) = _$PopularTemplePaginationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "total") int total,@JsonKey(name: "page") int page,@JsonKey(name: "limit") int limit,@JsonKey(name: "totalPages") int totalPages
});




}
/// @nodoc
class _$PopularTemplePaginationCopyWithImpl<$Res>
    implements $PopularTemplePaginationCopyWith<$Res> {
  _$PopularTemplePaginationCopyWithImpl(this._self, this._then);

  final PopularTemplePagination _self;
  final $Res Function(PopularTemplePagination) _then;

/// Create a copy of PopularTemplePagination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PopularTemplePagination].
extension PopularTemplePaginationPatterns on PopularTemplePagination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopularTemplePagination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopularTemplePagination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopularTemplePagination value)  $default,){
final _that = this;
switch (_that) {
case _PopularTemplePagination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopularTemplePagination value)?  $default,){
final _that = this;
switch (_that) {
case _PopularTemplePagination() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "total")  int total, @JsonKey(name: "page")  int page, @JsonKey(name: "limit")  int limit, @JsonKey(name: "totalPages")  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PopularTemplePagination() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "total")  int total, @JsonKey(name: "page")  int page, @JsonKey(name: "limit")  int limit, @JsonKey(name: "totalPages")  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _PopularTemplePagination():
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "total")  int total, @JsonKey(name: "page")  int page, @JsonKey(name: "limit")  int limit, @JsonKey(name: "totalPages")  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _PopularTemplePagination() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PopularTemplePagination implements PopularTemplePagination {
  const _PopularTemplePagination({@JsonKey(name: "total") this.total = 0, @JsonKey(name: "page") this.page = 0, @JsonKey(name: "limit") this.limit = 0, @JsonKey(name: "totalPages") this.totalPages = 0});
  factory _PopularTemplePagination.fromJson(Map<String, dynamic> json) => _$PopularTemplePaginationFromJson(json);

@override@JsonKey(name: "total") final  int total;
@override@JsonKey(name: "page") final  int page;
@override@JsonKey(name: "limit") final  int limit;
@override@JsonKey(name: "totalPages") final  int totalPages;

/// Create a copy of PopularTemplePagination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopularTemplePaginationCopyWith<_PopularTemplePagination> get copyWith => __$PopularTemplePaginationCopyWithImpl<_PopularTemplePagination>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PopularTemplePaginationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopularTemplePagination&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,totalPages);

@override
String toString() {
  return 'PopularTemplePagination(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$PopularTemplePaginationCopyWith<$Res> implements $PopularTemplePaginationCopyWith<$Res> {
  factory _$PopularTemplePaginationCopyWith(_PopularTemplePagination value, $Res Function(_PopularTemplePagination) _then) = __$PopularTemplePaginationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "total") int total,@JsonKey(name: "page") int page,@JsonKey(name: "limit") int limit,@JsonKey(name: "totalPages") int totalPages
});




}
/// @nodoc
class __$PopularTemplePaginationCopyWithImpl<$Res>
    implements _$PopularTemplePaginationCopyWith<$Res> {
  __$PopularTemplePaginationCopyWithImpl(this._self, this._then);

  final _PopularTemplePagination _self;
  final $Res Function(_PopularTemplePagination) _then;

/// Create a copy of PopularTemplePagination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? totalPages = null,}) {
  return _then(_PopularTemplePagination(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
