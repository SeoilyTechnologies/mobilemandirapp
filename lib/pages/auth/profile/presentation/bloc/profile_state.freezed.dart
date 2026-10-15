// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileState {

 bool get isLoading; String get name; String get email; String get phoneNumber; String get dateOfBirth;// DOB
 String get birthTime;// TIME
 String get location; String get gender; bool get isEditing; bool get isSaving; bool get isPlaceLoading; List<dynamic> get placeSuggestions; bool get showHideLocationList; String get latitidue; String get longitude; String get apiErrorMessage; String get apiSuccessMessage; File? get avatarLocalFile; LoginResponse get profile;
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileStateCopyWith<ProfileState> get copyWith => _$ProfileStateCopyWithImpl<ProfileState>(this as ProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.birthTime, birthTime) || other.birthTime == birthTime)&&(identical(other.location, location) || other.location == location)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isEditing, isEditing) || other.isEditing == isEditing)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.isPlaceLoading, isPlaceLoading) || other.isPlaceLoading == isPlaceLoading)&&const DeepCollectionEquality().equals(other.placeSuggestions, placeSuggestions)&&(identical(other.showHideLocationList, showHideLocationList) || other.showHideLocationList == showHideLocationList)&&(identical(other.latitidue, latitidue) || other.latitidue == latitidue)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.apiErrorMessage, apiErrorMessage) || other.apiErrorMessage == apiErrorMessage)&&(identical(other.apiSuccessMessage, apiSuccessMessage) || other.apiSuccessMessage == apiSuccessMessage)&&(identical(other.avatarLocalFile, avatarLocalFile) || other.avatarLocalFile == avatarLocalFile)&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hashAll([runtimeType,isLoading,name,email,phoneNumber,dateOfBirth,birthTime,location,gender,isEditing,isSaving,isPlaceLoading,const DeepCollectionEquality().hash(placeSuggestions),showHideLocationList,latitidue,longitude,apiErrorMessage,apiSuccessMessage,avatarLocalFile,profile]);

@override
String toString() {
  return 'ProfileState(isLoading: $isLoading, name: $name, email: $email, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, birthTime: $birthTime, location: $location, gender: $gender, isEditing: $isEditing, isSaving: $isSaving, isPlaceLoading: $isPlaceLoading, placeSuggestions: $placeSuggestions, showHideLocationList: $showHideLocationList, latitidue: $latitidue, longitude: $longitude, apiErrorMessage: $apiErrorMessage, apiSuccessMessage: $apiSuccessMessage, avatarLocalFile: $avatarLocalFile, profile: $profile)';
}


}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res>  {
  factory $ProfileStateCopyWith(ProfileState value, $Res Function(ProfileState) _then) = _$ProfileStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String name, String email, String phoneNumber, String dateOfBirth, String birthTime, String location, String gender, bool isEditing, bool isSaving, bool isPlaceLoading, List<dynamic> placeSuggestions, bool showHideLocationList, String latitidue, String longitude, String apiErrorMessage, String apiSuccessMessage, File? avatarLocalFile, LoginResponse profile
});


