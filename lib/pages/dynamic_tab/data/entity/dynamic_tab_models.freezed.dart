// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_tab_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeTabListResponse {

 bool get success;// false → app keeps its built-in tabs
 bool get enabled; List<HomeTabModel> get data;
/// Create a copy of HomeTabListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeTabListResponseCopyWith<HomeTabListResponse> get copyWith => _$HomeTabListResponseCopyWithImpl<HomeTabListResponse>(this as HomeTabListResponse, _$identity);

  /// Serializes this HomeTabListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeTabListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,enabled,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'HomeTabListResponse(success: $success, enabled: $enabled, data: $data)';
}


}

/// @nodoc
abstract mixin class $HomeTabListResponseCopyWith<$Res>  {
  factory $HomeTabListResponseCopyWith(HomeTabListResponse value, $Res Function(HomeTabListResponse) _then) = _$HomeTabListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, bool enabled, List<HomeTabModel> data
});




}
/// @nodoc
class _$HomeTabListResponseCopyWithImpl<$Res>
    implements $HomeTabListResponseCopyWith<$Res> {
  _$HomeTabListResponseCopyWithImpl(this._self, this._then);

  final HomeTabListResponse _self;
  final $Res Function(HomeTabListResponse) _then;

/// Create a copy of HomeTabListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? enabled = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<HomeTabModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeTabListResponse].
extension HomeTabListResponsePatterns on HomeTabListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeTabListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeTabListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeTabListResponse value)  $default,){
final _that = this;
switch (_that) {
case _HomeTabListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeTabListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _HomeTabListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  bool enabled,  List<HomeTabModel> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeTabListResponse() when $default != null:
return $default(_that.success,_that.enabled,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  bool enabled,  List<HomeTabModel> data)  $default,) {final _that = this;
switch (_that) {
case _HomeTabListResponse():
return $default(_that.success,_that.enabled,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  bool enabled,  List<HomeTabModel> data)?  $default,) {final _that = this;
switch (_that) {
case _HomeTabListResponse() when $default != null:
return $default(_that.success,_that.enabled,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeTabListResponse implements HomeTabListResponse {
  const _HomeTabListResponse({this.success = false, this.enabled = false, final  List<HomeTabModel> data = const []}): _data = data;
  factory _HomeTabListResponse.fromJson(Map<String, dynamic> json) => _$HomeTabListResponseFromJson(json);

@override@JsonKey() final  bool success;
// false → app keeps its built-in tabs
@override@JsonKey() final  bool enabled;
 final  List<HomeTabModel> _data;
@override@JsonKey() List<HomeTabModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of HomeTabListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeTabListResponseCopyWith<_HomeTabListResponse> get copyWith => __$HomeTabListResponseCopyWithImpl<_HomeTabListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeTabListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeTabListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,enabled,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'HomeTabListResponse(success: $success, enabled: $enabled, data: $data)';
}


}

/// @nodoc
abstract mixin class _$HomeTabListResponseCopyWith<$Res> implements $HomeTabListResponseCopyWith<$Res> {
  factory _$HomeTabListResponseCopyWith(_HomeTabListResponse value, $Res Function(_HomeTabListResponse) _then) = __$HomeTabListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, bool enabled, List<HomeTabModel> data
});




}
/// @nodoc
class __$HomeTabListResponseCopyWithImpl<$Res>
    implements _$HomeTabListResponseCopyWith<$Res> {
  __$HomeTabListResponseCopyWithImpl(this._self, this._then);

  final _HomeTabListResponse _self;
  final $Res Function(_HomeTabListResponse) _then;

/// Create a copy of HomeTabListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? enabled = null,Object? data = null,}) {
  return _then(_HomeTabListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<HomeTabModel>,
  ));
}


}


/// @nodoc
mixin _$HomeTabModel {

 String get key;// NATIVE (built-in screen) | DYNAMIC (section page)
 String get kind;// Empty for built-in tabs → app's translated name.
 String get title; DynamicMedia? get icon; bool get requiresLogin;// App opens on this tab (set by admin, only while the tab is visible).
 bool get isDefault; String get pageSlug; DynamicTheme? get theme; DynamicBannerModel? get banner;
/// Create a copy of HomeTabModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeTabModelCopyWith<HomeTabModel> get copyWith => _$HomeTabModelCopyWithImpl<HomeTabModel>(this as HomeTabModel, _$identity);

  /// Serializes this HomeTabModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeTabModel&&(identical(other.key, key) || other.key == key)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.title, title) || other.title == title)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.requiresLogin, requiresLogin) || other.requiresLogin == requiresLogin)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.pageSlug, pageSlug) || other.pageSlug == pageSlug)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.banner, banner) || other.banner == banner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,kind,title,icon,requiresLogin,isDefault,pageSlug,theme,banner);

@override
String toString() {
  return 'HomeTabModel(key: $key, kind: $kind, title: $title, icon: $icon, requiresLogin: $requiresLogin, isDefault: $isDefault, pageSlug: $pageSlug, theme: $theme, banner: $banner)';
}


}

/// @nodoc
abstract mixin class $HomeTabModelCopyWith<$Res>  {
  factory $HomeTabModelCopyWith(HomeTabModel value, $Res Function(HomeTabModel) _then) = _$HomeTabModelCopyWithImpl;
@useResult
$Res call({
 String key, String kind, String title, DynamicMedia? icon, bool requiresLogin, bool isDefault, String pageSlug, DynamicTheme? theme, DynamicBannerModel? banner
});


$DynamicMediaCopyWith<$Res>? get icon;$DynamicThemeCopyWith<$Res>? get theme;$DynamicBannerModelCopyWith<$Res>? get banner;

}
/// @nodoc
class _$HomeTabModelCopyWithImpl<$Res>
    implements $HomeTabModelCopyWith<$Res> {
  _$HomeTabModelCopyWithImpl(this._self, this._then);

  final HomeTabModel _self;
  final $Res Function(HomeTabModel) _then;

/// Create a copy of HomeTabModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? kind = null,Object? title = null,Object? icon = freezed,Object? requiresLogin = null,Object? isDefault = null,Object? pageSlug = null,Object? theme = freezed,Object? banner = freezed,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as DynamicMedia?,requiresLogin: null == requiresLogin ? _self.requiresLogin : requiresLogin // ignore: cast_nullable_to_non_nullable
as bool,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,pageSlug: null == pageSlug ? _self.pageSlug : pageSlug // ignore: cast_nullable_to_non_nullable
as String,theme: freezed == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as DynamicTheme?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as DynamicBannerModel?,
  ));
}
/// Create a copy of HomeTabModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicMediaCopyWith<$Res>? get icon {
    if (_self.icon == null) {
    return null;
  }

  return $DynamicMediaCopyWith<$Res>(_self.icon!, (value) {
    return _then(_self.copyWith(icon: value));
  });
}/// Create a copy of HomeTabModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicThemeCopyWith<$Res>? get theme {
    if (_self.theme == null) {
    return null;
  }

  return $DynamicThemeCopyWith<$Res>(_self.theme!, (value) {
    return _then(_self.copyWith(theme: value));
  });
}/// Create a copy of HomeTabModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicBannerModelCopyWith<$Res>? get banner {
    if (_self.banner == null) {
    return null;
  }

  return $DynamicBannerModelCopyWith<$Res>(_self.banner!, (value) {
    return _then(_self.copyWith(banner: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeTabModel].
extension HomeTabModelPatterns on HomeTabModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeTabModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeTabModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeTabModel value)  $default,){
final _that = this;
switch (_that) {
case _HomeTabModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeTabModel value)?  $default,){
final _that = this;
switch (_that) {
case _HomeTabModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  String kind,  String title,  DynamicMedia? icon,  bool requiresLogin,  bool isDefault,  String pageSlug,  DynamicTheme? theme,  DynamicBannerModel? banner)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeTabModel() when $default != null:
return $default(_that.key,_that.kind,_that.title,_that.icon,_that.requiresLogin,_that.isDefault,_that.pageSlug,_that.theme,_that.banner);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  String kind,  String title,  DynamicMedia? icon,  bool requiresLogin,  bool isDefault,  String pageSlug,  DynamicTheme? theme,  DynamicBannerModel? banner)  $default,) {final _that = this;
switch (_that) {
case _HomeTabModel():
return $default(_that.key,_that.kind,_that.title,_that.icon,_that.requiresLogin,_that.isDefault,_that.pageSlug,_that.theme,_that.banner);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  String kind,  String title,  DynamicMedia? icon,  bool requiresLogin,  bool isDefault,  String pageSlug,  DynamicTheme? theme,  DynamicBannerModel? banner)?  $default,) {final _that = this;
switch (_that) {
case _HomeTabModel() when $default != null:
return $default(_that.key,_that.kind,_that.title,_that.icon,_that.requiresLogin,_that.isDefault,_that.pageSlug,_that.theme,_that.banner);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeTabModel extends HomeTabModel {
  const _HomeTabModel({this.key = '', this.kind = 'NATIVE', this.title = '', this.icon, this.requiresLogin = false, this.isDefault = false, this.pageSlug = '', this.theme, this.banner}): super._();
  factory _HomeTabModel.fromJson(Map<String, dynamic> json) => _$HomeTabModelFromJson(json);

@override@JsonKey() final  String key;
// NATIVE (built-in screen) | DYNAMIC (section page)
@override@JsonKey() final  String kind;
// Empty for built-in tabs → app's translated name.
@override@JsonKey() final  String title;
@override final  DynamicMedia? icon;
@override@JsonKey() final  bool requiresLogin;
// App opens on this tab (set by admin, only while the tab is visible).
@override@JsonKey() final  bool isDefault;
@override@JsonKey() final  String pageSlug;
@override final  DynamicTheme? theme;
@override final  DynamicBannerModel? banner;

/// Create a copy of HomeTabModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeTabModelCopyWith<_HomeTabModel> get copyWith => __$HomeTabModelCopyWithImpl<_HomeTabModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeTabModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeTabModel&&(identical(other.key, key) || other.key == key)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.title, title) || other.title == title)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.requiresLogin, requiresLogin) || other.requiresLogin == requiresLogin)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.pageSlug, pageSlug) || other.pageSlug == pageSlug)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.banner, banner) || other.banner == banner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,kind,title,icon,requiresLogin,isDefault,pageSlug,theme,banner);

@override
String toString() {
  return 'HomeTabModel(key: $key, kind: $kind, title: $title, icon: $icon, requiresLogin: $requiresLogin, isDefault: $isDefault, pageSlug: $pageSlug, theme: $theme, banner: $banner)';
}


}

/// @nodoc
abstract mixin class _$HomeTabModelCopyWith<$Res> implements $HomeTabModelCopyWith<$Res> {
  factory _$HomeTabModelCopyWith(_HomeTabModel value, $Res Function(_HomeTabModel) _then) = __$HomeTabModelCopyWithImpl;
@override @useResult
$Res call({
 String key, String kind, String title, DynamicMedia? icon, bool requiresLogin, bool isDefault, String pageSlug, DynamicTheme? theme, DynamicBannerModel? banner
});


@override $DynamicMediaCopyWith<$Res>? get icon;@override $DynamicThemeCopyWith<$Res>? get theme;@override $DynamicBannerModelCopyWith<$Res>? get banner;

}
/// @nodoc
class __$HomeTabModelCopyWithImpl<$Res>
    implements _$HomeTabModelCopyWith<$Res> {
  __$HomeTabModelCopyWithImpl(this._self, this._then);

  final _HomeTabModel _self;
  final $Res Function(_HomeTabModel) _then;

/// Create a copy of HomeTabModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? kind = null,Object? title = null,Object? icon = freezed,Object? requiresLogin = null,Object? isDefault = null,Object? pageSlug = null,Object? theme = freezed,Object? banner = freezed,}) {
  return _then(_HomeTabModel(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as DynamicMedia?,requiresLogin: null == requiresLogin ? _self.requiresLogin : requiresLogin // ignore: cast_nullable_to_non_nullable
as bool,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,pageSlug: null == pageSlug ? _self.pageSlug : pageSlug // ignore: cast_nullable_to_non_nullable
as String,theme: freezed == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as DynamicTheme?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as DynamicBannerModel?,
  ));
}

/// Create a copy of HomeTabModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicMediaCopyWith<$Res>? get icon {
    if (_self.icon == null) {
    return null;
  }

  return $DynamicMediaCopyWith<$Res>(_self.icon!, (value) {
    return _then(_self.copyWith(icon: value));
  });
}/// Create a copy of HomeTabModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicThemeCopyWith<$Res>? get theme {
    if (_self.theme == null) {
    return null;
  }

  return $DynamicThemeCopyWith<$Res>(_self.theme!, (value) {
    return _then(_self.copyWith(theme: value));
  });
}/// Create a copy of HomeTabModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicBannerModelCopyWith<$Res>? get banner {
    if (_self.banner == null) {
    return null;
  }

  return $DynamicBannerModelCopyWith<$Res>(_self.banner!, (value) {
    return _then(_self.copyWith(banner: value));
  });
}
}


