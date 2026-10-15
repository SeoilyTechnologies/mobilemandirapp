// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sewa_page_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SewaPageApiResponse {

 bool get success; String get message; SewaData get data; dynamic get errors;
/// Create a copy of SewaPageApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SewaPageApiResponseCopyWith<SewaPageApiResponse> get copyWith => _$SewaPageApiResponseCopyWithImpl<SewaPageApiResponse>(this as SewaPageApiResponse, _$identity);

  /// Serializes this SewaPageApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SewaPageApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'SewaPageApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $SewaPageApiResponseCopyWith<$Res>  {
  factory $SewaPageApiResponseCopyWith(SewaPageApiResponse value, $Res Function(SewaPageApiResponse) _then) = _$SewaPageApiResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, SewaData data, dynamic errors
});


$SewaDataCopyWith<$Res> get data;

}
/// @nodoc
class _$SewaPageApiResponseCopyWithImpl<$Res>
    implements $SewaPageApiResponseCopyWith<$Res> {
  _$SewaPageApiResponseCopyWithImpl(this._self, this._then);

  final SewaPageApiResponse _self;
  final $Res Function(SewaPageApiResponse) _then;

/// Create a copy of SewaPageApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SewaData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of SewaPageApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SewaDataCopyWith<$Res> get data {
  
  return $SewaDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [SewaPageApiResponse].
extension SewaPageApiResponsePatterns on SewaPageApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SewaPageApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SewaPageApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SewaPageApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _SewaPageApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SewaPageApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SewaPageApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  SewaData data,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SewaPageApiResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  SewaData data,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _SewaPageApiResponse():
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  SewaData data,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _SewaPageApiResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SewaPageApiResponse implements SewaPageApiResponse {
  const _SewaPageApiResponse({this.success = false, this.message = '', this.data = const SewaData(), this.errors});
  factory _SewaPageApiResponse.fromJson(Map<String, dynamic> json) => _$SewaPageApiResponseFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey() final  String message;
@override@JsonKey() final  SewaData data;
@override final  dynamic errors;

/// Create a copy of SewaPageApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SewaPageApiResponseCopyWith<_SewaPageApiResponse> get copyWith => __$SewaPageApiResponseCopyWithImpl<_SewaPageApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SewaPageApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SewaPageApiResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'SewaPageApiResponse(success: $success, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$SewaPageApiResponseCopyWith<$Res> implements $SewaPageApiResponseCopyWith<$Res> {
  factory _$SewaPageApiResponseCopyWith(_SewaPageApiResponse value, $Res Function(_SewaPageApiResponse) _then) = __$SewaPageApiResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, SewaData data, dynamic errors
});


@override $SewaDataCopyWith<$Res> get data;

}
/// @nodoc
class __$SewaPageApiResponseCopyWithImpl<$Res>
    implements _$SewaPageApiResponseCopyWith<$Res> {
  __$SewaPageApiResponseCopyWithImpl(this._self, this._then);

  final _SewaPageApiResponse _self;
  final $Res Function(_SewaPageApiResponse) _then;

/// Create a copy of SewaPageApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_SewaPageApiResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SewaData,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of SewaPageApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SewaDataCopyWith<$Res> get data {
  
  return $SewaDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$SewaData {

@JsonKey(name: '_id') String get id; String get slug; String get name; String get nameEn; String get nameHi; String get description; String get backgroundColor; String get backgroundColorEnd; String get icon; String get gifIcon; String get video; List<String> get images; String get youtubePlaylistId; String get metaTitle; String get metaDescription; SewaPageContent get pageContent; List<Offering> get offerings; List<String> get lines; List<AmountOption> get amountOptions; List<AmountOption> get oneTimeAmountOptions; List<AmountOption> get monthlyAmountOptions; List<TithiOption> get tithis; bool get isActive; int get order;
/// Create a copy of SewaData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SewaDataCopyWith<SewaData> get copyWith => _$SewaDataCopyWithImpl<SewaData>(this as SewaData, _$identity);

  /// Serializes this SewaData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SewaData&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.nameHi, nameHi) || other.nameHi == nameHi)&&(identical(other.description, description) || other.description == description)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.backgroundColorEnd, backgroundColorEnd) || other.backgroundColorEnd == backgroundColorEnd)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.gifIcon, gifIcon) || other.gifIcon == gifIcon)&&(identical(other.video, video) || other.video == video)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.youtubePlaylistId, youtubePlaylistId) || other.youtubePlaylistId == youtubePlaylistId)&&(identical(other.metaTitle, metaTitle) || other.metaTitle == metaTitle)&&(identical(other.metaDescription, metaDescription) || other.metaDescription == metaDescription)&&(identical(other.pageContent, pageContent) || other.pageContent == pageContent)&&const DeepCollectionEquality().equals(other.offerings, offerings)&&const DeepCollectionEquality().equals(other.lines, lines)&&const DeepCollectionEquality().equals(other.amountOptions, amountOptions)&&const DeepCollectionEquality().equals(other.oneTimeAmountOptions, oneTimeAmountOptions)&&const DeepCollectionEquality().equals(other.monthlyAmountOptions, monthlyAmountOptions)&&const DeepCollectionEquality().equals(other.tithis, tithis)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,slug,name,nameEn,nameHi,description,backgroundColor,backgroundColorEnd,icon,gifIcon,video,const DeepCollectionEquality().hash(images),youtubePlaylistId,metaTitle,metaDescription,pageContent,const DeepCollectionEquality().hash(offerings),const DeepCollectionEquality().hash(lines),const DeepCollectionEquality().hash(amountOptions),const DeepCollectionEquality().hash(oneTimeAmountOptions),const DeepCollectionEquality().hash(monthlyAmountOptions),const DeepCollectionEquality().hash(tithis),isActive,order]);

@override
String toString() {
  return 'SewaData(id: $id, slug: $slug, name: $name, nameEn: $nameEn, nameHi: $nameHi, description: $description, backgroundColor: $backgroundColor, backgroundColorEnd: $backgroundColorEnd, icon: $icon, gifIcon: $gifIcon, video: $video, images: $images, youtubePlaylistId: $youtubePlaylistId, metaTitle: $metaTitle, metaDescription: $metaDescription, pageContent: $pageContent, offerings: $offerings, lines: $lines, amountOptions: $amountOptions, oneTimeAmountOptions: $oneTimeAmountOptions, monthlyAmountOptions: $monthlyAmountOptions, tithis: $tithis, isActive: $isActive, order: $order)';
}


}

/// @nodoc
abstract mixin class $SewaDataCopyWith<$Res>  {
  factory $SewaDataCopyWith(SewaData value, $Res Function(SewaData) _then) = _$SewaDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String slug, String name, String nameEn, String nameHi, String description, String backgroundColor, String backgroundColorEnd, String icon, String gifIcon, String video, List<String> images, String youtubePlaylistId, String metaTitle, String metaDescription, SewaPageContent pageContent, List<Offering> offerings, List<String> lines, List<AmountOption> amountOptions, List<AmountOption> oneTimeAmountOptions, List<AmountOption> monthlyAmountOptions, List<TithiOption> tithis, bool isActive, int order
});


