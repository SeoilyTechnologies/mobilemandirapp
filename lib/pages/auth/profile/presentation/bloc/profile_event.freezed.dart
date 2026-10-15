// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent()';
}


}

/// @nodoc
class $ProfileEventCopyWith<$Res>  {
$ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EditProfileLocationChanged value)?  locationChanged,TResult Function( EditProfileLocationLatLong value)?  setLatLong,TResult Function( EditProfileFetchLocationSuggestions value)?  fetchLocationSuggestions,TResult Function( EditProfileSelectLocation value)?  selectLocation,TResult Function( EditProfileShowHideLocationListEvent value)?  showHideLocationList,TResult Function( RefreshProfile value)?  refreshProfile,TResult Function( EditProfileDateOfBirthChanged value)?  dateOfBirthChanged,TResult Function( EditProfileDateOfTimeChanged value)?  dateOfTimeChanged,TResult Function( LoadProfile value)?  loadProfile,TResult Function( ToggleEdit value)?  toggleEdit,TResult Function( UpdateName value)?  updateName,TResult Function( UpdateEmail value)?  updateEmail,TResult Function( UpdatePhone value)?  updatePhone,TResult Function( UpdateDOB value)?  updateDOB,TResult Function( UpdateLocation value)?  updateLocation,TResult Function( UpdateGender value)?  updateGender,TResult Function( SaveProfile value)?  saveProfile,TResult Function( UpdateAvatar value)?  updateAvatar,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EditProfileLocationChanged() when locationChanged != null:
return locationChanged(_that);case EditProfileLocationLatLong() when setLatLong != null:
return setLatLong(_that);case EditProfileFetchLocationSuggestions() when fetchLocationSuggestions != null:
return fetchLocationSuggestions(_that);case EditProfileSelectLocation() when selectLocation != null:
return selectLocation(_that);case EditProfileShowHideLocationListEvent() when showHideLocationList != null:
return showHideLocationList(_that);case RefreshProfile() when refreshProfile != null:
return refreshProfile(_that);case EditProfileDateOfBirthChanged() when dateOfBirthChanged != null:
return dateOfBirthChanged(_that);case EditProfileDateOfTimeChanged() when dateOfTimeChanged != null:
return dateOfTimeChanged(_that);case LoadProfile() when loadProfile != null:
return loadProfile(_that);case ToggleEdit() when toggleEdit != null:
return toggleEdit(_that);case UpdateName() when updateName != null:
return updateName(_that);case UpdateEmail() when updateEmail != null:
return updateEmail(_that);case UpdatePhone() when updatePhone != null:
return updatePhone(_that);case UpdateDOB() when updateDOB != null:
return updateDOB(_that);case UpdateLocation() when updateLocation != null:
return updateLocation(_that);case UpdateGender() when updateGender != null:
return updateGender(_that);case SaveProfile() when saveProfile != null:
return saveProfile(_that);case UpdateAvatar() when updateAvatar != null:
return updateAvatar(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EditProfileLocationChanged value)  locationChanged,required TResult Function( EditProfileLocationLatLong value)  setLatLong,required TResult Function( EditProfileFetchLocationSuggestions value)  fetchLocationSuggestions,required TResult Function( EditProfileSelectLocation value)  selectLocation,required TResult Function( EditProfileShowHideLocationListEvent value)  showHideLocationList,required TResult Function( RefreshProfile value)  refreshProfile,required TResult Function( EditProfileDateOfBirthChanged value)  dateOfBirthChanged,required TResult Function( EditProfileDateOfTimeChanged value)  dateOfTimeChanged,required TResult Function( LoadProfile value)  loadProfile,required TResult Function( ToggleEdit value)  toggleEdit,required TResult Function( UpdateName value)  updateName,required TResult Function( UpdateEmail value)  updateEmail,required TResult Function( UpdatePhone value)  updatePhone,required TResult Function( UpdateDOB value)  updateDOB,required TResult Function( UpdateLocation value)  updateLocation,required TResult Function( UpdateGender value)  updateGender,required TResult Function( SaveProfile value)  saveProfile,required TResult Function( UpdateAvatar value)  updateAvatar,}){
final _that = this;
switch (_that) {
case EditProfileLocationChanged():
return locationChanged(_that);case EditProfileLocationLatLong():
return setLatLong(_that);case EditProfileFetchLocationSuggestions():
return fetchLocationSuggestions(_that);case EditProfileSelectLocation():
return selectLocation(_that);case EditProfileShowHideLocationListEvent():
return showHideLocationList(_that);case RefreshProfile():
return refreshProfile(_that);case EditProfileDateOfBirthChanged():
return dateOfBirthChanged(_that);case EditProfileDateOfTimeChanged():
return dateOfTimeChanged(_that);case LoadProfile():
return loadProfile(_that);case ToggleEdit():
return toggleEdit(_that);case UpdateName():
return updateName(_that);case UpdateEmail():
return updateEmail(_that);case UpdatePhone():
return updatePhone(_that);case UpdateDOB():
return updateDOB(_that);case UpdateLocation():
return updateLocation(_that);case UpdateGender():
return updateGender(_that);case SaveProfile():
return saveProfile(_that);case UpdateAvatar():
return updateAvatar(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EditProfileLocationChanged value)?  locationChanged,TResult? Function( EditProfileLocationLatLong value)?  setLatLong,TResult? Function( EditProfileFetchLocationSuggestions value)?  fetchLocationSuggestions,TResult? Function( EditProfileSelectLocation value)?  selectLocation,TResult? Function( EditProfileShowHideLocationListEvent value)?  showHideLocationList,TResult? Function( RefreshProfile value)?  refreshProfile,TResult? Function( EditProfileDateOfBirthChanged value)?  dateOfBirthChanged,TResult? Function( EditProfileDateOfTimeChanged value)?  dateOfTimeChanged,TResult? Function( LoadProfile value)?  loadProfile,TResult? Function( ToggleEdit value)?  toggleEdit,TResult? Function( UpdateName value)?  updateName,TResult? Function( UpdateEmail value)?  updateEmail,TResult? Function( UpdatePhone value)?  updatePhone,TResult? Function( UpdateDOB value)?  updateDOB,TResult? Function( UpdateLocation value)?  updateLocation,TResult? Function( UpdateGender value)?  updateGender,TResult? Function( SaveProfile value)?  saveProfile,TResult? Function( UpdateAvatar value)?  updateAvatar,}){
final _that = this;
switch (_that) {
case EditProfileLocationChanged() when locationChanged != null:
return locationChanged(_that);case EditProfileLocationLatLong() when setLatLong != null:
return setLatLong(_that);case EditProfileFetchLocationSuggestions() when fetchLocationSuggestions != null:
return fetchLocationSuggestions(_that);case EditProfileSelectLocation() when selectLocation != null:
return selectLocation(_that);case EditProfileShowHideLocationListEvent() when showHideLocationList != null:
return showHideLocationList(_that);case RefreshProfile() when refreshProfile != null:
return refreshProfile(_that);case EditProfileDateOfBirthChanged() when dateOfBirthChanged != null:
return dateOfBirthChanged(_that);case EditProfileDateOfTimeChanged() when dateOfTimeChanged != null:
return dateOfTimeChanged(_that);case LoadProfile() when loadProfile != null:
return loadProfile(_that);case ToggleEdit() when toggleEdit != null:
return toggleEdit(_that);case UpdateName() when updateName != null:
return updateName(_that);case UpdateEmail() when updateEmail != null:
return updateEmail(_that);case UpdatePhone() when updatePhone != null:
return updatePhone(_that);case UpdateDOB() when updateDOB != null:
return updateDOB(_that);case UpdateLocation() when updateLocation != null:
return updateLocation(_that);case UpdateGender() when updateGender != null:
return updateGender(_that);case SaveProfile() when saveProfile != null:
return saveProfile(_that);case UpdateAvatar() when updateAvatar != null:
return updateAvatar(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String location)?  locationChanged,TResult Function( String latitude,  String longitude)?  setLatLong,TResult Function( String query)?  fetchLocationSuggestions,TResult Function( String description,  String placeId)?  selectLocation,TResult Function( bool showHide)?  showHideLocationList,TResult Function()?  refreshProfile,TResult Function( String dob)?  dateOfBirthChanged,TResult Function( String dobTime)?  dateOfTimeChanged,TResult Function()?  loadProfile,TResult Function()?  toggleEdit,TResult Function( String name)?  updateName,TResult Function( String email)?  updateEmail,TResult Function( String phone)?  updatePhone,TResult Function( String dob)?  updateDOB,TResult Function( String location)?  updateLocation,TResult Function( String gender)?  updateGender,TResult Function()?  saveProfile,TResult Function( File file)?  updateAvatar,required TResult orElse(),}) {final _that = this;
switch (_that) {
case EditProfileLocationChanged() when locationChanged != null:
return locationChanged(_that.location);case EditProfileLocationLatLong() when setLatLong != null:
return setLatLong(_that.latitude,_that.longitude);case EditProfileFetchLocationSuggestions() when fetchLocationSuggestions != null:
return fetchLocationSuggestions(_that.query);case EditProfileSelectLocation() when selectLocation != null:
return selectLocation(_that.description,_that.placeId);case EditProfileShowHideLocationListEvent() when showHideLocationList != null:
return showHideLocationList(_that.showHide);case RefreshProfile() when refreshProfile != null:
return refreshProfile();case EditProfileDateOfBirthChanged() when dateOfBirthChanged != null:
return dateOfBirthChanged(_that.dob);case EditProfileDateOfTimeChanged() when dateOfTimeChanged != null:
return dateOfTimeChanged(_that.dobTime);case LoadProfile() when loadProfile != null:
return loadProfile();case ToggleEdit() when toggleEdit != null:
return toggleEdit();case UpdateName() when updateName != null:
return updateName(_that.name);case UpdateEmail() when updateEmail != null:
return updateEmail(_that.email);case UpdatePhone() when updatePhone != null:
return updatePhone(_that.phone);case UpdateDOB() when updateDOB != null:
return updateDOB(_that.dob);case UpdateLocation() when updateLocation != null:
return updateLocation(_that.location);case UpdateGender() when updateGender != null:
return updateGender(_that.gender);case SaveProfile() when saveProfile != null:
return saveProfile();case UpdateAvatar() when updateAvatar != null:
return updateAvatar(_that.file);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String location)  locationChanged,required TResult Function( String latitude,  String longitude)  setLatLong,required TResult Function( String query)  fetchLocationSuggestions,required TResult Function( String description,  String placeId)  selectLocation,required TResult Function( bool showHide)  showHideLocationList,required TResult Function()  refreshProfile,required TResult Function( String dob)  dateOfBirthChanged,required TResult Function( String dobTime)  dateOfTimeChanged,required TResult Function()  loadProfile,required TResult Function()  toggleEdit,required TResult Function( String name)  updateName,required TResult Function( String email)  updateEmail,required TResult Function( String phone)  updatePhone,required TResult Function( String dob)  updateDOB,required TResult Function( String location)  updateLocation,required TResult Function( String gender)  updateGender,required TResult Function()  saveProfile,required TResult Function( File file)  updateAvatar,}) {final _that = this;
switch (_that) {
case EditProfileLocationChanged():
return locationChanged(_that.location);case EditProfileLocationLatLong():
return setLatLong(_that.latitude,_that.longitude);case EditProfileFetchLocationSuggestions():
return fetchLocationSuggestions(_that.query);case EditProfileSelectLocation():
return selectLocation(_that.description,_that.placeId);case EditProfileShowHideLocationListEvent():
return showHideLocationList(_that.showHide);case RefreshProfile():
return refreshProfile();case EditProfileDateOfBirthChanged():
return dateOfBirthChanged(_that.dob);case EditProfileDateOfTimeChanged():
return dateOfTimeChanged(_that.dobTime);case LoadProfile():
return loadProfile();case ToggleEdit():
return toggleEdit();case UpdateName():
return updateName(_that.name);case UpdateEmail():
return updateEmail(_that.email);case UpdatePhone():
return updatePhone(_that.phone);case UpdateDOB():
return updateDOB(_that.dob);case UpdateLocation():
return updateLocation(_that.location);case UpdateGender():
return updateGender(_that.gender);case SaveProfile():
return saveProfile();case UpdateAvatar():
return updateAvatar(_that.file);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String location)?  locationChanged,TResult? Function( String latitude,  String longitude)?  setLatLong,TResult? Function( String query)?  fetchLocationSuggestions,TResult? Function( String description,  String placeId)?  selectLocation,TResult? Function( bool showHide)?  showHideLocationList,TResult? Function()?  refreshProfile,TResult? Function( String dob)?  dateOfBirthChanged,TResult? Function( String dobTime)?  dateOfTimeChanged,TResult? Function()?  loadProfile,TResult? Function()?  toggleEdit,TResult? Function( String name)?  updateName,TResult? Function( String email)?  updateEmail,TResult? Function( String phone)?  updatePhone,TResult? Function( String dob)?  updateDOB,TResult? Function( String location)?  updateLocation,TResult? Function( String gender)?  updateGender,TResult? Function()?  saveProfile,TResult? Function( File file)?  updateAvatar,}) {final _that = this;
switch (_that) {
case EditProfileLocationChanged() when locationChanged != null:
return locationChanged(_that.location);case EditProfileLocationLatLong() when setLatLong != null:
return setLatLong(_that.latitude,_that.longitude);case EditProfileFetchLocationSuggestions() when fetchLocationSuggestions != null:
return fetchLocationSuggestions(_that.query);case EditProfileSelectLocation() when selectLocation != null:
return selectLocation(_that.description,_that.placeId);case EditProfileShowHideLocationListEvent() when showHideLocationList != null:
return showHideLocationList(_that.showHide);case RefreshProfile() when refreshProfile != null:
return refreshProfile();case EditProfileDateOfBirthChanged() when dateOfBirthChanged != null:
return dateOfBirthChanged(_that.dob);case EditProfileDateOfTimeChanged() when dateOfTimeChanged != null:
return dateOfTimeChanged(_that.dobTime);case LoadProfile() when loadProfile != null:
return loadProfile();case ToggleEdit() when toggleEdit != null:
return toggleEdit();case UpdateName() when updateName != null:
return updateName(_that.name);case UpdateEmail() when updateEmail != null:
return updateEmail(_that.email);case UpdatePhone() when updatePhone != null:
return updatePhone(_that.phone);case UpdateDOB() when updateDOB != null:
return updateDOB(_that.dob);case UpdateLocation() when updateLocation != null:
return updateLocation(_that.location);case UpdateGender() when updateGender != null:
return updateGender(_that.gender);case SaveProfile() when saveProfile != null:
return saveProfile();case UpdateAvatar() when updateAvatar != null:
return updateAvatar(_that.file);case _:
  return null;

}
}

}