/// @nodoc
mixin _$DynamicMedia {

 String get id; String get url;// image | gif | svg
 String get format;
/// Create a copy of DynamicMedia
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DynamicMediaCopyWith<DynamicMedia> get copyWith => _$DynamicMediaCopyWithImpl<DynamicMedia>(this as DynamicMedia, _$identity);

  /// Serializes this DynamicMedia to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DynamicMedia&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.format, format) || other.format == format));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,format);

@override
String toString() {
  return 'DynamicMedia(id: $id, url: $url, format: $format)';
}


}

/// @nodoc
abstract mixin class $DynamicMediaCopyWith<$Res>  {
  factory $DynamicMediaCopyWith(DynamicMedia value, $Res Function(DynamicMedia) _then) = _$DynamicMediaCopyWithImpl;
@useResult
$Res call({
 String id, String url, String format
});




}
/// @nodoc
class _$DynamicMediaCopyWithImpl<$Res>
    implements $DynamicMediaCopyWith<$Res> {
  _$DynamicMediaCopyWithImpl(this._self, this._then);

  final DynamicMedia _self;
  final $Res Function(DynamicMedia) _then;

/// Create a copy of DynamicMedia
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = null,Object? format = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DynamicMedia].
extension DynamicMediaPatterns on DynamicMedia {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DynamicMedia value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DynamicMedia() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DynamicMedia value)  $default,){
final _that = this;
switch (_that) {
case _DynamicMedia():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DynamicMedia value)?  $default,){
final _that = this;
switch (_that) {
case _DynamicMedia() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String url,  String format)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DynamicMedia() when $default != null:
return $default(_that.id,_that.url,_that.format);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String url,  String format)  $default,) {final _that = this;
switch (_that) {
case _DynamicMedia():
return $default(_that.id,_that.url,_that.format);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String url,  String format)?  $default,) {final _that = this;
switch (_that) {
case _DynamicMedia() when $default != null:
return $default(_that.id,_that.url,_that.format);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DynamicMedia implements DynamicMedia {
  const _DynamicMedia({this.id = '', this.url = '', this.format = 'image'});
  factory _DynamicMedia.fromJson(Map<String, dynamic> json) => _$DynamicMediaFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String url;
// image | gif | svg
@override@JsonKey() final  String format;

/// Create a copy of DynamicMedia
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DynamicMediaCopyWith<_DynamicMedia> get copyWith => __$DynamicMediaCopyWithImpl<_DynamicMedia>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DynamicMediaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DynamicMedia&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&(identical(other.format, format) || other.format == format));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,format);

@override
String toString() {
  return 'DynamicMedia(id: $id, url: $url, format: $format)';
}


}