$SewaPageContentCopyWith<$Res> get pageContent;

}
/// @nodoc
class _$SewaDataCopyWithImpl<$Res>
    implements $SewaDataCopyWith<$Res> {
  _$SewaDataCopyWithImpl(this._self, this._then);

  final SewaData _self;
  final $Res Function(SewaData) _then;

/// Create a copy of SewaData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? slug = null,Object? name = null,Object? nameEn = null,Object? nameHi = null,Object? description = null,Object? backgroundColor = null,Object? backgroundColorEnd = null,Object? icon = null,Object? gifIcon = null,Object? video = null,Object? images = null,Object? youtubePlaylistId = null,Object? metaTitle = null,Object? metaDescription = null,Object? pageContent = null,Object? offerings = null,Object? lines = null,Object? amountOptions = null,Object? oneTimeAmountOptions = null,Object? monthlyAmountOptions = null,Object? tithis = null,Object? isActive = null,Object? order = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameEn: null == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String,nameHi: null == nameHi ? _self.nameHi : nameHi // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as String,backgroundColorEnd: null == backgroundColorEnd ? _self.backgroundColorEnd : backgroundColorEnd // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,gifIcon: null == gifIcon ? _self.gifIcon : gifIcon // ignore: cast_nullable_to_non_nullable
as String,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,youtubePlaylistId: null == youtubePlaylistId ? _self.youtubePlaylistId : youtubePlaylistId // ignore: cast_nullable_to_non_nullable
as String,metaTitle: null == metaTitle ? _self.metaTitle : metaTitle // ignore: cast_nullable_to_non_nullable
as String,metaDescription: null == metaDescription ? _self.metaDescription : metaDescription // ignore: cast_nullable_to_non_nullable
as String,pageContent: null == pageContent ? _self.pageContent : pageContent // ignore: cast_nullable_to_non_nullable
as SewaPageContent,offerings: null == offerings ? _self.offerings : offerings // ignore: cast_nullable_to_non_nullable
as List<Offering>,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<String>,amountOptions: null == amountOptions ? _self.amountOptions : amountOptions // ignore: cast_nullable_to_non_nullable
as List<AmountOption>,oneTimeAmountOptions: null == oneTimeAmountOptions ? _self.oneTimeAmountOptions : oneTimeAmountOptions // ignore: cast_nullable_to_non_nullable
as List<AmountOption>,monthlyAmountOptions: null == monthlyAmountOptions ? _self.monthlyAmountOptions : monthlyAmountOptions // ignore: cast_nullable_to_non_nullable
as List<AmountOption>,tithis: null == tithis ? _self.tithis : tithis // ignore: cast_nullable_to_non_nullable
as List<TithiOption>,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of SewaData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SewaPageContentCopyWith<$Res> get pageContent {
  
  return $SewaPageContentCopyWith<$Res>(_self.pageContent, (value) {
    return _then(_self.copyWith(pageContent: value));
  });
}
}


