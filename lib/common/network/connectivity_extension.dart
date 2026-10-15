import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:io';

extension ConnectivityExtension on Connectivity {
  /// Checks if there is an active internet connection, verifying connectivity by pinging a reliable server.
  Future<bool> get isConnected async {
    var connectivityResult = await this.checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      return false;
    }
    // Attempt to connect to an external server to verify internet access
    try {
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } catch (e) {
      return false; // No internet access
    }
  }

  /// Checks if Wi-Fi connection is active and has internet access
  Future<bool> get isConnectedToWiFi async {
    var connectivityResult = await this.checkConnectivity();
    if (connectivityResult != ConnectivityResult.wifi) return false;
    return await _hasInternetAccess();
  }

  /// Checks if mobile data connection is active and has internet access
  Future<bool> get isConnectedToMobile async {
    var connectivityResult = await this.checkConnectivity();
    if (connectivityResult != ConnectivityResult.mobile) return false;
    return await _hasInternetAccess();
  }

  // Helper function to verify internet access by attempting a connection to an external server
  Future<bool> _hasInternetAccess() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } catch (e) {
      return false;
    }
  }
}