/// @nodoc
abstract mixin class _$DynamicMediaCopyWith<$Res> implements $DynamicMediaCopyWith<$Res> {
  factory _$DynamicMediaCopyWith(_DynamicMedia value, $Res Function(_DynamicMedia) _then) = __$DynamicMediaCopyWithImpl;
@override @useResult
$Res call({
 String id, String url, String format
});




}
/// @nodoc
class __$DynamicMediaCopyWithImpl<$Res>
    implements _$DynamicMediaCopyWith<$Res> {
  __$DynamicMediaCopyWithImpl(this._self, this._then);

  final _DynamicMedia _self;
  final $Res Function(_DynamicMedia) _then;

/// Create a copy of DynamicMedia
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,Object? format = null,}) {
  return _then(_DynamicMedia(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DynamicTheme {

 String get gradientStart; String get gradientEnd; double get gradientAngle; String get pageBgColor; String get primaryColor; String get secondaryColor;
/// Create a copy of DynamicTheme
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DynamicThemeCopyWith<DynamicTheme> get copyWith => _$DynamicThemeCopyWithImpl<DynamicTheme>(this as DynamicTheme, _$identity);

  /// Serializes this DynamicTheme to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DynamicTheme&&(identical(other.gradientStart, gradientStart) || other.gradientStart == gradientStart)&&(identical(other.gradientEnd, gradientEnd) || other.gradientEnd == gradientEnd)&&(identical(other.gradientAngle, gradientAngle) || other.gradientAngle == gradientAngle)&&(identical(other.pageBgColor, pageBgColor) || other.pageBgColor == pageBgColor)&&(identical(other.primaryColor, primaryColor) || other.primaryColor == primaryColor)&&(identical(other.secondaryColor, secondaryColor) || other.secondaryColor == secondaryColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gradientStart,gradientEnd,gradientAngle,pageBgColor,primaryColor,secondaryColor);

@override
String toString() {
  return 'DynamicTheme(gradientStart: $gradientStart, gradientEnd: $gradientEnd, gradientAngle: $gradientAngle, pageBgColor: $pageBgColor, primaryColor: $primaryColor, secondaryColor: $secondaryColor)';
}


}

/// @nodoc
abstract mixin class $DynamicThemeCopyWith<$Res>  {
  factory $DynamicThemeCopyWith(DynamicTheme value, $Res Function(DynamicTheme) _then) = _$DynamicThemeCopyWithImpl;
@useResult
$Res call({
 String gradientStart, String gradientEnd, double gradientAngle, String pageBgColor, String primaryColor, String secondaryColor
});




}
/// @nodoc
class _$DynamicThemeCopyWithImpl<$Res>
    implements $DynamicThemeCopyWith<$Res> {
  _$DynamicThemeCopyWithImpl(this._self, this._then);

  final DynamicTheme _self;
  final $Res Function(DynamicTheme) _then;

/// Create a copy of DynamicTheme
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gradientStart = null,Object? gradientEnd = null,Object? gradientAngle = null,Object? pageBgColor = null,Object? primaryColor = null,Object? secondaryColor = null,}) {
  return _then(_self.copyWith(
gradientStart: null == gradientStart ? _self.gradientStart : gradientStart // ignore: cast_nullable_to_non_nullable
as String,gradientEnd: null == gradientEnd ? _self.gradientEnd : gradientEnd // ignore: cast_nullable_to_non_nullable
as String,gradientAngle: null == gradientAngle ? _self.gradientAngle : gradientAngle // ignore: cast_nullable_to_non_nullable
as double,pageBgColor: null == pageBgColor ? _self.pageBgColor : pageBgColor // ignore: cast_nullable_to_non_nullable
as String,primaryColor: null == primaryColor ? _self.primaryColor : primaryColor // ignore: cast_nullable_to_non_nullable
as String,secondaryColor: null == secondaryColor ? _self.secondaryColor : secondaryColor // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DynamicTheme].
extension DynamicThemePatterns on DynamicTheme {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DynamicTheme value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DynamicTheme() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DynamicTheme value)  $default,){
final _that = this;
switch (_that) {
case _DynamicTheme():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DynamicTheme value)?  $default,){
final _that = this;
switch (_that) {
case _DynamicTheme() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String gradientStart,  String gradientEnd,  double gradientAngle,  String pageBgColor,  String primaryColor,  String secondaryColor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DynamicTheme() when $default != null:
return $default(_that.gradientStart,_that.gradientEnd,_that.gradientAngle,_that.pageBgColor,_that.primaryColor,_that.secondaryColor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String gradientStart,  String gradientEnd,  double gradientAngle,  String pageBgColor,  String primaryColor,  String secondaryColor)  $default,) {final _that = this;
switch (_that) {
case _DynamicTheme():
return $default(_that.gradientStart,_that.gradientEnd,_that.gradientAngle,_that.pageBgColor,_that.primaryColor,_that.secondaryColor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String gradientStart,  String gradientEnd,  double gradientAngle,  String pageBgColor,  String primaryColor,  String secondaryColor)?  $default,) {final _that = this;
switch (_that) {
case _DynamicTheme() when $default != null:
return $default(_that.gradientStart,_that.gradientEnd,_that.gradientAngle,_that.pageBgColor,_that.primaryColor,_that.secondaryColor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DynamicTheme implements DynamicTheme {
  const _DynamicTheme({this.gradientStart = '', this.gradientEnd = '', this.gradientAngle = 161.5, this.pageBgColor = '', this.primaryColor = '', this.secondaryColor = ''});
  factory _DynamicTheme.fromJson(Map<String, dynamic> json) => _$DynamicThemeFromJson(json);

@override@JsonKey() final  String gradientStart;
@override@JsonKey() final  String gradientEnd;
@override@JsonKey() final  double gradientAngle;
@override@JsonKey() final  String pageBgColor;
@override@JsonKey() final  String primaryColor;
@override@JsonKey() final  String secondaryColor;

/// Create a copy of DynamicTheme
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DynamicThemeCopyWith<_DynamicTheme> get copyWith => __$DynamicThemeCopyWithImpl<_DynamicTheme>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DynamicThemeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DynamicTheme&&(identical(other.gradientStart, gradientStart) || other.gradientStart == gradientStart)&&(identical(other.gradientEnd, gradientEnd) || other.gradientEnd == gradientEnd)&&(identical(other.gradientAngle, gradientAngle) || other.gradientAngle == gradientAngle)&&(identical(other.pageBgColor, pageBgColor) || other.pageBgColor == pageBgColor)&&(identical(other.primaryColor, primaryColor) || other.primaryColor == primaryColor)&&(identical(other.secondaryColor, secondaryColor) || other.secondaryColor == secondaryColor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gradientStart,gradientEnd,gradientAngle,pageBgColor,primaryColor,secondaryColor);

@override
String toString() {
  return 'DynamicTheme(gradientStart: $gradientStart, gradientEnd: $gradientEnd, gradientAngle: $gradientAngle, pageBgColor: $pageBgColor, primaryColor: $primaryColor, secondaryColor: $secondaryColor)';
}


}

/// @nodoc
abstract mixin class _$DynamicThemeCopyWith<$Res> implements $DynamicThemeCopyWith<$Res> {
  factory _$DynamicThemeCopyWith(_DynamicTheme value, $Res Function(_DynamicTheme) _then) = __$DynamicThemeCopyWithImpl;
@override @useResult
$Res call({
 String gradientStart, String gradientEnd, double gradientAngle, String pageBgColor, String primaryColor, String secondaryColor
});




}
/// @nodoc
class __$DynamicThemeCopyWithImpl<$Res>
    implements _$DynamicThemeCopyWith<$Res> {
  __$DynamicThemeCopyWithImpl(this._self, this._then);

  final _DynamicTheme _self;
  final $Res Function(_DynamicTheme) _then;

/// Create a copy of DynamicTheme
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gradientStart = null,Object? gradientEnd = null,Object? gradientAngle = null,Object? pageBgColor = null,Object? primaryColor = null,Object? secondaryColor = null,}) {
  return _then(_DynamicTheme(
gradientStart: null == gradientStart ? _self.gradientStart : gradientStart // ignore: cast_nullable_to_non_nullable
as String,gradientEnd: null == gradientEnd ? _self.gradientEnd : gradientEnd // ignore: cast_nullable_to_non_nullable
as String,gradientAngle: null == gradientAngle ? _self.gradientAngle : gradientAngle // ignore: cast_nullable_to_non_nullable
as double,pageBgColor: null == pageBgColor ? _self.pageBgColor : pageBgColor // ignore: cast_nullable_to_non_nullable
as String,primaryColor: null == primaryColor ? _self.primaryColor : primaryColor // ignore: cast_nullable_to_non_nullable
as String,secondaryColor: null == secondaryColor ? _self.secondaryColor : secondaryColor // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DynamicAction {

 String get type; String get value; String get url;
/// Create a copy of DynamicAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DynamicActionCopyWith<DynamicAction> get copyWith => _$DynamicActionCopyWithImpl<DynamicAction>(this as DynamicAction, _$identity);

  /// Serializes this DynamicAction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DynamicAction&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,value,url);

@override
String toString() {
  return 'DynamicAction(type: $type, value: $value, url: $url)';
}


}

/// @nodoc
abstract mixin class $DynamicActionCopyWith<$Res>  {
  factory $DynamicActionCopyWith(DynamicAction value, $Res Function(DynamicAction) _then) = _$DynamicActionCopyWithImpl;
@useResult
$Res call({
 String type, String value, String url
});




}
/// @nodoc
class _$DynamicActionCopyWithImpl<$Res>
    implements $DynamicActionCopyWith<$Res> {
  _$DynamicActionCopyWithImpl(this._self, this._then);

  final DynamicAction _self;
  final $Res Function(DynamicAction) _then;

/// Create a copy of DynamicAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? value = null,Object? url = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DynamicAction].
extension DynamicActionPatterns on DynamicAction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DynamicAction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DynamicAction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DynamicAction value)  $default,){
final _that = this;
switch (_that) {
case _DynamicAction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DynamicAction value)?  $default,){
final _that = this;
switch (_that) {
case _DynamicAction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String value,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DynamicAction() when $default != null:
return $default(_that.type,_that.value,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String value,  String url)  $default,) {final _that = this;
switch (_that) {
case _DynamicAction():
return $default(_that.type,_that.value,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String value,  String url)?  $default,) {final _that = this;
switch (_that) {
case _DynamicAction() when $default != null:
return $default(_that.type,_that.value,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DynamicAction implements DynamicAction {
  const _DynamicAction({this.type = 'NONE', this.value = '', this.url = ''});
  factory _DynamicAction.fromJson(Map<String, dynamic> json) => _$DynamicActionFromJson(json);

@override@JsonKey() final  String type;
@override@JsonKey() final  String value;
@override@JsonKey() final  String url;

/// Create a copy of DynamicAction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DynamicActionCopyWith<_DynamicAction> get copyWith => __$DynamicActionCopyWithImpl<_DynamicAction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DynamicActionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DynamicAction&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,value,url);

@override
String toString() {
  return 'DynamicAction(type: $type, value: $value, url: $url)';
}


}

/// @nodoc
abstract mixin class _$DynamicActionCopyWith<$Res> implements $DynamicActionCopyWith<$Res> {
  factory _$DynamicActionCopyWith(_DynamicAction value, $Res Function(_DynamicAction) _then) = __$DynamicActionCopyWithImpl;
@override @useResult
$Res call({
 String type, String value, String url
});




}
/// @nodoc
class __$DynamicActionCopyWithImpl<$Res>
    implements _$DynamicActionCopyWith<$Res> {
  __$DynamicActionCopyWithImpl(this._self, this._then);

  final _DynamicAction _self;
  final $Res Function(_DynamicAction) _then;

/// Create a copy of DynamicAction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? value = null,Object? url = null,}) {
  return _then(_DynamicAction(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DynamicBannerModel {

// image | gif | svg | html
 String get format; String get url; String get html;// Height in design px at 393 width; 0 = media aspect ratio.
 double get height; DynamicAction get action;
/// Create a copy of DynamicBannerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DynamicBannerModelCopyWith<DynamicBannerModel> get copyWith => _$DynamicBannerModelCopyWithImpl<DynamicBannerModel>(this as DynamicBannerModel, _$identity);

  /// Serializes this DynamicBannerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DynamicBannerModel&&(identical(other.format, format) || other.format == format)&&(identical(other.url, url) || other.url == url)&&(identical(other.html, html) || other.html == html)&&(identical(other.height, height) || other.height == height)&&(identical(other.action, action) || other.action == action));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,format,url,html,height,action);

@override
String toString() {
  return 'DynamicBannerModel(format: $format, url: $url, html: $html, height: $height, action: $action)';
}


}

/// @nodoc
abstract mixin class $DynamicBannerModelCopyWith<$Res>  {
  factory $DynamicBannerModelCopyWith(DynamicBannerModel value, $Res Function(DynamicBannerModel) _then) = _$DynamicBannerModelCopyWithImpl;
@useResult
$Res call({
 String format, String url, String html, double height, DynamicAction action
});


$DynamicActionCopyWith<$Res> get action;

}
/// @nodoc
class _$DynamicBannerModelCopyWithImpl<$Res>
    implements $DynamicBannerModelCopyWith<$Res> {
  _$DynamicBannerModelCopyWithImpl(this._self, this._then);

  final DynamicBannerModel _self;
  final $Res Function(DynamicBannerModel) _then;

/// Create a copy of DynamicBannerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? format = null,Object? url = null,Object? html = null,Object? height = null,Object? action = null,}) {
  return _then(_self.copyWith(
format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,html: null == html ? _self.html : html // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as DynamicAction,
  ));
}
/// Create a copy of DynamicBannerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicActionCopyWith<$Res> get action {
  
  return $DynamicActionCopyWith<$Res>(_self.action, (value) {
    return _then(_self.copyWith(action: value));
  });
}
}


/// Adds pattern-matching-related methods to [DynamicBannerModel].
extension DynamicBannerModelPatterns on DynamicBannerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DynamicBannerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DynamicBannerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DynamicBannerModel value)  $default,){
final _that = this;
switch (_that) {
case _DynamicBannerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DynamicBannerModel value)?  $default,){
final _that = this;
switch (_that) {
case _DynamicBannerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String format,  String url,  String html,  double height,  DynamicAction action)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DynamicBannerModel() when $default != null:
return $default(_that.format,_that.url,_that.html,_that.height,_that.action);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String format,  String url,  String html,  double height,  DynamicAction action)  $default,) {final _that = this;
switch (_that) {
case _DynamicBannerModel():
return $default(_that.format,_that.url,_that.html,_that.height,_that.action);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String format,  String url,  String html,  double height,  DynamicAction action)?  $default,) {final _that = this;
switch (_that) {
case _DynamicBannerModel() when $default != null:
return $default(_that.format,_that.url,_that.html,_that.height,_that.action);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DynamicBannerModel implements DynamicBannerModel {
  const _DynamicBannerModel({this.format = 'image', this.url = '', this.html = '', this.height = 0, this.action = const DynamicAction()});
  factory _DynamicBannerModel.fromJson(Map<String, dynamic> json) => _$DynamicBannerModelFromJson(json);

// image | gif | svg | html
@override@JsonKey() final  String format;
@override@JsonKey() final  String url;
@override@JsonKey() final  String html;
// Height in design px at 393 width; 0 = media aspect ratio.
@override@JsonKey() final  double height;
@override@JsonKey() final  DynamicAction action;

/// Create a copy of DynamicBannerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DynamicBannerModelCopyWith<_DynamicBannerModel> get copyWith => __$DynamicBannerModelCopyWithImpl<_DynamicBannerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DynamicBannerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DynamicBannerModel&&(identical(other.format, format) || other.format == format)&&(identical(other.url, url) || other.url == url)&&(identical(other.html, html) || other.html == html)&&(identical(other.height, height) || other.height == height)&&(identical(other.action, action) || other.action == action));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,format,url,html,height,action);

@override
String toString() {
  return 'DynamicBannerModel(format: $format, url: $url, html: $html, height: $height, action: $action)';
}


}

/// @nodoc
abstract mixin class _$DynamicBannerModelCopyWith<$Res> implements $DynamicBannerModelCopyWith<$Res> {
  factory _$DynamicBannerModelCopyWith(_DynamicBannerModel value, $Res Function(_DynamicBannerModel) _then) = __$DynamicBannerModelCopyWithImpl;
@override @useResult
$Res call({
 String format, String url, String html, double height, DynamicAction action
});


@override $DynamicActionCopyWith<$Res> get action;

}
/// @nodoc
class __$DynamicBannerModelCopyWithImpl<$Res>
    implements _$DynamicBannerModelCopyWith<$Res> {
  __$DynamicBannerModelCopyWithImpl(this._self, this._then);

  final _DynamicBannerModel _self;
  final $Res Function(_DynamicBannerModel) _then;

/// Create a copy of DynamicBannerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? format = null,Object? url = null,Object? html = null,Object? height = null,Object? action = null,}) {
  return _then(_DynamicBannerModel(
format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,html: null == html ? _self.html : html // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as DynamicAction,
  ));
}

/// Create a copy of DynamicBannerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicActionCopyWith<$Res> get action {
  
  return $DynamicActionCopyWith<$Res>(_self.action, (value) {
    return _then(_self.copyWith(action: value));
  });
}
}


/// @nodoc
mixin _$DynamicPageResponse {

 bool get success; DynamicPageModel? get data;
/// Create a copy of DynamicPageResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DynamicPageResponseCopyWith<DynamicPageResponse> get copyWith => _$DynamicPageResponseCopyWithImpl<DynamicPageResponse>(this as DynamicPageResponse, _$identity);

  /// Serializes this DynamicPageResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DynamicPageResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'DynamicPageResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $DynamicPageResponseCopyWith<$Res>  {
  factory $DynamicPageResponseCopyWith(DynamicPageResponse value, $Res Function(DynamicPageResponse) _then) = _$DynamicPageResponseCopyWithImpl;
@useResult
$Res call({
 bool success, DynamicPageModel? data
});


$DynamicPageModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$DynamicPageResponseCopyWithImpl<$Res>
    implements $DynamicPageResponseCopyWith<$Res> {
  _$DynamicPageResponseCopyWithImpl(this._self, this._then);

  final DynamicPageResponse _self;
  final $Res Function(DynamicPageResponse) _then;

/// Create a copy of DynamicPageResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DynamicPageModel?,
  ));
}
/// Create a copy of DynamicPageResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicPageModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DynamicPageModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [DynamicPageResponse].
extension DynamicPageResponsePatterns on DynamicPageResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DynamicPageResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DynamicPageResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DynamicPageResponse value)  $default,){
final _that = this;
switch (_that) {
case _DynamicPageResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DynamicPageResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DynamicPageResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  DynamicPageModel? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DynamicPageResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  DynamicPageModel? data)  $default,) {final _that = this;
switch (_that) {
case _DynamicPageResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  DynamicPageModel? data)?  $default,) {final _that = this;
switch (_that) {
case _DynamicPageResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DynamicPageResponse implements DynamicPageResponse {
  const _DynamicPageResponse({this.success = false, this.data});
  factory _DynamicPageResponse.fromJson(Map<String, dynamic> json) => _$DynamicPageResponseFromJson(json);

@override@JsonKey() final  bool success;
@override final  DynamicPageModel? data;

/// Create a copy of DynamicPageResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DynamicPageResponseCopyWith<_DynamicPageResponse> get copyWith => __$DynamicPageResponseCopyWithImpl<_DynamicPageResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DynamicPageResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DynamicPageResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'DynamicPageResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$DynamicPageResponseCopyWith<$Res> implements $DynamicPageResponseCopyWith<$Res> {
  factory _$DynamicPageResponseCopyWith(_DynamicPageResponse value, $Res Function(_DynamicPageResponse) _then) = __$DynamicPageResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, DynamicPageModel? data
});


@override $DynamicPageModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$DynamicPageResponseCopyWithImpl<$Res>
    implements _$DynamicPageResponseCopyWith<$Res> {
  __$DynamicPageResponseCopyWithImpl(this._self, this._then);

  final _DynamicPageResponse _self;
  final $Res Function(_DynamicPageResponse) _then;

/// Create a copy of DynamicPageResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = freezed,}) {
  return _then(_DynamicPageResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DynamicPageModel?,
  ));
}

/// Create a copy of DynamicPageResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicPageModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DynamicPageModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$DynamicPageModel {

 String get slug; String get title; DynamicTheme? get theme; DynamicBannerModel? get banner;// Card image used where the page is listed (Festival & Event).
 DynamicMedia? get image; List<String> get tags; String get festivalSlug; String get festivalDate; List<DynamicSectionModel> get sections;
/// Create a copy of DynamicPageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DynamicPageModelCopyWith<DynamicPageModel> get copyWith => _$DynamicPageModelCopyWithImpl<DynamicPageModel>(this as DynamicPageModel, _$identity);

  /// Serializes this DynamicPageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DynamicPageModel&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.title, title) || other.title == title)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.festivalSlug, festivalSlug) || other.festivalSlug == festivalSlug)&&(identical(other.festivalDate, festivalDate) || other.festivalDate == festivalDate)&&const DeepCollectionEquality().equals(other.sections, sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,title,theme,banner,image,const DeepCollectionEquality().hash(tags),festivalSlug,festivalDate,const DeepCollectionEquality().hash(sections));

@override
String toString() {
  return 'DynamicPageModel(slug: $slug, title: $title, theme: $theme, banner: $banner, image: $image, tags: $tags, festivalSlug: $festivalSlug, festivalDate: $festivalDate, sections: $sections)';
}


}

/// @nodoc
abstract mixin class $DynamicPageModelCopyWith<$Res>  {
  factory $DynamicPageModelCopyWith(DynamicPageModel value, $Res Function(DynamicPageModel) _then) = _$DynamicPageModelCopyWithImpl;
@useResult
$Res call({
 String slug, String title, DynamicTheme? theme, DynamicBannerModel? banner, DynamicMedia? image, List<String> tags, String festivalSlug, String festivalDate, List<DynamicSectionModel> sections
});


$DynamicThemeCopyWith<$Res>? get theme;$DynamicBannerModelCopyWith<$Res>? get banner;$DynamicMediaCopyWith<$Res>? get image;

}
/// @nodoc
class _$DynamicPageModelCopyWithImpl<$Res>
    implements $DynamicPageModelCopyWith<$Res> {
  _$DynamicPageModelCopyWithImpl(this._self, this._then);

  final DynamicPageModel _self;
  final $Res Function(DynamicPageModel) _then;

/// Create a copy of DynamicPageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? title = null,Object? theme = freezed,Object? banner = freezed,Object? image = freezed,Object? tags = null,Object? festivalSlug = null,Object? festivalDate = null,Object? sections = null,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,theme: freezed == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as DynamicTheme?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as DynamicBannerModel?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as DynamicMedia?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,festivalSlug: null == festivalSlug ? _self.festivalSlug : festivalSlug // ignore: cast_nullable_to_non_nullable
as String,festivalDate: null == festivalDate ? _self.festivalDate : festivalDate // ignore: cast_nullable_to_non_nullable
as String,sections: null == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<DynamicSectionModel>,
  ));
}
/// Create a copy of DynamicPageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicThemeCopyWith<$Res>? get theme {
    if (_self.theme == null) {
    return null;
  }

  return $DynamicThemeCopyWith<$Res>(_self.theme!, (value) {
    return _then(_self.copyWith(theme: value));
  });
}/// Create a copy of DynamicPageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicBannerModelCopyWith<$Res>? get banner {
    if (_self.banner == null) {
    return null;
  }

  return $DynamicBannerModelCopyWith<$Res>(_self.banner!, (value) {
    return _then(_self.copyWith(banner: value));
  });
}/// Create a copy of DynamicPageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicMediaCopyWith<$Res>? get image {
    if (_self.image == null) {
    return null;
  }

  return $DynamicMediaCopyWith<$Res>(_self.image!, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}


/// Adds pattern-matching-related methods to [DynamicPageModel].
extension DynamicPageModelPatterns on DynamicPageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DynamicPageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DynamicPageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DynamicPageModel value)  $default,){
final _that = this;
switch (_that) {
case _DynamicPageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DynamicPageModel value)?  $default,){
final _that = this;
switch (_that) {
case _DynamicPageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  String title,  DynamicTheme? theme,  DynamicBannerModel? banner,  DynamicMedia? image,  List<String> tags,  String festivalSlug,  String festivalDate,  List<DynamicSectionModel> sections)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DynamicPageModel() when $default != null:
return $default(_that.slug,_that.title,_that.theme,_that.banner,_that.image,_that.tags,_that.festivalSlug,_that.festivalDate,_that.sections);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  String title,  DynamicTheme? theme,  DynamicBannerModel? banner,  DynamicMedia? image,  List<String> tags,  String festivalSlug,  String festivalDate,  List<DynamicSectionModel> sections)  $default,) {final _that = this;
switch (_that) {
case _DynamicPageModel():
return $default(_that.slug,_that.title,_that.theme,_that.banner,_that.image,_that.tags,_that.festivalSlug,_that.festivalDate,_that.sections);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  String title,  DynamicTheme? theme,  DynamicBannerModel? banner,  DynamicMedia? image,  List<String> tags,  String festivalSlug,  String festivalDate,  List<DynamicSectionModel> sections)?  $default,) {final _that = this;
switch (_that) {
case _DynamicPageModel() when $default != null:
return $default(_that.slug,_that.title,_that.theme,_that.banner,_that.image,_that.tags,_that.festivalSlug,_that.festivalDate,_that.sections);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DynamicPageModel implements DynamicPageModel {
  const _DynamicPageModel({this.slug = '', this.title = '', this.theme, this.banner, this.image, final  List<String> tags = const [], this.festivalSlug = '', this.festivalDate = '', final  List<DynamicSectionModel> sections = const []}): _tags = tags,_sections = sections;
  factory _DynamicPageModel.fromJson(Map<String, dynamic> json) => _$DynamicPageModelFromJson(json);

@override@JsonKey() final  String slug;
@override@JsonKey() final  String title;
@override final  DynamicTheme? theme;
@override final  DynamicBannerModel? banner;
// Card image used where the page is listed (Festival & Event).
@override final  DynamicMedia? image;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override@JsonKey() final  String festivalSlug;
@override@JsonKey() final  String festivalDate;
 final  List<DynamicSectionModel> _sections;
@override@JsonKey() List<DynamicSectionModel> get sections {
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sections);
}


/// Create a copy of DynamicPageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DynamicPageModelCopyWith<_DynamicPageModel> get copyWith => __$DynamicPageModelCopyWithImpl<_DynamicPageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DynamicPageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DynamicPageModel&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.title, title) || other.title == title)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.festivalSlug, festivalSlug) || other.festivalSlug == festivalSlug)&&(identical(other.festivalDate, festivalDate) || other.festivalDate == festivalDate)&&const DeepCollectionEquality().equals(other._sections, _sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,title,theme,banner,image,const DeepCollectionEquality().hash(_tags),festivalSlug,festivalDate,const DeepCollectionEquality().hash(_sections));

@override
String toString() {
  return 'DynamicPageModel(slug: $slug, title: $title, theme: $theme, banner: $banner, image: $image, tags: $tags, festivalSlug: $festivalSlug, festivalDate: $festivalDate, sections: $sections)';
}


}

/// @nodoc
abstract mixin class _$DynamicPageModelCopyWith<$Res> implements $DynamicPageModelCopyWith<$Res> {
  factory _$DynamicPageModelCopyWith(_DynamicPageModel value, $Res Function(_DynamicPageModel) _then) = __$DynamicPageModelCopyWithImpl;
@override @useResult
$Res call({
 String slug, String title, DynamicTheme? theme, DynamicBannerModel? banner, DynamicMedia? image, List<String> tags, String festivalSlug, String festivalDate, List<DynamicSectionModel> sections
});


@override $DynamicThemeCopyWith<$Res>? get theme;@override $DynamicBannerModelCopyWith<$Res>? get banner;@override $DynamicMediaCopyWith<$Res>? get image;

}
/// @nodoc
class __$DynamicPageModelCopyWithImpl<$Res>
    implements _$DynamicPageModelCopyWith<$Res> {
  __$DynamicPageModelCopyWithImpl(this._self, this._then);

  final _DynamicPageModel _self;
  final $Res Function(_DynamicPageModel) _then;

/// Create a copy of DynamicPageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? title = null,Object? theme = freezed,Object? banner = freezed,Object? image = freezed,Object? tags = null,Object? festivalSlug = null,Object? festivalDate = null,Object? sections = null,}) {
  return _then(_DynamicPageModel(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,theme: freezed == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as DynamicTheme?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as DynamicBannerModel?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as DynamicMedia?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,festivalSlug: null == festivalSlug ? _self.festivalSlug : festivalSlug // ignore: cast_nullable_to_non_nullable
as String,festivalDate: null == festivalDate ? _self.festivalDate : festivalDate // ignore: cast_nullable_to_non_nullable
as String,sections: null == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<DynamicSectionModel>,
  ));
}

/// Create a copy of DynamicPageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicThemeCopyWith<$Res>? get theme {
    if (_self.theme == null) {
    return null;
  }

  return $DynamicThemeCopyWith<$Res>(_self.theme!, (value) {
    return _then(_self.copyWith(theme: value));
  });
}/// Create a copy of DynamicPageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicBannerModelCopyWith<$Res>? get banner {
    if (_self.banner == null) {
    return null;
  }

  return $DynamicBannerModelCopyWith<$Res>(_self.banner!, (value) {
    return _then(_self.copyWith(banner: value));
  });
}/// Create a copy of DynamicPageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicMediaCopyWith<$Res>? get image {
    if (_self.image == null) {
    return null;
  }

  return $DynamicMediaCopyWith<$Res>(_self.image!, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}