/// @nodoc


class EditProfileLocationChanged implements ProfileEvent {
  const EditProfileLocationChanged(this.location);
  

 final  String location;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditProfileLocationChangedCopyWith<EditProfileLocationChanged> get copyWith => _$EditProfileLocationChangedCopyWithImpl<EditProfileLocationChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileLocationChanged&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,location);

@override
String toString() {
  return 'ProfileEvent.locationChanged(location: $location)';
}


}

/// @nodoc
abstract mixin class $EditProfileLocationChangedCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $EditProfileLocationChangedCopyWith(EditProfileLocationChanged value, $Res Function(EditProfileLocationChanged) _then) = _$EditProfileLocationChangedCopyWithImpl;
@useResult
$Res call({
 String location
});




}
/// @nodoc
class _$EditProfileLocationChangedCopyWithImpl<$Res>
    implements $EditProfileLocationChangedCopyWith<$Res> {
  _$EditProfileLocationChangedCopyWithImpl(this._self, this._then);

  final EditProfileLocationChanged _self;
  final $Res Function(EditProfileLocationChanged) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? location = null,}) {
  return _then(EditProfileLocationChanged(
null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EditProfileLocationLatLong implements ProfileEvent {
  const EditProfileLocationLatLong(this.latitude, this.longitude);
  

 final  String latitude;
 final  String longitude;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditProfileLocationLatLongCopyWith<EditProfileLocationLatLong> get copyWith => _$EditProfileLocationLatLongCopyWithImpl<EditProfileLocationLatLong>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileLocationLatLong&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}


@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'ProfileEvent.setLatLong(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $EditProfileLocationLatLongCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $EditProfileLocationLatLongCopyWith(EditProfileLocationLatLong value, $Res Function(EditProfileLocationLatLong) _then) = _$EditProfileLocationLatLongCopyWithImpl;
@useResult
$Res call({
 String latitude, String longitude
});




}
/// @nodoc
class _$EditProfileLocationLatLongCopyWithImpl<$Res>
    implements $EditProfileLocationLatLongCopyWith<$Res> {
  _$EditProfileLocationLatLongCopyWithImpl(this._self, this._then);

  final EditProfileLocationLatLong _self;
  final $Res Function(EditProfileLocationLatLong) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,}) {
  return _then(EditProfileLocationLatLong(
null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EditProfileFetchLocationSuggestions implements ProfileEvent {
  const EditProfileFetchLocationSuggestions(this.query);
  

 final  String query;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditProfileFetchLocationSuggestionsCopyWith<EditProfileFetchLocationSuggestions> get copyWith => _$EditProfileFetchLocationSuggestionsCopyWithImpl<EditProfileFetchLocationSuggestions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileFetchLocationSuggestions&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'ProfileEvent.fetchLocationSuggestions(query: $query)';
}


}

/// @nodoc
abstract mixin class $EditProfileFetchLocationSuggestionsCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $EditProfileFetchLocationSuggestionsCopyWith(EditProfileFetchLocationSuggestions value, $Res Function(EditProfileFetchLocationSuggestions) _then) = _$EditProfileFetchLocationSuggestionsCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$EditProfileFetchLocationSuggestionsCopyWithImpl<$Res>
    implements $EditProfileFetchLocationSuggestionsCopyWith<$Res> {
  _$EditProfileFetchLocationSuggestionsCopyWithImpl(this._self, this._then);

  final EditProfileFetchLocationSuggestions _self;
  final $Res Function(EditProfileFetchLocationSuggestions) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(EditProfileFetchLocationSuggestions(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EditProfileSelectLocation implements ProfileEvent {
  const EditProfileSelectLocation({required this.description, required this.placeId});
  

 final  String description;
 final  String placeId;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditProfileSelectLocationCopyWith<EditProfileSelectLocation> get copyWith => _$EditProfileSelectLocationCopyWithImpl<EditProfileSelectLocation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileSelectLocation&&(identical(other.description, description) || other.description == description)&&(identical(other.placeId, placeId) || other.placeId == placeId));
}


@override
int get hashCode => Object.hash(runtimeType,description,placeId);

@override
String toString() {
  return 'ProfileEvent.selectLocation(description: $description, placeId: $placeId)';
}


}

/// @nodoc
abstract mixin class $EditProfileSelectLocationCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $EditProfileSelectLocationCopyWith(EditProfileSelectLocation value, $Res Function(EditProfileSelectLocation) _then) = _$EditProfileSelectLocationCopyWithImpl;
@useResult
$Res call({
 String description, String placeId
});




}
/// @nodoc
class _$EditProfileSelectLocationCopyWithImpl<$Res>
    implements $EditProfileSelectLocationCopyWith<$Res> {
  _$EditProfileSelectLocationCopyWithImpl(this._self, this._then);

  final EditProfileSelectLocation _self;
  final $Res Function(EditProfileSelectLocation) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? description = null,Object? placeId = null,}) {
  return _then(EditProfileSelectLocation(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,placeId: null == placeId ? _self.placeId : placeId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EditProfileShowHideLocationListEvent implements ProfileEvent {
  const EditProfileShowHideLocationListEvent(this.showHide);
  

 final  bool showHide;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditProfileShowHideLocationListEventCopyWith<EditProfileShowHideLocationListEvent> get copyWith => _$EditProfileShowHideLocationListEventCopyWithImpl<EditProfileShowHideLocationListEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileShowHideLocationListEvent&&(identical(other.showHide, showHide) || other.showHide == showHide));
}


@override
int get hashCode => Object.hash(runtimeType,showHide);

@override
String toString() {
  return 'ProfileEvent.showHideLocationList(showHide: $showHide)';
}


}

/// @nodoc
abstract mixin class $EditProfileShowHideLocationListEventCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $EditProfileShowHideLocationListEventCopyWith(EditProfileShowHideLocationListEvent value, $Res Function(EditProfileShowHideLocationListEvent) _then) = _$EditProfileShowHideLocationListEventCopyWithImpl;
@useResult
$Res call({
 bool showHide
});




}
/// @nodoc
class _$EditProfileShowHideLocationListEventCopyWithImpl<$Res>
    implements $EditProfileShowHideLocationListEventCopyWith<$Res> {
  _$EditProfileShowHideLocationListEventCopyWithImpl(this._self, this._then);

  final EditProfileShowHideLocationListEvent _self;
  final $Res Function(EditProfileShowHideLocationListEvent) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? showHide = null,}) {
  return _then(EditProfileShowHideLocationListEvent(
null == showHide ? _self.showHide : showHide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class RefreshProfile implements ProfileEvent {
  const RefreshProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.refreshProfile()';
}


}




/// @nodoc


class EditProfileDateOfBirthChanged implements ProfileEvent {
  const EditProfileDateOfBirthChanged(this.dob);
  

 final  String dob;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditProfileDateOfBirthChangedCopyWith<EditProfileDateOfBirthChanged> get copyWith => _$EditProfileDateOfBirthChangedCopyWithImpl<EditProfileDateOfBirthChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileDateOfBirthChanged&&(identical(other.dob, dob) || other.dob == dob));
}


@override
int get hashCode => Object.hash(runtimeType,dob);

@override
String toString() {
  return 'ProfileEvent.dateOfBirthChanged(dob: $dob)';
}


}

/// @nodoc
abstract mixin class $EditProfileDateOfBirthChangedCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $EditProfileDateOfBirthChangedCopyWith(EditProfileDateOfBirthChanged value, $Res Function(EditProfileDateOfBirthChanged) _then) = _$EditProfileDateOfBirthChangedCopyWithImpl;
@useResult
$Res call({
 String dob
});




}
/// @nodoc
class _$EditProfileDateOfBirthChangedCopyWithImpl<$Res>
    implements $EditProfileDateOfBirthChangedCopyWith<$Res> {
  _$EditProfileDateOfBirthChangedCopyWithImpl(this._self, this._then);

  final EditProfileDateOfBirthChanged _self;
  final $Res Function(EditProfileDateOfBirthChanged) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dob = null,}) {
  return _then(EditProfileDateOfBirthChanged(
null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EditProfileDateOfTimeChanged implements ProfileEvent {
  const EditProfileDateOfTimeChanged(this.dobTime);
  

 final  String dobTime;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditProfileDateOfTimeChangedCopyWith<EditProfileDateOfTimeChanged> get copyWith => _$EditProfileDateOfTimeChangedCopyWithImpl<EditProfileDateOfTimeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileDateOfTimeChanged&&(identical(other.dobTime, dobTime) || other.dobTime == dobTime));
}


@override
int get hashCode => Object.hash(runtimeType,dobTime);

@override
String toString() {
  return 'ProfileEvent.dateOfTimeChanged(dobTime: $dobTime)';
}


}

/// @nodoc
abstract mixin class $EditProfileDateOfTimeChangedCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $EditProfileDateOfTimeChangedCopyWith(EditProfileDateOfTimeChanged value, $Res Function(EditProfileDateOfTimeChanged) _then) = _$EditProfileDateOfTimeChangedCopyWithImpl;
@useResult
$Res call({
 String dobTime
});




}
/// @nodoc
class _$EditProfileDateOfTimeChangedCopyWithImpl<$Res>
    implements $EditProfileDateOfTimeChangedCopyWith<$Res> {
  _$EditProfileDateOfTimeChangedCopyWithImpl(this._self, this._then);

  final EditProfileDateOfTimeChanged _self;
  final $Res Function(EditProfileDateOfTimeChanged) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dobTime = null,}) {
  return _then(EditProfileDateOfTimeChanged(
null == dobTime ? _self.dobTime : dobTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadProfile implements ProfileEvent {
  const LoadProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.loadProfile()';
}


}




/// @nodoc


class ToggleEdit implements ProfileEvent {
  const ToggleEdit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleEdit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.toggleEdit()';
}


}




/// @nodoc


class UpdateName implements ProfileEvent {
  const UpdateName(this.name);
  

 final  String name;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateNameCopyWith<UpdateName> get copyWith => _$UpdateNameCopyWithImpl<UpdateName>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateName&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'ProfileEvent.updateName(name: $name)';
}


}

