class AppLocation {
  final double latitude;
  final double longitude;
  final String address;
  final String city;
  final String state;
  final String country;

  AppLocation({
    required this.latitude,
    required this.longitude,
    required this.address,
    required this.city,
    required this.state,
    required this.country,
  });

  @override
  String toString() {
    return 'Lat: $latitude, Lng: $longitude, Address: $address';
  }
}