/// @nodoc
mixin _$PageTagModel {

 String get key; String get name;// #RRGGBB or empty
 String get color;
/// Create a copy of PageTagModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PageTagModelCopyWith<PageTagModel> get copyWith => _$PageTagModelCopyWithImpl<PageTagModel>(this as PageTagModel, _$identity);

  /// Serializes this PageTagModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PageTagModel&&(identical(other.key, key) || other.key == key)&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,name,color);

@override
String toString() {
  return 'PageTagModel(key: $key, name: $name, color: $color)';
}


}

/// @nodoc
abstract mixin class $PageTagModelCopyWith<$Res>  {
  factory $PageTagModelCopyWith(PageTagModel value, $Res Function(PageTagModel) _then) = _$PageTagModelCopyWithImpl;
@useResult
$Res call({
 String key, String name, String color
});




}
/// @nodoc
class _$PageTagModelCopyWithImpl<$Res>
    implements $PageTagModelCopyWith<$Res> {
  _$PageTagModelCopyWithImpl(this._self, this._then);

  final PageTagModel _self;
  final $Res Function(PageTagModel) _then;

/// Create a copy of PageTagModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? name = null,Object? color = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PageTagModel].
extension PageTagModelPatterns on PageTagModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PageTagModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PageTagModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PageTagModel value)  $default,){
final _that = this;
switch (_that) {
case _PageTagModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PageTagModel value)?  $default,){
final _that = this;
switch (_that) {
case _PageTagModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  String name,  String color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PageTagModel() when $default != null:
return $default(_that.key,_that.name,_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  String name,  String color)  $default,) {final _that = this;
switch (_that) {
case _PageTagModel():
return $default(_that.key,_that.name,_that.color);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  String name,  String color)?  $default,) {final _that = this;
switch (_that) {
case _PageTagModel() when $default != null:
return $default(_that.key,_that.name,_that.color);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PageTagModel implements PageTagModel {
  const _PageTagModel({this.key = '', this.name = '', this.color = ''});
  factory _PageTagModel.fromJson(Map<String, dynamic> json) => _$PageTagModelFromJson(json);

@override@JsonKey() final  String key;
@override@JsonKey() final  String name;
// #RRGGBB or empty
@override@JsonKey() final  String color;

/// Create a copy of PageTagModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageTagModelCopyWith<_PageTagModel> get copyWith => __$PageTagModelCopyWithImpl<_PageTagModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PageTagModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PageTagModel&&(identical(other.key, key) || other.key == key)&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,name,color);

@override
String toString() {
  return 'PageTagModel(key: $key, name: $name, color: $color)';
}


}

/// @nodoc
abstract mixin class _$PageTagModelCopyWith<$Res> implements $PageTagModelCopyWith<$Res> {
  factory _$PageTagModelCopyWith(_PageTagModel value, $Res Function(_PageTagModel) _then) = __$PageTagModelCopyWithImpl;
@override @useResult
$Res call({
 String key, String name, String color
});




}
/// @nodoc
class __$PageTagModelCopyWithImpl<$Res>
    implements _$PageTagModelCopyWith<$Res> {
  __$PageTagModelCopyWithImpl(this._self, this._then);

  final _PageTagModel _self;
  final $Res Function(_PageTagModel) _then;

/// Create a copy of PageTagModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? name = null,Object? color = null,}) {
  return _then(_PageTagModel(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PageTagListResponse {

 bool get success; List<PageTagModel> get data;
/// Create a copy of PageTagListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PageTagListResponseCopyWith<PageTagListResponse> get copyWith => _$PageTagListResponseCopyWithImpl<PageTagListResponse>(this as PageTagListResponse, _$identity);

  /// Serializes this PageTagListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PageTagListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'PageTagListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $PageTagListResponseCopyWith<$Res>  {
  factory $PageTagListResponseCopyWith(PageTagListResponse value, $Res Function(PageTagListResponse) _then) = _$PageTagListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, List<PageTagModel> data
});




}
/// @nodoc
class _$PageTagListResponseCopyWithImpl<$Res>
    implements $PageTagListResponseCopyWith<$Res> {
  _$PageTagListResponseCopyWithImpl(this._self, this._then);

  final PageTagListResponse _self;
  final $Res Function(PageTagListResponse) _then;

/// Create a copy of PageTagListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<PageTagModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [PageTagListResponse].
extension PageTagListResponsePatterns on PageTagListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PageTagListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PageTagListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PageTagListResponse value)  $default,){
final _that = this;
switch (_that) {
case _PageTagListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PageTagListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PageTagListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<PageTagModel> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PageTagListResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<PageTagModel> data)  $default,) {final _that = this;
switch (_that) {
case _PageTagListResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<PageTagModel> data)?  $default,) {final _that = this;
switch (_that) {
case _PageTagListResponse() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PageTagListResponse implements PageTagListResponse {
  const _PageTagListResponse({this.success = false, final  List<PageTagModel> data = const []}): _data = data;
  factory _PageTagListResponse.fromJson(Map<String, dynamic> json) => _$PageTagListResponseFromJson(json);

@override@JsonKey() final  bool success;
 final  List<PageTagModel> _data;
@override@JsonKey() List<PageTagModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of PageTagListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageTagListResponseCopyWith<_PageTagListResponse> get copyWith => __$PageTagListResponseCopyWithImpl<_PageTagListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PageTagListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PageTagListResponse&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'PageTagListResponse(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$PageTagListResponseCopyWith<$Res> implements $PageTagListResponseCopyWith<$Res> {
  factory _$PageTagListResponseCopyWith(_PageTagListResponse value, $Res Function(_PageTagListResponse) _then) = __$PageTagListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<PageTagModel> data
});




}
/// @nodoc
class __$PageTagListResponseCopyWithImpl<$Res>
    implements _$PageTagListResponseCopyWith<$Res> {
  __$PageTagListResponseCopyWithImpl(this._self, this._then);

  final _PageTagListResponse _self;
  final $Res Function(_PageTagListResponse) _then;

/// Create a copy of PageTagListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_PageTagListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<PageTagModel>,
  ));
}


}