$LoginResponseCopyWith<$Res> get profile;

}
/// @nodoc
class _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? name = null,Object? email = null,Object? phoneNumber = null,Object? dateOfBirth = null,Object? birthTime = null,Object? location = null,Object? gender = null,Object? isEditing = null,Object? isSaving = null,Object? isPlaceLoading = null,Object? placeSuggestions = null,Object? showHideLocationList = null,Object? latitidue = null,Object? longitude = null,Object? apiErrorMessage = null,Object? apiSuccessMessage = null,Object? avatarLocalFile = freezed,Object? profile = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String,birthTime: null == birthTime ? _self.birthTime : birthTime // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,isEditing: null == isEditing ? _self.isEditing : isEditing // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,isPlaceLoading: null == isPlaceLoading ? _self.isPlaceLoading : isPlaceLoading // ignore: cast_nullable_to_non_nullable
as bool,placeSuggestions: null == placeSuggestions ? _self.placeSuggestions : placeSuggestions // ignore: cast_nullable_to_non_nullable
as List<dynamic>,showHideLocationList: null == showHideLocationList ? _self.showHideLocationList : showHideLocationList // ignore: cast_nullable_to_non_nullable
as bool,latitidue: null == latitidue ? _self.latitidue : latitidue // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,apiErrorMessage: null == apiErrorMessage ? _self.apiErrorMessage : apiErrorMessage // ignore: cast_nullable_to_non_nullable
as String,apiSuccessMessage: null == apiSuccessMessage ? _self.apiSuccessMessage : apiSuccessMessage // ignore: cast_nullable_to_non_nullable
as String,avatarLocalFile: freezed == avatarLocalFile ? _self.avatarLocalFile : avatarLocalFile // ignore: cast_nullable_to_non_nullable
as File?,profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as LoginResponse,
  ));
}
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<$Res> get profile {
  
  return $LoginResponseCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String name,  String email,  String phoneNumber,  String dateOfBirth,  String birthTime,  String location,  String gender,  bool isEditing,  bool isSaving,  bool isPlaceLoading,  List<dynamic> placeSuggestions,  bool showHideLocationList,  String latitidue,  String longitude,  String apiErrorMessage,  String apiSuccessMessage,  File? avatarLocalFile,  LoginResponse profile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.isLoading,_that.name,_that.email,_that.phoneNumber,_that.dateOfBirth,_that.birthTime,_that.location,_that.gender,_that.isEditing,_that.isSaving,_that.isPlaceLoading,_that.placeSuggestions,_that.showHideLocationList,_that.latitidue,_that.longitude,_that.apiErrorMessage,_that.apiSuccessMessage,_that.avatarLocalFile,_that.profile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String name,  String email,  String phoneNumber,  String dateOfBirth,  String birthTime,  String location,  String gender,  bool isEditing,  bool isSaving,  bool isPlaceLoading,  List<dynamic> placeSuggestions,  bool showHideLocationList,  String latitidue,  String longitude,  String apiErrorMessage,  String apiSuccessMessage,  File? avatarLocalFile,  LoginResponse profile)  $default,) {final _that = this;
switch (_that) {
case _ProfileState():
return $default(_that.isLoading,_that.name,_that.email,_that.phoneNumber,_that.dateOfBirth,_that.birthTime,_that.location,_that.gender,_that.isEditing,_that.isSaving,_that.isPlaceLoading,_that.placeSuggestions,_that.showHideLocationList,_that.latitidue,_that.longitude,_that.apiErrorMessage,_that.apiSuccessMessage,_that.avatarLocalFile,_that.profile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String name,  String email,  String phoneNumber,  String dateOfBirth,  String birthTime,  String location,  String gender,  bool isEditing,  bool isSaving,  bool isPlaceLoading,  List<dynamic> placeSuggestions,  bool showHideLocationList,  String latitidue,  String longitude,  String apiErrorMessage,  String apiSuccessMessage,  File? avatarLocalFile,  LoginResponse profile)?  $default,) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.isLoading,_that.name,_that.email,_that.phoneNumber,_that.dateOfBirth,_that.birthTime,_that.location,_that.gender,_that.isEditing,_that.isSaving,_that.isPlaceLoading,_that.placeSuggestions,_that.showHideLocationList,_that.latitidue,_that.longitude,_that.apiErrorMessage,_that.apiSuccessMessage,_that.avatarLocalFile,_that.profile);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileState implements ProfileState {
  const _ProfileState({this.isLoading = false, this.name = "", this.email = "", this.phoneNumber = "", this.dateOfBirth = "", this.birthTime = "", this.location = "", this.gender = "", this.isEditing = false, this.isSaving = false, this.isPlaceLoading = false, final  List<dynamic> placeSuggestions = const [], this.showHideLocationList = false, this.latitidue = '', this.longitude = '', this.apiErrorMessage = '', this.apiSuccessMessage = '', this.avatarLocalFile, this.profile = const LoginResponse()}): _placeSuggestions = placeSuggestions;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String name;
@override@JsonKey() final  String email;
@override@JsonKey() final  String phoneNumber;
@override@JsonKey() final  String dateOfBirth;
// DOB
@override@JsonKey() final  String birthTime;
// TIME
@override@JsonKey() final  String location;
@override@JsonKey() final  String gender;
@override@JsonKey() final  bool isEditing;
@override@JsonKey() final  bool isSaving;
@override@JsonKey() final  bool isPlaceLoading;
 final  List<dynamic> _placeSuggestions;
@override@JsonKey() List<dynamic> get placeSuggestions {
  if (_placeSuggestions is EqualUnmodifiableListView) return _placeSuggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_placeSuggestions);
}