/// @nodoc
abstract mixin class $UpdateNameCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $UpdateNameCopyWith(UpdateName value, $Res Function(UpdateName) _then) = _$UpdateNameCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$UpdateNameCopyWithImpl<$Res>
    implements $UpdateNameCopyWith<$Res> {
  _$UpdateNameCopyWithImpl(this._self, this._then);

  final UpdateName _self;
  final $Res Function(UpdateName) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(UpdateName(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateEmail implements ProfileEvent {
  const UpdateEmail(this.email);
  

 final  String email;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateEmailCopyWith<UpdateEmail> get copyWith => _$UpdateEmailCopyWithImpl<UpdateEmail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEmail&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'ProfileEvent.updateEmail(email: $email)';
}


}

/// @nodoc
abstract mixin class $UpdateEmailCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $UpdateEmailCopyWith(UpdateEmail value, $Res Function(UpdateEmail) _then) = _$UpdateEmailCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$UpdateEmailCopyWithImpl<$Res>
    implements $UpdateEmailCopyWith<$Res> {
  _$UpdateEmailCopyWithImpl(this._self, this._then);

  final UpdateEmail _self;
  final $Res Function(UpdateEmail) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(UpdateEmail(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdatePhone implements ProfileEvent {
  const UpdatePhone(this.phone);
  

 final  String phone;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePhoneCopyWith<UpdatePhone> get copyWith => _$UpdatePhoneCopyWithImpl<UpdatePhone>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePhone&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,phone);

@override
String toString() {
  return 'ProfileEvent.updatePhone(phone: $phone)';
}


}

/// @nodoc
abstract mixin class $UpdatePhoneCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $UpdatePhoneCopyWith(UpdatePhone value, $Res Function(UpdatePhone) _then) = _$UpdatePhoneCopyWithImpl;
@useResult
$Res call({
 String phone
});




}
/// @nodoc
class _$UpdatePhoneCopyWithImpl<$Res>
    implements $UpdatePhoneCopyWith<$Res> {
  _$UpdatePhoneCopyWithImpl(this._self, this._then);

  final UpdatePhone _self;
  final $Res Function(UpdatePhone) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,}) {
  return _then(UpdatePhone(
null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateDOB implements ProfileEvent {
  const UpdateDOB(this.dob);
  

 final  String dob;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDOBCopyWith<UpdateDOB> get copyWith => _$UpdateDOBCopyWithImpl<UpdateDOB>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDOB&&(identical(other.dob, dob) || other.dob == dob));
}


@override
int get hashCode => Object.hash(runtimeType,dob);

@override
String toString() {
  return 'ProfileEvent.updateDOB(dob: $dob)';
}


}

/// @nodoc
abstract mixin class $UpdateDOBCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $UpdateDOBCopyWith(UpdateDOB value, $Res Function(UpdateDOB) _then) = _$UpdateDOBCopyWithImpl;
@useResult
$Res call({
 String dob
});




}
/// @nodoc
class _$UpdateDOBCopyWithImpl<$Res>
    implements $UpdateDOBCopyWith<$Res> {
  _$UpdateDOBCopyWithImpl(this._self, this._then);

  final UpdateDOB _self;
  final $Res Function(UpdateDOB) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? dob = null,}) {
  return _then(UpdateDOB(
null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateLocation implements ProfileEvent {
  const UpdateLocation(this.location);
  

 final  String location;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateLocationCopyWith<UpdateLocation> get copyWith => _$UpdateLocationCopyWithImpl<UpdateLocation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateLocation&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,location);

@override
String toString() {
  return 'ProfileEvent.updateLocation(location: $location)';
}


}

/// @nodoc
abstract mixin class $UpdateLocationCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $UpdateLocationCopyWith(UpdateLocation value, $Res Function(UpdateLocation) _then) = _$UpdateLocationCopyWithImpl;
@useResult
$Res call({
 String location
});




}
/// @nodoc
class _$UpdateLocationCopyWithImpl<$Res>
    implements $UpdateLocationCopyWith<$Res> {
  _$UpdateLocationCopyWithImpl(this._self, this._then);

  final UpdateLocation _self;
  final $Res Function(UpdateLocation) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? location = null,}) {
  return _then(UpdateLocation(
null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateGender implements ProfileEvent {
  const UpdateGender(this.gender);
  

 final  String gender;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateGenderCopyWith<UpdateGender> get copyWith => _$UpdateGenderCopyWithImpl<UpdateGender>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateGender&&(identical(other.gender, gender) || other.gender == gender));
}


@override
int get hashCode => Object.hash(runtimeType,gender);

@override
String toString() {
  return 'ProfileEvent.updateGender(gender: $gender)';
}


}

/// @nodoc
abstract mixin class $UpdateGenderCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $UpdateGenderCopyWith(UpdateGender value, $Res Function(UpdateGender) _then) = _$UpdateGenderCopyWithImpl;
@useResult
$Res call({
 String gender
});




}
/// @nodoc
class _$UpdateGenderCopyWithImpl<$Res>
    implements $UpdateGenderCopyWith<$Res> {
  _$UpdateGenderCopyWithImpl(this._self, this._then);

  final UpdateGender _self;
  final $Res Function(UpdateGender) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? gender = null,}) {
  return _then(UpdateGender(
null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SaveProfile implements ProfileEvent {
  const SaveProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.saveProfile()';
}


}




/// @nodoc


class UpdateAvatar implements ProfileEvent {
  const UpdateAvatar(this.file);
  

 final  File file;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateAvatarCopyWith<UpdateAvatar> get copyWith => _$UpdateAvatarCopyWithImpl<UpdateAvatar>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateAvatar&&(identical(other.file, file) || other.file == file));
}


@override
int get hashCode => Object.hash(runtimeType,file);

@override
String toString() {
  return 'ProfileEvent.updateAvatar(file: $file)';
}


}

/// @nodoc
abstract mixin class $UpdateAvatarCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $UpdateAvatarCopyWith(UpdateAvatar value, $Res Function(UpdateAvatar) _then) = _$UpdateAvatarCopyWithImpl;
@useResult
$Res call({
 File file
});




}
/// @nodoc
class _$UpdateAvatarCopyWithImpl<$Res>
    implements $UpdateAvatarCopyWith<$Res> {
  _$UpdateAvatarCopyWithImpl(this._self, this._then);

  final UpdateAvatar _self;
  final $Res Function(UpdateAvatar) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? file = null,}) {
  return _then(UpdateAvatar(
null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File,
  ));
}


}

// dart format on