/// @nodoc
mixin _$PageListItemModel {

 String get slug; String get title; DynamicMedia? get image; List<String> get tags; bool get isFeatured;// YYYY-MM-DD; empty when the page has no festival date.
 String get festivalDate; int? get daysLeft;
/// Create a copy of PageListItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PageListItemModelCopyWith<PageListItemModel> get copyWith => _$PageListItemModelCopyWithImpl<PageListItemModel>(this as PageListItemModel, _$identity);

  /// Serializes this PageListItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PageListItemModel&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.title, title) || other.title == title)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.festivalDate, festivalDate) || other.festivalDate == festivalDate)&&(identical(other.daysLeft, daysLeft) || other.daysLeft == daysLeft));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,title,image,const DeepCollectionEquality().hash(tags),isFeatured,festivalDate,daysLeft);

@override
String toString() {
  return 'PageListItemModel(slug: $slug, title: $title, image: $image, tags: $tags, isFeatured: $isFeatured, festivalDate: $festivalDate, daysLeft: $daysLeft)';
}


}

/// @nodoc
abstract mixin class $PageListItemModelCopyWith<$Res>  {
  factory $PageListItemModelCopyWith(PageListItemModel value, $Res Function(PageListItemModel) _then) = _$PageListItemModelCopyWithImpl;
@useResult
$Res call({
 String slug, String title, DynamicMedia? image, List<String> tags, bool isFeatured, String festivalDate, int? daysLeft
});


$DynamicMediaCopyWith<$Res>? get image;

}
/// @nodoc
class _$PageListItemModelCopyWithImpl<$Res>
    implements $PageListItemModelCopyWith<$Res> {
  _$PageListItemModelCopyWithImpl(this._self, this._then);

  final PageListItemModel _self;
  final $Res Function(PageListItemModel) _then;

/// Create a copy of PageListItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? title = null,Object? image = freezed,Object? tags = null,Object? isFeatured = null,Object? festivalDate = null,Object? daysLeft = freezed,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as DynamicMedia?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,isFeatured: null == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool,festivalDate: null == festivalDate ? _self.festivalDate : festivalDate // ignore: cast_nullable_to_non_nullable
as String,daysLeft: freezed == daysLeft ? _self.daysLeft : daysLeft // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of PageListItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicMediaCopyWith<$Res>? get image {
    if (_self.image == null) {
    return null;
  }

  return $DynamicMediaCopyWith<$Res>(_self.image!, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}


/// Adds pattern-matching-related methods to [PageListItemModel].
extension PageListItemModelPatterns on PageListItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PageListItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PageListItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PageListItemModel value)  $default,){
final _that = this;
switch (_that) {
case _PageListItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PageListItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _PageListItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  String title,  DynamicMedia? image,  List<String> tags,  bool isFeatured,  String festivalDate,  int? daysLeft)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PageListItemModel() when $default != null:
return $default(_that.slug,_that.title,_that.image,_that.tags,_that.isFeatured,_that.festivalDate,_that.daysLeft);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  String title,  DynamicMedia? image,  List<String> tags,  bool isFeatured,  String festivalDate,  int? daysLeft)  $default,) {final _that = this;
switch (_that) {
case _PageListItemModel():
return $default(_that.slug,_that.title,_that.image,_that.tags,_that.isFeatured,_that.festivalDate,_that.daysLeft);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  String title,  DynamicMedia? image,  List<String> tags,  bool isFeatured,  String festivalDate,  int? daysLeft)?  $default,) {final _that = this;
switch (_that) {
case _PageListItemModel() when $default != null:
return $default(_that.slug,_that.title,_that.image,_that.tags,_that.isFeatured,_that.festivalDate,_that.daysLeft);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PageListItemModel implements PageListItemModel {
  const _PageListItemModel({this.slug = '', this.title = '', this.image, final  List<String> tags = const [], this.isFeatured = false, this.festivalDate = '', this.daysLeft}): _tags = tags;
  factory _PageListItemModel.fromJson(Map<String, dynamic> json) => _$PageListItemModelFromJson(json);

@override@JsonKey() final  String slug;
@override@JsonKey() final  String title;
@override final  DynamicMedia? image;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override@JsonKey() final  bool isFeatured;
// YYYY-MM-DD; empty when the page has no festival date.
@override@JsonKey() final  String festivalDate;
@override final  int? daysLeft;

/// Create a copy of PageListItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageListItemModelCopyWith<_PageListItemModel> get copyWith => __$PageListItemModelCopyWithImpl<_PageListItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PageListItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PageListItemModel&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.title, title) || other.title == title)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.festivalDate, festivalDate) || other.festivalDate == festivalDate)&&(identical(other.daysLeft, daysLeft) || other.daysLeft == daysLeft));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,title,image,const DeepCollectionEquality().hash(_tags),isFeatured,festivalDate,daysLeft);

@override
String toString() {
  return 'PageListItemModel(slug: $slug, title: $title, image: $image, tags: $tags, isFeatured: $isFeatured, festivalDate: $festivalDate, daysLeft: $daysLeft)';
}


}

/// @nodoc
abstract mixin class _$PageListItemModelCopyWith<$Res> implements $PageListItemModelCopyWith<$Res> {
  factory _$PageListItemModelCopyWith(_PageListItemModel value, $Res Function(_PageListItemModel) _then) = __$PageListItemModelCopyWithImpl;
@override @useResult
$Res call({
 String slug, String title, DynamicMedia? image, List<String> tags, bool isFeatured, String festivalDate, int? daysLeft
});


@override $DynamicMediaCopyWith<$Res>? get image;

}
/// @nodoc
class __$PageListItemModelCopyWithImpl<$Res>
    implements _$PageListItemModelCopyWith<$Res> {
  __$PageListItemModelCopyWithImpl(this._self, this._then);

  final _PageListItemModel _self;
  final $Res Function(_PageListItemModel) _then;

/// Create a copy of PageListItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? title = null,Object? image = freezed,Object? tags = null,Object? isFeatured = null,Object? festivalDate = null,Object? daysLeft = freezed,}) {
  return _then(_PageListItemModel(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as DynamicMedia?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,isFeatured: null == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool,festivalDate: null == festivalDate ? _self.festivalDate : festivalDate // ignore: cast_nullable_to_non_nullable
as String,daysLeft: freezed == daysLeft ? _self.daysLeft : daysLeft // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of PageListItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicMediaCopyWith<$Res>? get image {
    if (_self.image == null) {
    return null;
  }

  return $DynamicMediaCopyWith<$Res>(_self.image!, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}


/// @nodoc
mixin _$PageListResponse {

 bool get success;// Year listing only: server is still fetching some dates → ask again shortly.
 bool get pending; PageListItemModel? get featured; List<PageListItemModel> get data;
/// Create a copy of PageListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PageListResponseCopyWith<PageListResponse> get copyWith => _$PageListResponseCopyWithImpl<PageListResponse>(this as PageListResponse, _$identity);

  /// Serializes this PageListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PageListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.featured, featured) || other.featured == featured)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,pending,featured,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'PageListResponse(success: $success, pending: $pending, featured: $featured, data: $data)';
}


}

/// @nodoc
abstract mixin class $PageListResponseCopyWith<$Res>  {
  factory $PageListResponseCopyWith(PageListResponse value, $Res Function(PageListResponse) _then) = _$PageListResponseCopyWithImpl;
@useResult
$Res call({
 bool success, bool pending, PageListItemModel? featured, List<PageListItemModel> data
});


$PageListItemModelCopyWith<$Res>? get featured;

}
/// @nodoc
class _$PageListResponseCopyWithImpl<$Res>
    implements $PageListResponseCopyWith<$Res> {
  _$PageListResponseCopyWithImpl(this._self, this._then);

  final PageListResponse _self;
  final $Res Function(PageListResponse) _then;

/// Create a copy of PageListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? pending = null,Object? featured = freezed,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as bool,featured: freezed == featured ? _self.featured : featured // ignore: cast_nullable_to_non_nullable
as PageListItemModel?,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<PageListItemModel>,
  ));
}
/// Create a copy of PageListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PageListItemModelCopyWith<$Res>? get featured {
    if (_self.featured == null) {
    return null;
  }

  return $PageListItemModelCopyWith<$Res>(_self.featured!, (value) {
    return _then(_self.copyWith(featured: value));
  });
}
}