/// Adds pattern-matching-related methods to [SewaData].
extension SewaDataPatterns on SewaData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SewaData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SewaData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SewaData value)  $default,){
final _that = this;
switch (_that) {
case _SewaData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SewaData value)?  $default,){
final _that = this;
switch (_that) {
case _SewaData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String slug,  String name,  String nameEn,  String nameHi,  String description,  String backgroundColor,  String backgroundColorEnd,  String icon,  String gifIcon,  String video,  List<String> images,  String youtubePlaylistId,  String metaTitle,  String metaDescription,  SewaPageContent pageContent,  List<Offering> offerings,  List<String> lines,  List<AmountOption> amountOptions,  List<AmountOption> oneTimeAmountOptions,  List<AmountOption> monthlyAmountOptions,  List<TithiOption> tithis,  bool isActive,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SewaData() when $default != null:
return $default(_that.id,_that.slug,_that.name,_that.nameEn,_that.nameHi,_that.description,_that.backgroundColor,_that.backgroundColorEnd,_that.icon,_that.gifIcon,_that.video,_that.images,_that.youtubePlaylistId,_that.metaTitle,_that.metaDescription,_that.pageContent,_that.offerings,_that.lines,_that.amountOptions,_that.oneTimeAmountOptions,_that.monthlyAmountOptions,_that.tithis,_that.isActive,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String slug,  String name,  String nameEn,  String nameHi,  String description,  String backgroundColor,  String backgroundColorEnd,  String icon,  String gifIcon,  String video,  List<String> images,  String youtubePlaylistId,  String metaTitle,  String metaDescription,  SewaPageContent pageContent,  List<Offering> offerings,  List<String> lines,  List<AmountOption> amountOptions,  List<AmountOption> oneTimeAmountOptions,  List<AmountOption> monthlyAmountOptions,  List<TithiOption> tithis,  bool isActive,  int order)  $default,) {final _that = this;
switch (_that) {
case _SewaData():
return $default(_that.id,_that.slug,_that.name,_that.nameEn,_that.nameHi,_that.description,_that.backgroundColor,_that.backgroundColorEnd,_that.icon,_that.gifIcon,_that.video,_that.images,_that.youtubePlaylistId,_that.metaTitle,_that.metaDescription,_that.pageContent,_that.offerings,_that.lines,_that.amountOptions,_that.oneTimeAmountOptions,_that.monthlyAmountOptions,_that.tithis,_that.isActive,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String slug,  String name,  String nameEn,  String nameHi,  String description,  String backgroundColor,  String backgroundColorEnd,  String icon,  String gifIcon,  String video,  List<String> images,  String youtubePlaylistId,  String metaTitle,  String metaDescription,  SewaPageContent pageContent,  List<Offering> offerings,  List<String> lines,  List<AmountOption> amountOptions,  List<AmountOption> oneTimeAmountOptions,  List<AmountOption> monthlyAmountOptions,  List<TithiOption> tithis,  bool isActive,  int order)?  $default,) {final _that = this;
switch (_that) {
case _SewaData() when $default != null:
return $default(_that.id,_that.slug,_that.name,_that.nameEn,_that.nameHi,_that.description,_that.backgroundColor,_that.backgroundColorEnd,_that.icon,_that.gifIcon,_that.video,_that.images,_that.youtubePlaylistId,_that.metaTitle,_that.metaDescription,_that.pageContent,_that.offerings,_that.lines,_that.amountOptions,_that.oneTimeAmountOptions,_that.monthlyAmountOptions,_that.tithis,_that.isActive,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SewaData implements SewaData {
  const _SewaData({@JsonKey(name: '_id') this.id = '', this.slug = '', this.name = '', this.nameEn = '', this.nameHi = '', this.description = '', this.backgroundColor = '', this.backgroundColorEnd = '', this.icon = '', this.gifIcon = '', this.video = '', final  List<String> images = const <String>[], this.youtubePlaylistId = '', this.metaTitle = '', this.metaDescription = '', this.pageContent = const SewaPageContent(), final  List<Offering> offerings = const <Offering>[], final  List<String> lines = const <String>[], final  List<AmountOption> amountOptions = const <AmountOption>[], final  List<AmountOption> oneTimeAmountOptions = const <AmountOption>[], final  List<AmountOption> monthlyAmountOptions = const <AmountOption>[], final  List<TithiOption> tithis = const <TithiOption>[], this.isActive = false, this.order = 0}): _images = images,_offerings = offerings,_lines = lines,_amountOptions = amountOptions,_oneTimeAmountOptions = oneTimeAmountOptions,_monthlyAmountOptions = monthlyAmountOptions,_tithis = tithis;
  factory _SewaData.fromJson(Map<String, dynamic> json) => _$SewaDataFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey() final  String slug;
@override@JsonKey() final  String name;
@override@JsonKey() final  String nameEn;
@override@JsonKey() final  String nameHi;
@override@JsonKey() final  String description;
@override@JsonKey() final  String backgroundColor;
@override@JsonKey() final  String backgroundColorEnd;
@override@JsonKey() final  String icon;
@override@JsonKey() final  String gifIcon;
@override@JsonKey() final  String video;
 final  List<String> _images;
@override@JsonKey() List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override@JsonKey() final  String youtubePlaylistId;
@override@JsonKey() final  String metaTitle;
@override@JsonKey() final  String metaDescription;
@override@JsonKey() final  SewaPageContent pageContent;
 final  List<Offering> _offerings;
@override@JsonKey() List<Offering> get offerings {
  if (_offerings is EqualUnmodifiableListView) return _offerings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_offerings);
}

 final  List<String> _lines;
@override@JsonKey() List<String> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

 final  List<AmountOption> _amountOptions;
@override@JsonKey() List<AmountOption> get amountOptions {
  if (_amountOptions is EqualUnmodifiableListView) return _amountOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_amountOptions);
}

 final  List<AmountOption> _oneTimeAmountOptions;
@override@JsonKey() List<AmountOption> get oneTimeAmountOptions {
  if (_oneTimeAmountOptions is EqualUnmodifiableListView) return _oneTimeAmountOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_oneTimeAmountOptions);
}

 final  List<AmountOption> _monthlyAmountOptions;
@override@JsonKey() List<AmountOption> get monthlyAmountOptions {
  if (_monthlyAmountOptions is EqualUnmodifiableListView) return _monthlyAmountOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_monthlyAmountOptions);
}

 final  List<TithiOption> _tithis;
@override@JsonKey() List<TithiOption> get tithis {
  if (_tithis is EqualUnmodifiableListView) return _tithis;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tithis);
}

@override@JsonKey() final  bool isActive;
@override@JsonKey() final  int order;

/// Create a copy of SewaData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SewaDataCopyWith<_SewaData> get copyWith => __$SewaDataCopyWithImpl<_SewaData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SewaDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SewaData&&(identical(other.id, id) || other.id == id)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.nameHi, nameHi) || other.nameHi == nameHi)&&(identical(other.description, description) || other.description == description)&&(identical(other.backgroundColor, backgroundColor) || other.backgroundColor == backgroundColor)&&(identical(other.backgroundColorEnd, backgroundColorEnd) || other.backgroundColorEnd == backgroundColorEnd)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.gifIcon, gifIcon) || other.gifIcon == gifIcon)&&(identical(other.video, video) || other.video == video)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.youtubePlaylistId, youtubePlaylistId) || other.youtubePlaylistId == youtubePlaylistId)&&(identical(other.metaTitle, metaTitle) || other.metaTitle == metaTitle)&&(identical(other.metaDescription, metaDescription) || other.metaDescription == metaDescription)&&(identical(other.pageContent, pageContent) || other.pageContent == pageContent)&&const DeepCollectionEquality().equals(other._offerings, _offerings)&&const DeepCollectionEquality().equals(other._lines, _lines)&&const DeepCollectionEquality().equals(other._amountOptions, _amountOptions)&&const DeepCollectionEquality().equals(other._oneTimeAmountOptions, _oneTimeAmountOptions)&&const DeepCollectionEquality().equals(other._monthlyAmountOptions, _monthlyAmountOptions)&&const DeepCollectionEquality().equals(other._tithis, _tithis)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,slug,name,nameEn,nameHi,description,backgroundColor,backgroundColorEnd,icon,gifIcon,video,const DeepCollectionEquality().hash(_images),youtubePlaylistId,metaTitle,metaDescription,pageContent,const DeepCollectionEquality().hash(_offerings),const DeepCollectionEquality().hash(_lines),const DeepCollectionEquality().hash(_amountOptions),const DeepCollectionEquality().hash(_oneTimeAmountOptions),const DeepCollectionEquality().hash(_monthlyAmountOptions),const DeepCollectionEquality().hash(_tithis),isActive,order]);

@override
String toString() {
  return 'SewaData(id: $id, slug: $slug, name: $name, nameEn: $nameEn, nameHi: $nameHi, description: $description, backgroundColor: $backgroundColor, backgroundColorEnd: $backgroundColorEnd, icon: $icon, gifIcon: $gifIcon, video: $video, images: $images, youtubePlaylistId: $youtubePlaylistId, metaTitle: $metaTitle, metaDescription: $metaDescription, pageContent: $pageContent, offerings: $offerings, lines: $lines, amountOptions: $amountOptions, oneTimeAmountOptions: $oneTimeAmountOptions, monthlyAmountOptions: $monthlyAmountOptions, tithis: $tithis, isActive: $isActive, order: $order)';
}


}

/// @nodoc
abstract mixin class _$SewaDataCopyWith<$Res> implements $SewaDataCopyWith<$Res> {
  factory _$SewaDataCopyWith(_SewaData value, $Res Function(_SewaData) _then) = __$SewaDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String slug, String name, String nameEn, String nameHi, String description, String backgroundColor, String backgroundColorEnd, String icon, String gifIcon, String video, List<String> images, String youtubePlaylistId, String metaTitle, String metaDescription, SewaPageContent pageContent, List<Offering> offerings, List<String> lines, List<AmountOption> amountOptions, List<AmountOption> oneTimeAmountOptions, List<AmountOption> monthlyAmountOptions, List<TithiOption> tithis, bool isActive, int order
});