@override@JsonKey() final  bool showHideLocationList;
@override@JsonKey() final  String latitidue;
@override@JsonKey() final  String longitude;
@override@JsonKey() final  String apiErrorMessage;
@override@JsonKey() final  String apiSuccessMessage;
@override final  File? avatarLocalFile;
@override@JsonKey() final  LoginResponse profile;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileStateCopyWith<_ProfileState> get copyWith => __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.birthTime, birthTime) || other.birthTime == birthTime)&&(identical(other.location, location) || other.location == location)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isEditing, isEditing) || other.isEditing == isEditing)&&(identical(other.isSaving, isSaving) || other.isSaving == isSaving)&&(identical(other.isPlaceLoading, isPlaceLoading) || other.isPlaceLoading == isPlaceLoading)&&const DeepCollectionEquality().equals(other._placeSuggestions, _placeSuggestions)&&(identical(other.showHideLocationList, showHideLocationList) || other.showHideLocationList == showHideLocationList)&&(identical(other.latitidue, latitidue) || other.latitidue == latitidue)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.apiErrorMessage, apiErrorMessage) || other.apiErrorMessage == apiErrorMessage)&&(identical(other.apiSuccessMessage, apiSuccessMessage) || other.apiSuccessMessage == apiSuccessMessage)&&(identical(other.avatarLocalFile, avatarLocalFile) || other.avatarLocalFile == avatarLocalFile)&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hashAll([runtimeType,isLoading,name,email,phoneNumber,dateOfBirth,birthTime,location,gender,isEditing,isSaving,isPlaceLoading,const DeepCollectionEquality().hash(_placeSuggestions),showHideLocationList,latitidue,longitude,apiErrorMessage,apiSuccessMessage,avatarLocalFile,profile]);

@override
String toString() {
  return 'ProfileState(isLoading: $isLoading, name: $name, email: $email, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, birthTime: $birthTime, location: $location, gender: $gender, isEditing: $isEditing, isSaving: $isSaving, isPlaceLoading: $isPlaceLoading, placeSuggestions: $placeSuggestions, showHideLocationList: $showHideLocationList, latitidue: $latitidue, longitude: $longitude, apiErrorMessage: $apiErrorMessage, apiSuccessMessage: $apiSuccessMessage, avatarLocalFile: $avatarLocalFile, profile: $profile)';
}


}

/// @nodoc
abstract mixin class _$ProfileStateCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(_ProfileState value, $Res Function(_ProfileState) _then) = __$ProfileStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String name, String email, String phoneNumber, String dateOfBirth, String birthTime, String location, String gender, bool isEditing, bool isSaving, bool isPlaceLoading, List<dynamic> placeSuggestions, bool showHideLocationList, String latitidue, String longitude, String apiErrorMessage, String apiSuccessMessage, File? avatarLocalFile, LoginResponse profile
});


@override $LoginResponseCopyWith<$Res> get profile;

}
/// @nodoc
class __$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(this._self, this._then);

  final _ProfileState _self;
  final $Res Function(_ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? name = null,Object? email = null,Object? phoneNumber = null,Object? dateOfBirth = null,Object? birthTime = null,Object? location = null,Object? gender = null,Object? isEditing = null,Object? isSaving = null,Object? isPlaceLoading = null,Object? placeSuggestions = null,Object? showHideLocationList = null,Object? latitidue = null,Object? longitude = null,Object? apiErrorMessage = null,Object? apiSuccessMessage = null,Object? avatarLocalFile = freezed,Object? profile = null,}) {
  return _then(_ProfileState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: null == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String,birthTime: null == birthTime ? _self.birthTime : birthTime // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,isEditing: null == isEditing ? _self.isEditing : isEditing // ignore: cast_nullable_to_non_nullable
as bool,isSaving: null == isSaving ? _self.isSaving : isSaving // ignore: cast_nullable_to_non_nullable
as bool,isPlaceLoading: null == isPlaceLoading ? _self.isPlaceLoading : isPlaceLoading // ignore: cast_nullable_to_non_nullable
as bool,placeSuggestions: null == placeSuggestions ? _self._placeSuggestions : placeSuggestions // ignore: cast_nullable_to_non_nullable
as List<dynamic>,showHideLocationList: null == showHideLocationList ? _self.showHideLocationList : showHideLocationList // ignore: cast_nullable_to_non_nullable
as bool,latitidue: null == latitidue ? _self.latitidue : latitidue // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,apiErrorMessage: null == apiErrorMessage ? _self.apiErrorMessage : apiErrorMessage // ignore: cast_nullable_to_non_nullable
as String,apiSuccessMessage: null == apiSuccessMessage ? _self.apiSuccessMessage : apiSuccessMessage // ignore: cast_nullable_to_non_nullable
as String,avatarLocalFile: freezed == avatarLocalFile ? _self.avatarLocalFile : avatarLocalFile // ignore: cast_nullable_to_non_nullable
as File?,profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as LoginResponse,
  ));
}

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<$Res> get profile {
  
  return $LoginResponseCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

// dart format on