/// Adds pattern-matching-related methods to [PageListResponse].
extension PageListResponsePatterns on PageListResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PageListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PageListResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PageListResponse value)  $default,){
final _that = this;
switch (_that) {
case _PageListResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PageListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PageListResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  bool pending,  PageListItemModel? featured,  List<PageListItemModel> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PageListResponse() when $default != null:
return $default(_that.success,_that.pending,_that.featured,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  bool pending,  PageListItemModel? featured,  List<PageListItemModel> data)  $default,) {final _that = this;
switch (_that) {
case _PageListResponse():
return $default(_that.success,_that.pending,_that.featured,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  bool pending,  PageListItemModel? featured,  List<PageListItemModel> data)?  $default,) {final _that = this;
switch (_that) {
case _PageListResponse() when $default != null:
return $default(_that.success,_that.pending,_that.featured,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PageListResponse implements PageListResponse {
  const _PageListResponse({this.success = false, this.pending = false, this.featured, final  List<PageListItemModel> data = const []}): _data = data;
  factory _PageListResponse.fromJson(Map<String, dynamic> json) => _$PageListResponseFromJson(json);

@override@JsonKey() final  bool success;
// Year listing only: server is still fetching some dates → ask again shortly.
@override@JsonKey() final  bool pending;
@override final  PageListItemModel? featured;
 final  List<PageListItemModel> _data;
@override@JsonKey() List<PageListItemModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of PageListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageListResponseCopyWith<_PageListResponse> get copyWith => __$PageListResponseCopyWithImpl<_PageListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PageListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PageListResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.featured, featured) || other.featured == featured)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,pending,featured,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'PageListResponse(success: $success, pending: $pending, featured: $featured, data: $data)';
}


}

/// @nodoc
abstract mixin class _$PageListResponseCopyWith<$Res> implements $PageListResponseCopyWith<$Res> {
  factory _$PageListResponseCopyWith(_PageListResponse value, $Res Function(_PageListResponse) _then) = __$PageListResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, bool pending, PageListItemModel? featured, List<PageListItemModel> data
});


@override $PageListItemModelCopyWith<$Res>? get featured;

}
/// @nodoc
class __$PageListResponseCopyWithImpl<$Res>
    implements _$PageListResponseCopyWith<$Res> {
  __$PageListResponseCopyWithImpl(this._self, this._then);

  final _PageListResponse _self;
  final $Res Function(_PageListResponse) _then;

/// Create a copy of PageListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? pending = null,Object? featured = freezed,Object? data = null,}) {
  return _then(_PageListResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as bool,featured: freezed == featured ? _self.featured : featured // ignore: cast_nullable_to_non_nullable
as PageListItemModel?,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<PageListItemModel>,
  ));
}