@override $SewaPageContentCopyWith<$Res> get pageContent;

}
/// @nodoc
class __$SewaDataCopyWithImpl<$Res>
    implements _$SewaDataCopyWith<$Res> {
  __$SewaDataCopyWithImpl(this._self, this._then);

  final _SewaData _self;
  final $Res Function(_SewaData) _then;

/// Create a copy of SewaData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? slug = null,Object? name = null,Object? nameEn = null,Object? nameHi = null,Object? description = null,Object? backgroundColor = null,Object? backgroundColorEnd = null,Object? icon = null,Object? gifIcon = null,Object? video = null,Object? images = null,Object? youtubePlaylistId = null,Object? metaTitle = null,Object? metaDescription = null,Object? pageContent = null,Object? offerings = null,Object? lines = null,Object? amountOptions = null,Object? oneTimeAmountOptions = null,Object? monthlyAmountOptions = null,Object? tithis = null,Object? isActive = null,Object? order = null,}) {
  return _then(_SewaData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameEn: null == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String,nameHi: null == nameHi ? _self.nameHi : nameHi // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,backgroundColor: null == backgroundColor ? _self.backgroundColor : backgroundColor // ignore: cast_nullable_to_non_nullable
as String,backgroundColorEnd: null == backgroundColorEnd ? _self.backgroundColorEnd : backgroundColorEnd // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,gifIcon: null == gifIcon ? _self.gifIcon : gifIcon // ignore: cast_nullable_to_non_nullable
as String,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,youtubePlaylistId: null == youtubePlaylistId ? _self.youtubePlaylistId : youtubePlaylistId // ignore: cast_nullable_to_non_nullable
as String,metaTitle: null == metaTitle ? _self.metaTitle : metaTitle // ignore: cast_nullable_to_non_nullable
as String,metaDescription: null == metaDescription ? _self.metaDescription : metaDescription // ignore: cast_nullable_to_non_nullable
as String,pageContent: null == pageContent ? _self.pageContent : pageContent // ignore: cast_nullable_to_non_nullable
as SewaPageContent,offerings: null == offerings ? _self._offerings : offerings // ignore: cast_nullable_to_non_nullable
as List<Offering>,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<String>,amountOptions: null == amountOptions ? _self._amountOptions : amountOptions // ignore: cast_nullable_to_non_nullable
as List<AmountOption>,oneTimeAmountOptions: null == oneTimeAmountOptions ? _self._oneTimeAmountOptions : oneTimeAmountOptions // ignore: cast_nullable_to_non_nullable
as List<AmountOption>,monthlyAmountOptions: null == monthlyAmountOptions ? _self._monthlyAmountOptions : monthlyAmountOptions // ignore: cast_nullable_to_non_nullable
as List<AmountOption>,tithis: null == tithis ? _self._tithis : tithis // ignore: cast_nullable_to_non_nullable
as List<TithiOption>,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of SewaData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SewaPageContentCopyWith<$Res> get pageContent {
  
  return $SewaPageContentCopyWith<$Res>(_self.pageContent, (value) {
    return _then(_self.copyWith(pageContent: value));
  });
}
}


/// @nodoc
mixin _$SewaPageContent {

 LocalizedText get heading; LocalizedText get paragraph; LocalizedText get subHeading; List<LocalizedText> get bullets; LocalizedText get faqHeading; LocalizedText get faqDescription; List<SewaFaq> get faqs;
/// Create a copy of SewaPageContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SewaPageContentCopyWith<SewaPageContent> get copyWith => _$SewaPageContentCopyWithImpl<SewaPageContent>(this as SewaPageContent, _$identity);

  /// Serializes this SewaPageContent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SewaPageContent&&(identical(other.heading, heading) || other.heading == heading)&&(identical(other.paragraph, paragraph) || other.paragraph == paragraph)&&(identical(other.subHeading, subHeading) || other.subHeading == subHeading)&&const DeepCollectionEquality().equals(other.bullets, bullets)&&(identical(other.faqHeading, faqHeading) || other.faqHeading == faqHeading)&&(identical(other.faqDescription, faqDescription) || other.faqDescription == faqDescription)&&const DeepCollectionEquality().equals(other.faqs, faqs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,heading,paragraph,subHeading,const DeepCollectionEquality().hash(bullets),faqHeading,faqDescription,const DeepCollectionEquality().hash(faqs));

@override
String toString() {
  return 'SewaPageContent(heading: $heading, paragraph: $paragraph, subHeading: $subHeading, bullets: $bullets, faqHeading: $faqHeading, faqDescription: $faqDescription, faqs: $faqs)';
}


}

/// @nodoc
abstract mixin class $SewaPageContentCopyWith<$Res>  {
  factory $SewaPageContentCopyWith(SewaPageContent value, $Res Function(SewaPageContent) _then) = _$SewaPageContentCopyWithImpl;
@useResult
$Res call({
 LocalizedText heading, LocalizedText paragraph, LocalizedText subHeading, List<LocalizedText> bullets, LocalizedText faqHeading, LocalizedText faqDescription, List<SewaFaq> faqs
});


$LocalizedTextCopyWith<$Res> get heading;$LocalizedTextCopyWith<$Res> get paragraph;$LocalizedTextCopyWith<$Res> get subHeading;$LocalizedTextCopyWith<$Res> get faqHeading;$LocalizedTextCopyWith<$Res> get faqDescription;

}
/// @nodoc
class _$SewaPageContentCopyWithImpl<$Res>
    implements $SewaPageContentCopyWith<$Res> {
  _$SewaPageContentCopyWithImpl(this._self, this._then);

  final SewaPageContent _self;
  final $Res Function(SewaPageContent) _then;

/// Create a copy of SewaPageContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? heading = null,Object? paragraph = null,Object? subHeading = null,Object? bullets = null,Object? faqHeading = null,Object? faqDescription = null,Object? faqs = null,}) {
  return _then(_self.copyWith(
heading: null == heading ? _self.heading : heading // ignore: cast_nullable_to_non_nullable
as LocalizedText,paragraph: null == paragraph ? _self.paragraph : paragraph // ignore: cast_nullable_to_non_nullable
as LocalizedText,subHeading: null == subHeading ? _self.subHeading : subHeading // ignore: cast_nullable_to_non_nullable
as LocalizedText,bullets: null == bullets ? _self.bullets : bullets // ignore: cast_nullable_to_non_nullable
as List<LocalizedText>,faqHeading: null == faqHeading ? _self.faqHeading : faqHeading // ignore: cast_nullable_to_non_nullable
as LocalizedText,faqDescription: null == faqDescription ? _self.faqDescription : faqDescription // ignore: cast_nullable_to_non_nullable
as LocalizedText,faqs: null == faqs ? _self.faqs : faqs // ignore: cast_nullable_to_non_nullable
as List<SewaFaq>,
  ));
}
/// Create a copy of SewaPageContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get heading {
  
  return $LocalizedTextCopyWith<$Res>(_self.heading, (value) {
    return _then(_self.copyWith(heading: value));
  });
}/// Create a copy of SewaPageContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get paragraph {
  
  return $LocalizedTextCopyWith<$Res>(_self.paragraph, (value) {
    return _then(_self.copyWith(paragraph: value));
  });
}/// Create a copy of SewaPageContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get subHeading {
  
  return $LocalizedTextCopyWith<$Res>(_self.subHeading, (value) {
    return _then(_self.copyWith(subHeading: value));
  });
}/// Create a copy of SewaPageContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get faqHeading {
  
  return $LocalizedTextCopyWith<$Res>(_self.faqHeading, (value) {
    return _then(_self.copyWith(faqHeading: value));
  });
}/// Create a copy of SewaPageContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get faqDescription {
  
  return $LocalizedTextCopyWith<$Res>(_self.faqDescription, (value) {
    return _then(_self.copyWith(faqDescription: value));
  });
}
}


