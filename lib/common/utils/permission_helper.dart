import 'package:permission_handler/permission_handler.dart';

class PermissionHelper {
  /// Checks a permission and requests it if not granted.
  /// Returns true if granted, false otherwise.
  static Future<bool> checkAndRequest(Permission permission) async {
    // Check current status
    final status = await permission.status;

    if (status.isGranted) {
      return true;
    }

    // If permanently denied → direct to app settings
    if (status.isPermanentlyDenied) {
      await openAppSettings();
      return false;
    }

    // Request permission
    final result = await permission.request();
    return result.isGranted;
  }

  /// Example bundled permissions (optional helper methods)
  static Future<bool> requestLocation() async {
    return await checkAndRequest(Permission.locationWhenInUse);
  }

  static Future<bool> requestCamera() async {
    return await checkAndRequest(Permission.camera);
  }

  static Future<bool> requestStorage() async {
    return await checkAndRequest(Permission.storage);
  }
}