/// Create a copy of PageListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PageListItemModelCopyWith<$Res>? get featured {
    if (_self.featured == null) {
    return null;
  }

  return $PageListItemModelCopyWith<$Res>(_self.featured!, (value) {
    return _then(_self.copyWith(featured: value));
  });
}
}


/// @nodoc
mixin _$DynamicSectionModel {

 String get id; String get type; String get title; bool get showOrnament;// Per-type settings, already localized by the server.
 Map<String, dynamic> get config; DynamicBannerModel? get banner; List<DynamicItemModel> get items;
/// Create a copy of DynamicSectionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DynamicSectionModelCopyWith<DynamicSectionModel> get copyWith => _$DynamicSectionModelCopyWithImpl<DynamicSectionModel>(this as DynamicSectionModel, _$identity);

  /// Serializes this DynamicSectionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DynamicSectionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.showOrnament, showOrnament) || other.showOrnament == showOrnament)&&const DeepCollectionEquality().equals(other.config, config)&&(identical(other.banner, banner) || other.banner == banner)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,title,showOrnament,const DeepCollectionEquality().hash(config),banner,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'DynamicSectionModel(id: $id, type: $type, title: $title, showOrnament: $showOrnament, config: $config, banner: $banner, items: $items)';
}


}

/// @nodoc
abstract mixin class $DynamicSectionModelCopyWith<$Res>  {
  factory $DynamicSectionModelCopyWith(DynamicSectionModel value, $Res Function(DynamicSectionModel) _then) = _$DynamicSectionModelCopyWithImpl;
@useResult
$Res call({
 String id, String type, String title, bool showOrnament, Map<String, dynamic> config, DynamicBannerModel? banner, List<DynamicItemModel> items
});


$DynamicBannerModelCopyWith<$Res>? get banner;

}
/// @nodoc
class _$DynamicSectionModelCopyWithImpl<$Res>
    implements $DynamicSectionModelCopyWith<$Res> {
  _$DynamicSectionModelCopyWithImpl(this._self, this._then);

  final DynamicSectionModel _self;
  final $Res Function(DynamicSectionModel) _then;

/// Create a copy of DynamicSectionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? title = null,Object? showOrnament = null,Object? config = null,Object? banner = freezed,Object? items = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,showOrnament: null == showOrnament ? _self.showOrnament : showOrnament // ignore: cast_nullable_to_non_nullable
as bool,config: null == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as DynamicBannerModel?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<DynamicItemModel>,
  ));
}
/// Create a copy of DynamicSectionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicBannerModelCopyWith<$Res>? get banner {
    if (_self.banner == null) {
    return null;
  }

  return $DynamicBannerModelCopyWith<$Res>(_self.banner!, (value) {
    return _then(_self.copyWith(banner: value));
  });
}
}


/// Adds pattern-matching-related methods to [DynamicSectionModel].
extension DynamicSectionModelPatterns on DynamicSectionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DynamicSectionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DynamicSectionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DynamicSectionModel value)  $default,){
final _that = this;
switch (_that) {
case _DynamicSectionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DynamicSectionModel value)?  $default,){
final _that = this;
switch (_that) {
case _DynamicSectionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type,  String title,  bool showOrnament,  Map<String, dynamic> config,  DynamicBannerModel? banner,  List<DynamicItemModel> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DynamicSectionModel() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.showOrnament,_that.config,_that.banner,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type,  String title,  bool showOrnament,  Map<String, dynamic> config,  DynamicBannerModel? banner,  List<DynamicItemModel> items)  $default,) {final _that = this;
switch (_that) {
case _DynamicSectionModel():
return $default(_that.id,_that.type,_that.title,_that.showOrnament,_that.config,_that.banner,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type,  String title,  bool showOrnament,  Map<String, dynamic> config,  DynamicBannerModel? banner,  List<DynamicItemModel> items)?  $default,) {final _that = this;
switch (_that) {
case _DynamicSectionModel() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.showOrnament,_that.config,_that.banner,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DynamicSectionModel implements DynamicSectionModel {
  const _DynamicSectionModel({this.id = '', this.type = '', this.title = '', this.showOrnament = true, final  Map<String, dynamic> config = const {}, this.banner, final  List<DynamicItemModel> items = const []}): _config = config,_items = items;
  factory _DynamicSectionModel.fromJson(Map<String, dynamic> json) => _$DynamicSectionModelFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String type;
@override@JsonKey() final  String title;
@override@JsonKey() final  bool showOrnament;
// Per-type settings, already localized by the server.
 final  Map<String, dynamic> _config;
// Per-type settings, already localized by the server.
@override@JsonKey() Map<String, dynamic> get config {
  if (_config is EqualUnmodifiableMapView) return _config;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_config);
}

@override final  DynamicBannerModel? banner;
 final  List<DynamicItemModel> _items;
@override@JsonKey() List<DynamicItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of DynamicSectionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DynamicSectionModelCopyWith<_DynamicSectionModel> get copyWith => __$DynamicSectionModelCopyWithImpl<_DynamicSectionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DynamicSectionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DynamicSectionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.showOrnament, showOrnament) || other.showOrnament == showOrnament)&&const DeepCollectionEquality().equals(other._config, _config)&&(identical(other.banner, banner) || other.banner == banner)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,title,showOrnament,const DeepCollectionEquality().hash(_config),banner,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'DynamicSectionModel(id: $id, type: $type, title: $title, showOrnament: $showOrnament, config: $config, banner: $banner, items: $items)';
}


}

/// @nodoc
abstract mixin class _$DynamicSectionModelCopyWith<$Res> implements $DynamicSectionModelCopyWith<$Res> {
  factory _$DynamicSectionModelCopyWith(_DynamicSectionModel value, $Res Function(_DynamicSectionModel) _then) = __$DynamicSectionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String type, String title, bool showOrnament, Map<String, dynamic> config, DynamicBannerModel? banner, List<DynamicItemModel> items
});


