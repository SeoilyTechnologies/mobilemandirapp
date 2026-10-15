import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

import 'app_location.dart';

class LocationService {
  // Singleton
  static final LocationService _instance = LocationService._internal();
  factory LocationService() => _instance;
  LocationService._internal();

  /// Check permission
  Future<bool> _handlePermission() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      throw Exception("Location service disabled");
    }

    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        throw Exception("Permission denied");
      }
      
      // Delay to avoid race condition in iOS CoreLocation permission state changes
      await Future.delayed(const Duration(milliseconds: 500));
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception("Permission denied forever");
    }

    return true;
  }

  /// Get Current Location with Address
  Future<AppLocation> getCurrentLocation() async {
    try {
      await _handlePermission();
    } catch (e) {
      return _getDefaultLocation();
    }

    try {
      // Use modern locationSettings compliant with Geolocator v10+
      Position position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          timeLimit: Duration(seconds: 15),
        ),
      );

      // Wrap geocoding in a try-catch to prevent native reverse lookup crashes on simulators/slow networks
      try {
        List<Placemark> placemarks = await Geocoding().placemarkFromCoordinates(
          position.latitude,
          position.longitude,
        );

        if (placemarks.isNotEmpty) {
          Placemark place = placemarks.first;
          String fullAddress =
              "${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}";

          return AppLocation(
            latitude: position.latitude,
            longitude: position.longitude,
            address: fullAddress,
            city: place.locality ?? '',
            state: place.administrativeArea ?? '',
            country: place.country ?? '',
          );
        }
      } catch (e) {
        // Return coordinates as fallback address
        return AppLocation(
          latitude: position.latitude,
          longitude: position.longitude,
          address: "${position.latitude}, ${position.longitude}",
          city: '',
          state: '',
          country: '',
        );
      }
    } catch (e) {
    }

    return _getDefaultLocation();
  }

  AppLocation _getDefaultLocation() {
    return AppLocation(
      latitude: 0.0,
      longitude: 0.0,
      address: "Location Permission Denied",
      city: '',
      state: '',
      country: '',
    );
  }
}