/// Adds pattern-matching-related methods to [SewaPageContent].
extension SewaPageContentPatterns on SewaPageContent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SewaPageContent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SewaPageContent() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SewaPageContent value)  $default,){
final _that = this;
switch (_that) {
case _SewaPageContent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SewaPageContent value)?  $default,){
final _that = this;
switch (_that) {
case _SewaPageContent() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LocalizedText heading,  LocalizedText paragraph,  LocalizedText subHeading,  List<LocalizedText> bullets,  LocalizedText faqHeading,  LocalizedText faqDescription,  List<SewaFaq> faqs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SewaPageContent() when $default != null:
return $default(_that.heading,_that.paragraph,_that.subHeading,_that.bullets,_that.faqHeading,_that.faqDescription,_that.faqs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LocalizedText heading,  LocalizedText paragraph,  LocalizedText subHeading,  List<LocalizedText> bullets,  LocalizedText faqHeading,  LocalizedText faqDescription,  List<SewaFaq> faqs)  $default,) {final _that = this;
switch (_that) {
case _SewaPageContent():
return $default(_that.heading,_that.paragraph,_that.subHeading,_that.bullets,_that.faqHeading,_that.faqDescription,_that.faqs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LocalizedText heading,  LocalizedText paragraph,  LocalizedText subHeading,  List<LocalizedText> bullets,  LocalizedText faqHeading,  LocalizedText faqDescription,  List<SewaFaq> faqs)?  $default,) {final _that = this;
switch (_that) {
case _SewaPageContent() when $default != null:
return $default(_that.heading,_that.paragraph,_that.subHeading,_that.bullets,_that.faqHeading,_that.faqDescription,_that.faqs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SewaPageContent implements SewaPageContent {
  const _SewaPageContent({this.heading = const LocalizedText(), this.paragraph = const LocalizedText(), this.subHeading = const LocalizedText(), final  List<LocalizedText> bullets = const <LocalizedText>[], this.faqHeading = const LocalizedText(), this.faqDescription = const LocalizedText(), final  List<SewaFaq> faqs = const <SewaFaq>[]}): _bullets = bullets,_faqs = faqs;
  factory _SewaPageContent.fromJson(Map<String, dynamic> json) => _$SewaPageContentFromJson(json);

@override@JsonKey() final  LocalizedText heading;
@override@JsonKey() final  LocalizedText paragraph;
@override@JsonKey() final  LocalizedText subHeading;
 final  List<LocalizedText> _bullets;
@override@JsonKey() List<LocalizedText> get bullets {
  if (_bullets is EqualUnmodifiableListView) return _bullets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bullets);
}

@override@JsonKey() final  LocalizedText faqHeading;
@override@JsonKey() final  LocalizedText faqDescription;
 final  List<SewaFaq> _faqs;
@override@JsonKey() List<SewaFaq> get faqs {
  if (_faqs is EqualUnmodifiableListView) return _faqs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_faqs);
}


/// Create a copy of SewaPageContent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SewaPageContentCopyWith<_SewaPageContent> get copyWith => __$SewaPageContentCopyWithImpl<_SewaPageContent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SewaPageContentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SewaPageContent&&(identical(other.heading, heading) || other.heading == heading)&&(identical(other.paragraph, paragraph) || other.paragraph == paragraph)&&(identical(other.subHeading, subHeading) || other.subHeading == subHeading)&&const DeepCollectionEquality().equals(other._bullets, _bullets)&&(identical(other.faqHeading, faqHeading) || other.faqHeading == faqHeading)&&(identical(other.faqDescription, faqDescription) || other.faqDescription == faqDescription)&&const DeepCollectionEquality().equals(other._faqs, _faqs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,heading,paragraph,subHeading,const DeepCollectionEquality().hash(_bullets),faqHeading,faqDescription,const DeepCollectionEquality().hash(_faqs));

@override
String toString() {
  return 'SewaPageContent(heading: $heading, paragraph: $paragraph, subHeading: $subHeading, bullets: $bullets, faqHeading: $faqHeading, faqDescription: $faqDescription, faqs: $faqs)';
}


}

/// @nodoc
abstract mixin class _$SewaPageContentCopyWith<$Res> implements $SewaPageContentCopyWith<$Res> {
  factory _$SewaPageContentCopyWith(_SewaPageContent value, $Res Function(_SewaPageContent) _then) = __$SewaPageContentCopyWithImpl;
@override @useResult
$Res call({
 LocalizedText heading, LocalizedText paragraph, LocalizedText subHeading, List<LocalizedText> bullets, LocalizedText faqHeading, LocalizedText faqDescription, List<SewaFaq> faqs
});


@override $LocalizedTextCopyWith<$Res> get heading;@override $LocalizedTextCopyWith<$Res> get paragraph;@override $LocalizedTextCopyWith<$Res> get subHeading;@override $LocalizedTextCopyWith<$Res> get faqHeading;@override $LocalizedTextCopyWith<$Res> get faqDescription;

}
/// @nodoc
class __$SewaPageContentCopyWithImpl<$Res>
    implements _$SewaPageContentCopyWith<$Res> {
  __$SewaPageContentCopyWithImpl(this._self, this._then);

  final _SewaPageContent _self;
  final $Res Function(_SewaPageContent) _then;

/// Create a copy of SewaPageContent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? heading = null,Object? paragraph = null,Object? subHeading = null,Object? bullets = null,Object? faqHeading = null,Object? faqDescription = null,Object? faqs = null,}) {
  return _then(_SewaPageContent(
heading: null == heading ? _self.heading : heading // ignore: cast_nullable_to_non_nullable
as LocalizedText,paragraph: null == paragraph ? _self.paragraph : paragraph // ignore: cast_nullable_to_non_nullable
as LocalizedText,subHeading: null == subHeading ? _self.subHeading : subHeading // ignore: cast_nullable_to_non_nullable
as LocalizedText,bullets: null == bullets ? _self._bullets : bullets // ignore: cast_nullable_to_non_nullable
as List<LocalizedText>,faqHeading: null == faqHeading ? _self.faqHeading : faqHeading // ignore: cast_nullable_to_non_nullable
as LocalizedText,faqDescription: null == faqDescription ? _self.faqDescription : faqDescription // ignore: cast_nullable_to_non_nullable
as LocalizedText,faqs: null == faqs ? _self._faqs : faqs // ignore: cast_nullable_to_non_nullable
as List<SewaFaq>,
  ));
}

/// Create a copy of SewaPageContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get heading {
  
  return $LocalizedTextCopyWith<$Res>(_self.heading, (value) {
    return _then(_self.copyWith(heading: value));
  });
}/// Create a copy of SewaPageContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get paragraph {
  
  return $LocalizedTextCopyWith<$Res>(_self.paragraph, (value) {
    return _then(_self.copyWith(paragraph: value));
  });
}/// Create a copy of SewaPageContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get subHeading {
  
  return $LocalizedTextCopyWith<$Res>(_self.subHeading, (value) {
    return _then(_self.copyWith(subHeading: value));
  });
}/// Create a copy of SewaPageContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get faqHeading {
  
  return $LocalizedTextCopyWith<$Res>(_self.faqHeading, (value) {
    return _then(_self.copyWith(faqHeading: value));
  });
}/// Create a copy of SewaPageContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get faqDescription {
  
  return $LocalizedTextCopyWith<$Res>(_self.faqDescription, (value) {
    return _then(_self.copyWith(faqDescription: value));
  });
}
}