@override $DynamicBannerModelCopyWith<$Res>? get banner;

}
/// @nodoc
class __$DynamicSectionModelCopyWithImpl<$Res>
    implements _$DynamicSectionModelCopyWith<$Res> {
  __$DynamicSectionModelCopyWithImpl(this._self, this._then);

  final _DynamicSectionModel _self;
  final $Res Function(_DynamicSectionModel) _then;

/// Create a copy of DynamicSectionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? title = null,Object? showOrnament = null,Object? config = null,Object? banner = freezed,Object? items = null,}) {
  return _then(_DynamicSectionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,showOrnament: null == showOrnament ? _self.showOrnament : showOrnament // ignore: cast_nullable_to_non_nullable
as bool,config: null == config ? _self._config : config // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as DynamicBannerModel?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<DynamicItemModel>,
  ));
}

/// Create a copy of DynamicSectionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicBannerModelCopyWith<$Res>? get banner {
    if (_self.banner == null) {
    return null;
  }

  return $DynamicBannerModelCopyWith<$Res>(_self.banner!, (value) {
    return _then(_self.copyWith(banner: value));
  });
}
}


/// @nodoc
mixin _$DynamicItemModel {

 String get id; String get title; String get subtitle; DynamicMedia? get media; String get badge; String get gradientStart; String get gradientEnd; Map<String, dynamic> get extra; DynamicAction get action;
/// Create a copy of DynamicItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DynamicItemModelCopyWith<DynamicItemModel> get copyWith => _$DynamicItemModelCopyWithImpl<DynamicItemModel>(this as DynamicItemModel, _$identity);

  /// Serializes this DynamicItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DynamicItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.media, media) || other.media == media)&&(identical(other.badge, badge) || other.badge == badge)&&(identical(other.gradientStart, gradientStart) || other.gradientStart == gradientStart)&&(identical(other.gradientEnd, gradientEnd) || other.gradientEnd == gradientEnd)&&const DeepCollectionEquality().equals(other.extra, extra)&&(identical(other.action, action) || other.action == action));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,subtitle,media,badge,gradientStart,gradientEnd,const DeepCollectionEquality().hash(extra),action);

@override
String toString() {
  return 'DynamicItemModel(id: $id, title: $title, subtitle: $subtitle, media: $media, badge: $badge, gradientStart: $gradientStart, gradientEnd: $gradientEnd, extra: $extra, action: $action)';
}


}

/// @nodoc
abstract mixin class $DynamicItemModelCopyWith<$Res>  {
  factory $DynamicItemModelCopyWith(DynamicItemModel value, $Res Function(DynamicItemModel) _then) = _$DynamicItemModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String subtitle, DynamicMedia? media, String badge, String gradientStart, String gradientEnd, Map<String, dynamic> extra, DynamicAction action
});


$DynamicMediaCopyWith<$Res>? get media;$DynamicActionCopyWith<$Res> get action;

}
/// @nodoc
class _$DynamicItemModelCopyWithImpl<$Res>
    implements $DynamicItemModelCopyWith<$Res> {
  _$DynamicItemModelCopyWithImpl(this._self, this._then);

  final DynamicItemModel _self;
  final $Res Function(DynamicItemModel) _then;

/// Create a copy of DynamicItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? subtitle = null,Object? media = freezed,Object? badge = null,Object? gradientStart = null,Object? gradientEnd = null,Object? extra = null,Object? action = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,media: freezed == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as DynamicMedia?,badge: null == badge ? _self.badge : badge // ignore: cast_nullable_to_non_nullable
as String,gradientStart: null == gradientStart ? _self.gradientStart : gradientStart // ignore: cast_nullable_to_non_nullable
as String,gradientEnd: null == gradientEnd ? _self.gradientEnd : gradientEnd // ignore: cast_nullable_to_non_nullable
as String,extra: null == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as DynamicAction,
  ));
}
/// Create a copy of DynamicItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicMediaCopyWith<$Res>? get media {
    if (_self.media == null) {
    return null;
  }

  return $DynamicMediaCopyWith<$Res>(_self.media!, (value) {
    return _then(_self.copyWith(media: value));
  });
}/// Create a copy of DynamicItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicActionCopyWith<$Res> get action {
  
  return $DynamicActionCopyWith<$Res>(_self.action, (value) {
    return _then(_self.copyWith(action: value));
  });
}
}


/// Adds pattern-matching-related methods to [DynamicItemModel].
extension DynamicItemModelPatterns on DynamicItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DynamicItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DynamicItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DynamicItemModel value)  $default,){
final _that = this;
switch (_that) {
case _DynamicItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DynamicItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _DynamicItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String subtitle,  DynamicMedia? media,  String badge,  String gradientStart,  String gradientEnd,  Map<String, dynamic> extra,  DynamicAction action)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DynamicItemModel() when $default != null:
return $default(_that.id,_that.title,_that.subtitle,_that.media,_that.badge,_that.gradientStart,_that.gradientEnd,_that.extra,_that.action);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String subtitle,  DynamicMedia? media,  String badge,  String gradientStart,  String gradientEnd,  Map<String, dynamic> extra,  DynamicAction action)  $default,) {final _that = this;
switch (_that) {
case _DynamicItemModel():
return $default(_that.id,_that.title,_that.subtitle,_that.media,_that.badge,_that.gradientStart,_that.gradientEnd,_that.extra,_that.action);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String subtitle,  DynamicMedia? media,  String badge,  String gradientStart,  String gradientEnd,  Map<String, dynamic> extra,  DynamicAction action)?  $default,) {final _that = this;
switch (_that) {
case _DynamicItemModel() when $default != null:
return $default(_that.id,_that.title,_that.subtitle,_that.media,_that.badge,_that.gradientStart,_that.gradientEnd,_that.extra,_that.action);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DynamicItemModel implements DynamicItemModel {
  const _DynamicItemModel({this.id = '', this.title = '', this.subtitle = '', this.media, this.badge = '', this.gradientStart = '', this.gradientEnd = '', final  Map<String, dynamic> extra = const {}, this.action = const DynamicAction()}): _extra = extra;
  factory _DynamicItemModel.fromJson(Map<String, dynamic> json) => _$DynamicItemModelFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String subtitle;
@override final  DynamicMedia? media;
@override@JsonKey() final  String badge;
@override@JsonKey() final  String gradientStart;
@override@JsonKey() final  String gradientEnd;
 final  Map<String, dynamic> _extra;
@override@JsonKey() Map<String, dynamic> get extra {
  if (_extra is EqualUnmodifiableMapView) return _extra;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_extra);
}

@override@JsonKey() final  DynamicAction action;

/// Create a copy of DynamicItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DynamicItemModelCopyWith<_DynamicItemModel> get copyWith => __$DynamicItemModelCopyWithImpl<_DynamicItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DynamicItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DynamicItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.media, media) || other.media == media)&&(identical(other.badge, badge) || other.badge == badge)&&(identical(other.gradientStart, gradientStart) || other.gradientStart == gradientStart)&&(identical(other.gradientEnd, gradientEnd) || other.gradientEnd == gradientEnd)&&const DeepCollectionEquality().equals(other._extra, _extra)&&(identical(other.action, action) || other.action == action));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,subtitle,media,badge,gradientStart,gradientEnd,const DeepCollectionEquality().hash(_extra),action);

@override
String toString() {
  return 'DynamicItemModel(id: $id, title: $title, subtitle: $subtitle, media: $media, badge: $badge, gradientStart: $gradientStart, gradientEnd: $gradientEnd, extra: $extra, action: $action)';
}


}

/// @nodoc
abstract mixin class _$DynamicItemModelCopyWith<$Res> implements $DynamicItemModelCopyWith<$Res> {
  factory _$DynamicItemModelCopyWith(_DynamicItemModel value, $Res Function(_DynamicItemModel) _then) = __$DynamicItemModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String subtitle, DynamicMedia? media, String badge, String gradientStart, String gradientEnd, Map<String, dynamic> extra, DynamicAction action
});


@override $DynamicMediaCopyWith<$Res>? get media;@override $DynamicActionCopyWith<$Res> get action;

}
/// @nodoc
class __$DynamicItemModelCopyWithImpl<$Res>
    implements _$DynamicItemModelCopyWith<$Res> {
  __$DynamicItemModelCopyWithImpl(this._self, this._then);

  final _DynamicItemModel _self;
  final $Res Function(_DynamicItemModel) _then;

/// Create a copy of DynamicItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? subtitle = null,Object? media = freezed,Object? badge = null,Object? gradientStart = null,Object? gradientEnd = null,Object? extra = null,Object? action = null,}) {
  return _then(_DynamicItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,media: freezed == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as DynamicMedia?,badge: null == badge ? _self.badge : badge // ignore: cast_nullable_to_non_nullable
as String,gradientStart: null == gradientStart ? _self.gradientStart : gradientStart // ignore: cast_nullable_to_non_nullable
as String,gradientEnd: null == gradientEnd ? _self.gradientEnd : gradientEnd // ignore: cast_nullable_to_non_nullable
as String,extra: null == extra ? _self._extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as DynamicAction,
  ));
}

/// Create a copy of DynamicItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicMediaCopyWith<$Res>? get media {
    if (_self.media == null) {
    return null;
  }

  return $DynamicMediaCopyWith<$Res>(_self.media!, (value) {
    return _then(_self.copyWith(media: value));
  });
}/// Create a copy of DynamicItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicActionCopyWith<$Res> get action {
  
  return $DynamicActionCopyWith<$Res>(_self.action, (value) {
    return _then(_self.copyWith(action: value));
  });
}
}

// dart format on
