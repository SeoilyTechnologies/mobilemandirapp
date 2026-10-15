// import 'package:geocoding/geocoding.dart';
// import 'package:geolocator/geolocator.dart';

class LocationHelper {
  // static Future<Position> getCurrentPosition() async {
  //   bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     throw Exception('Location services are disabled');
  //   }
  //
  //   LocationPermission permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       throw Exception('Location permission denied');
  //     }
  //   }
  //
  //   if (permission == LocationPermission.deniedForever) {
  //     throw Exception('Location permission permanently denied');
  //   }
  //
  //   return await Geolocator.getCurrentPosition(
  //     desiredAccuracy: LocationAccuracy.high,
  //   );
  // }
  //
  // static Future<String> getPlaceName(double lat, double lon) async {
  //   try {
  //     final placemarks = await placemarkFromCoordinates(lat, lon);
  //
  //     if (placemarks.isEmpty) return '';
  //
  //     final place = placemarks.first;
  //
  //     return place.locality ??
  //         place.subAdministrativeArea ??
  //         place.administrativeArea ??
  //         '';
  //   } catch (e) {
  //     print("❌ Error getting place name: $e");
  //     return '';
  //   }
  // }

  // static Future<Map<String, dynamic>> getCurrentLocationDetails() async {
  //   try {
  //     final pos = await getCurrentPosition();
  //     final placeName = await getPlaceName(pos.latitude, pos.longitude);
  //
  //     return {
  //       'latitude': pos.latitude,
  //       'longitude': pos.longitude,
  //       'place': placeName,
  //     };
  //   } catch (e) {
  //     print("❌ Location Error: $e");
  //     rethrow;
  //   }
  // }
}