/// @nodoc
mixin _$LocalizedText {

 String get en; String get hi;
/// Create a copy of LocalizedText
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<LocalizedText> get copyWith => _$LocalizedTextCopyWithImpl<LocalizedText>(this as LocalizedText, _$identity);

  /// Serializes this LocalizedText to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalizedText&&(identical(other.en, en) || other.en == en)&&(identical(other.hi, hi) || other.hi == hi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,en,hi);

@override
String toString() {
  return 'LocalizedText(en: $en, hi: $hi)';
}


}

/// @nodoc
abstract mixin class $LocalizedTextCopyWith<$Res>  {
  factory $LocalizedTextCopyWith(LocalizedText value, $Res Function(LocalizedText) _then) = _$LocalizedTextCopyWithImpl;
@useResult
$Res call({
 String en, String hi
});




}
/// @nodoc
class _$LocalizedTextCopyWithImpl<$Res>
    implements $LocalizedTextCopyWith<$Res> {
  _$LocalizedTextCopyWithImpl(this._self, this._then);

  final LocalizedText _self;
  final $Res Function(LocalizedText) _then;

/// Create a copy of LocalizedText
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? en = null,Object? hi = null,}) {
  return _then(_self.copyWith(
en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,hi: null == hi ? _self.hi : hi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LocalizedText].
extension LocalizedTextPatterns on LocalizedText {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalizedText value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalizedText() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalizedText value)  $default,){
final _that = this;
switch (_that) {
case _LocalizedText():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalizedText value)?  $default,){
final _that = this;
switch (_that) {
case _LocalizedText() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String en,  String hi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalizedText() when $default != null:
return $default(_that.en,_that.hi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String en,  String hi)  $default,) {final _that = this;
switch (_that) {
case _LocalizedText():
return $default(_that.en,_that.hi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String en,  String hi)?  $default,) {final _that = this;
switch (_that) {
case _LocalizedText() when $default != null:
return $default(_that.en,_that.hi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocalizedText implements LocalizedText {
  const _LocalizedText({this.en = '', this.hi = ''});
  factory _LocalizedText.fromJson(Map<String, dynamic> json) => _$LocalizedTextFromJson(json);

@override@JsonKey() final  String en;
@override@JsonKey() final  String hi;

/// Create a copy of LocalizedText
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalizedTextCopyWith<_LocalizedText> get copyWith => __$LocalizedTextCopyWithImpl<_LocalizedText>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocalizedTextToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalizedText&&(identical(other.en, en) || other.en == en)&&(identical(other.hi, hi) || other.hi == hi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,en,hi);

@override
String toString() {
  return 'LocalizedText(en: $en, hi: $hi)';
}


}

/// @nodoc
abstract mixin class _$LocalizedTextCopyWith<$Res> implements $LocalizedTextCopyWith<$Res> {
  factory _$LocalizedTextCopyWith(_LocalizedText value, $Res Function(_LocalizedText) _then) = __$LocalizedTextCopyWithImpl;
@override @useResult
$Res call({
 String en, String hi
});




}
/// @nodoc
class __$LocalizedTextCopyWithImpl<$Res>
    implements _$LocalizedTextCopyWith<$Res> {
  __$LocalizedTextCopyWithImpl(this._self, this._then);

  final _LocalizedText _self;
  final $Res Function(_LocalizedText) _then;

/// Create a copy of LocalizedText
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? en = null,Object? hi = null,}) {
  return _then(_LocalizedText(
en: null == en ? _self.en : en // ignore: cast_nullable_to_non_nullable
as String,hi: null == hi ? _self.hi : hi // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SewaFaq {

 LocalizedText get question; LocalizedText get answer;
/// Create a copy of SewaFaq
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SewaFaqCopyWith<SewaFaq> get copyWith => _$SewaFaqCopyWithImpl<SewaFaq>(this as SewaFaq, _$identity);

  /// Serializes this SewaFaq to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SewaFaq&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question,answer);

@override
String toString() {
  return 'SewaFaq(question: $question, answer: $answer)';
}


}

/// @nodoc
abstract mixin class $SewaFaqCopyWith<$Res>  {
  factory $SewaFaqCopyWith(SewaFaq value, $Res Function(SewaFaq) _then) = _$SewaFaqCopyWithImpl;
@useResult
$Res call({
 LocalizedText question, LocalizedText answer
});


$LocalizedTextCopyWith<$Res> get question;$LocalizedTextCopyWith<$Res> get answer;

}
/// @nodoc
class _$SewaFaqCopyWithImpl<$Res>
    implements $SewaFaqCopyWith<$Res> {
  _$SewaFaqCopyWithImpl(this._self, this._then);

  final SewaFaq _self;
  final $Res Function(SewaFaq) _then;

/// Create a copy of SewaFaq
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? question = null,Object? answer = null,}) {
  return _then(_self.copyWith(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as LocalizedText,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as LocalizedText,
  ));
}
/// Create a copy of SewaFaq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get question {
  
  return $LocalizedTextCopyWith<$Res>(_self.question, (value) {
    return _then(_self.copyWith(question: value));
  });
}/// Create a copy of SewaFaq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get answer {
  
  return $LocalizedTextCopyWith<$Res>(_self.answer, (value) {
    return _then(_self.copyWith(answer: value));
  });
}
}


/// Adds pattern-matching-related methods to [SewaFaq].
extension SewaFaqPatterns on SewaFaq {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SewaFaq value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SewaFaq() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SewaFaq value)  $default,){
final _that = this;
switch (_that) {
case _SewaFaq():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SewaFaq value)?  $default,){
final _that = this;
switch (_that) {
case _SewaFaq() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LocalizedText question,  LocalizedText answer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SewaFaq() when $default != null:
return $default(_that.question,_that.answer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LocalizedText question,  LocalizedText answer)  $default,) {final _that = this;
switch (_that) {
case _SewaFaq():
return $default(_that.question,_that.answer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LocalizedText question,  LocalizedText answer)?  $default,) {final _that = this;
switch (_that) {
case _SewaFaq() when $default != null:
return $default(_that.question,_that.answer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SewaFaq implements SewaFaq {
  const _SewaFaq({this.question = const LocalizedText(), this.answer = const LocalizedText()});
  factory _SewaFaq.fromJson(Map<String, dynamic> json) => _$SewaFaqFromJson(json);

@override@JsonKey() final  LocalizedText question;
@override@JsonKey() final  LocalizedText answer;

/// Create a copy of SewaFaq
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SewaFaqCopyWith<_SewaFaq> get copyWith => __$SewaFaqCopyWithImpl<_SewaFaq>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SewaFaqToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SewaFaq&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question,answer);

@override
String toString() {
  return 'SewaFaq(question: $question, answer: $answer)';
}


}

/// @nodoc
abstract mixin class _$SewaFaqCopyWith<$Res> implements $SewaFaqCopyWith<$Res> {
  factory _$SewaFaqCopyWith(_SewaFaq value, $Res Function(_SewaFaq) _then) = __$SewaFaqCopyWithImpl;
@override @useResult
$Res call({
 LocalizedText question, LocalizedText answer
});


@override $LocalizedTextCopyWith<$Res> get question;@override $LocalizedTextCopyWith<$Res> get answer;

}
/// @nodoc
class __$SewaFaqCopyWithImpl<$Res>
    implements _$SewaFaqCopyWith<$Res> {
  __$SewaFaqCopyWithImpl(this._self, this._then);

  final _SewaFaq _self;
  final $Res Function(_SewaFaq) _then;

/// Create a copy of SewaFaq
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? question = null,Object? answer = null,}) {
  return _then(_SewaFaq(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as LocalizedText,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as LocalizedText,
  ));
}

/// Create a copy of SewaFaq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get question {
  
  return $LocalizedTextCopyWith<$Res>(_self.question, (value) {
    return _then(_self.copyWith(question: value));
  });
}/// Create a copy of SewaFaq
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocalizedTextCopyWith<$Res> get answer {
  
  return $LocalizedTextCopyWith<$Res>(_self.answer, (value) {
    return _then(_self.copyWith(answer: value));
  });
}
}


/// @nodoc
mixin _$Offering {

 String get name; String get nameEn; String get nameHi; String get imageUrl; bool get isActive; int get order;
/// Create a copy of Offering
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfferingCopyWith<Offering> get copyWith => _$OfferingCopyWithImpl<Offering>(this as Offering, _$identity);

  /// Serializes this Offering to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Offering&&(identical(other.name, name) || other.name == name)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.nameHi, nameHi) || other.nameHi == nameHi)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,nameEn,nameHi,imageUrl,isActive,order);

@override
String toString() {
  return 'Offering(name: $name, nameEn: $nameEn, nameHi: $nameHi, imageUrl: $imageUrl, isActive: $isActive, order: $order)';
}


}

/// @nodoc
abstract mixin class $OfferingCopyWith<$Res>  {
  factory $OfferingCopyWith(Offering value, $Res Function(Offering) _then) = _$OfferingCopyWithImpl;
@useResult
$Res call({
 String name, String nameEn, String nameHi, String imageUrl, bool isActive, int order
});




}
/// @nodoc
class _$OfferingCopyWithImpl<$Res>
    implements $OfferingCopyWith<$Res> {
  _$OfferingCopyWithImpl(this._self, this._then);

  final Offering _self;
  final $Res Function(Offering) _then;

/// Create a copy of Offering
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? nameEn = null,Object? nameHi = null,Object? imageUrl = null,Object? isActive = null,Object? order = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameEn: null == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String,nameHi: null == nameHi ? _self.nameHi : nameHi // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Offering].
extension OfferingPatterns on Offering {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Offering value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Offering() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Offering value)  $default,){
final _that = this;
switch (_that) {
case _Offering():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Offering value)?  $default,){
final _that = this;
switch (_that) {
case _Offering() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String nameEn,  String nameHi,  String imageUrl,  bool isActive,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Offering() when $default != null:
return $default(_that.name,_that.nameEn,_that.nameHi,_that.imageUrl,_that.isActive,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String nameEn,  String nameHi,  String imageUrl,  bool isActive,  int order)  $default,) {final _that = this;
switch (_that) {
case _Offering():
return $default(_that.name,_that.nameEn,_that.nameHi,_that.imageUrl,_that.isActive,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String nameEn,  String nameHi,  String imageUrl,  bool isActive,  int order)?  $default,) {final _that = this;
switch (_that) {
case _Offering() when $default != null:
return $default(_that.name,_that.nameEn,_that.nameHi,_that.imageUrl,_that.isActive,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Offering implements Offering {
  const _Offering({this.name = '', this.nameEn = '', this.nameHi = '', this.imageUrl = '', this.isActive = true, this.order = 0});
  factory _Offering.fromJson(Map<String, dynamic> json) => _$OfferingFromJson(json);

@override@JsonKey() final  String name;
@override@JsonKey() final  String nameEn;
@override@JsonKey() final  String nameHi;
@override@JsonKey() final  String imageUrl;
@override@JsonKey() final  bool isActive;
@override@JsonKey() final  int order;

/// Create a copy of Offering
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfferingCopyWith<_Offering> get copyWith => __$OfferingCopyWithImpl<_Offering>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfferingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Offering&&(identical(other.name, name) || other.name == name)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.nameHi, nameHi) || other.nameHi == nameHi)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,nameEn,nameHi,imageUrl,isActive,order);

@override
String toString() {
  return 'Offering(name: $name, nameEn: $nameEn, nameHi: $nameHi, imageUrl: $imageUrl, isActive: $isActive, order: $order)';
}


}

/// @nodoc
abstract mixin class _$OfferingCopyWith<$Res> implements $OfferingCopyWith<$Res> {
  factory _$OfferingCopyWith(_Offering value, $Res Function(_Offering) _then) = __$OfferingCopyWithImpl;
@override @useResult
$Res call({
 String name, String nameEn, String nameHi, String imageUrl, bool isActive, int order
});




}
/// @nodoc
class __$OfferingCopyWithImpl<$Res>
    implements _$OfferingCopyWith<$Res> {
  __$OfferingCopyWithImpl(this._self, this._then);

  final _Offering _self;
  final $Res Function(_Offering) _then;

/// Create a copy of Offering
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? nameEn = null,Object? nameHi = null,Object? imageUrl = null,Object? isActive = null,Object? order = null,}) {
  return _then(_Offering(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameEn: null == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String,nameHi: null == nameHi ? _self.nameHi : nameHi // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$AmountOption {

 int get amount; String get type; String get label; String get badge;
/// Create a copy of AmountOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AmountOptionCopyWith<AmountOption> get copyWith => _$AmountOptionCopyWithImpl<AmountOption>(this as AmountOption, _$identity);

  /// Serializes this AmountOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AmountOption&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.type, type) || other.type == type)&&(identical(other.label, label) || other.label == label)&&(identical(other.badge, badge) || other.badge == badge));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,type,label,badge);

@override
String toString() {
  return 'AmountOption(amount: $amount, type: $type, label: $label, badge: $badge)';
}


}

/// @nodoc
abstract mixin class $AmountOptionCopyWith<$Res>  {
  factory $AmountOptionCopyWith(AmountOption value, $Res Function(AmountOption) _then) = _$AmountOptionCopyWithImpl;
@useResult
$Res call({
 int amount, String type, String label, String badge
});




}
/// @nodoc
class _$AmountOptionCopyWithImpl<$Res>
    implements $AmountOptionCopyWith<$Res> {
  _$AmountOptionCopyWithImpl(this._self, this._then);

  final AmountOption _self;
  final $Res Function(AmountOption) _then;

/// Create a copy of AmountOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? type = null,Object? label = null,Object? badge = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,badge: null == badge ? _self.badge : badge // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AmountOption].
extension AmountOptionPatterns on AmountOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AmountOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AmountOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AmountOption value)  $default,){
final _that = this;
switch (_that) {
case _AmountOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AmountOption value)?  $default,){
final _that = this;
switch (_that) {
case _AmountOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int amount,  String type,  String label,  String badge)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AmountOption() when $default != null:
return $default(_that.amount,_that.type,_that.label,_that.badge);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int amount,  String type,  String label,  String badge)  $default,) {final _that = this;
switch (_that) {
case _AmountOption():
return $default(_that.amount,_that.type,_that.label,_that.badge);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int amount,  String type,  String label,  String badge)?  $default,) {final _that = this;
switch (_that) {
case _AmountOption() when $default != null:
return $default(_that.amount,_that.type,_that.label,_that.badge);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AmountOption implements AmountOption {
  const _AmountOption({this.amount = 0, this.type = '', this.label = '', this.badge = ''});
  factory _AmountOption.fromJson(Map<String, dynamic> json) => _$AmountOptionFromJson(json);

@override@JsonKey() final  int amount;
@override@JsonKey() final  String type;
@override@JsonKey() final  String label;
@override@JsonKey() final  String badge;

/// Create a copy of AmountOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AmountOptionCopyWith<_AmountOption> get copyWith => __$AmountOptionCopyWithImpl<_AmountOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AmountOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AmountOption&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.type, type) || other.type == type)&&(identical(other.label, label) || other.label == label)&&(identical(other.badge, badge) || other.badge == badge));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,type,label,badge);

@override
String toString() {
  return 'AmountOption(amount: $amount, type: $type, label: $label, badge: $badge)';
}


}

/// @nodoc
abstract mixin class _$AmountOptionCopyWith<$Res> implements $AmountOptionCopyWith<$Res> {
  factory _$AmountOptionCopyWith(_AmountOption value, $Res Function(_AmountOption) _then) = __$AmountOptionCopyWithImpl;
@override @useResult
$Res call({
 int amount, String type, String label, String badge
});




}
/// @nodoc
class __$AmountOptionCopyWithImpl<$Res>
    implements _$AmountOptionCopyWith<$Res> {
  __$AmountOptionCopyWithImpl(this._self, this._then);

  final _AmountOption _self;
  final $Res Function(_AmountOption) _then;

/// Create a copy of AmountOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? type = null,Object? label = null,Object? badge = null,}) {
  return _then(_AmountOption(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,badge: null == badge ? _self.badge : badge // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TithiOption {

@JsonKey(name: '_id') String get id; String get name; String get nameEn; String get nameHi; String get code; int get order;
/// Create a copy of TithiOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TithiOptionCopyWith<TithiOption> get copyWith => _$TithiOptionCopyWithImpl<TithiOption>(this as TithiOption, _$identity);

  /// Serializes this TithiOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TithiOption&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.nameHi, nameHi) || other.nameHi == nameHi)&&(identical(other.code, code) || other.code == code)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameEn,nameHi,code,order);

@override
String toString() {
  return 'TithiOption(id: $id, name: $name, nameEn: $nameEn, nameHi: $nameHi, code: $code, order: $order)';
}


}

/// @nodoc
abstract mixin class $TithiOptionCopyWith<$Res>  {
  factory $TithiOptionCopyWith(TithiOption value, $Res Function(TithiOption) _then) = _$TithiOptionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String name, String nameEn, String nameHi, String code, int order
});




}
/// @nodoc
class _$TithiOptionCopyWithImpl<$Res>
    implements $TithiOptionCopyWith<$Res> {
  _$TithiOptionCopyWithImpl(this._self, this._then);

  final TithiOption _self;
  final $Res Function(TithiOption) _then;

/// Create a copy of TithiOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? nameEn = null,Object? nameHi = null,Object? code = null,Object? order = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameEn: null == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String,nameHi: null == nameHi ? _self.nameHi : nameHi // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TithiOption].
extension TithiOptionPatterns on TithiOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TithiOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TithiOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TithiOption value)  $default,){
final _that = this;
switch (_that) {
case _TithiOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TithiOption value)?  $default,){
final _that = this;
switch (_that) {
case _TithiOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String name,  String nameEn,  String nameHi,  String code,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TithiOption() when $default != null:
return $default(_that.id,_that.name,_that.nameEn,_that.nameHi,_that.code,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String name,  String nameEn,  String nameHi,  String code,  int order)  $default,) {final _that = this;
switch (_that) {
case _TithiOption():
return $default(_that.id,_that.name,_that.nameEn,_that.nameHi,_that.code,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String name,  String nameEn,  String nameHi,  String code,  int order)?  $default,) {final _that = this;
switch (_that) {
case _TithiOption() when $default != null:
return $default(_that.id,_that.name,_that.nameEn,_that.nameHi,_that.code,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TithiOption implements TithiOption {
  const _TithiOption({@JsonKey(name: '_id') this.id = '', this.name = '', this.nameEn = '', this.nameHi = '', this.code = '', this.order = 0});
  factory _TithiOption.fromJson(Map<String, dynamic> json) => _$TithiOptionFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String nameEn;
@override@JsonKey() final  String nameHi;
@override@JsonKey() final  String code;
@override@JsonKey() final  int order;

/// Create a copy of TithiOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TithiOptionCopyWith<_TithiOption> get copyWith => __$TithiOptionCopyWithImpl<_TithiOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TithiOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TithiOption&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.nameHi, nameHi) || other.nameHi == nameHi)&&(identical(other.code, code) || other.code == code)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameEn,nameHi,code,order);

@override
String toString() {
  return 'TithiOption(id: $id, name: $name, nameEn: $nameEn, nameHi: $nameHi, code: $code, order: $order)';
}


}

/// @nodoc
abstract mixin class _$TithiOptionCopyWith<$Res> implements $TithiOptionCopyWith<$Res> {
  factory _$TithiOptionCopyWith(_TithiOption value, $Res Function(_TithiOption) _then) = __$TithiOptionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String name, String nameEn, String nameHi, String code, int order
});




}
/// @nodoc
class __$TithiOptionCopyWithImpl<$Res>
    implements _$TithiOptionCopyWith<$Res> {
  __$TithiOptionCopyWithImpl(this._self, this._then);

  final _TithiOption _self;
  final $Res Function(_TithiOption) _then;

/// Create a copy of TithiOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nameEn = null,Object? nameHi = null,Object? code = null,Object? order = null,}) {
  return _then(_TithiOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameEn: null == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String,nameHi: null == nameHi ? _self.nameHi : nameHi // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
