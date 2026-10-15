import 'package:gallery_saver_plus/gallery_saver.dart';

class DownloadService {
  DownloadService._(); // private constructor

  /// Save network image directly to gallery
  static Future<bool> saveImageFromUrl(String imageUrl) async {
    try {
      final bool? success = await GallerySaver.saveImage(imageUrl);
      return success ?? false;
    } catch (e) {
      return false;
    }
  }

  /// Save local image file to gallery
  static Future<bool> saveLocalImage(String filePath) async {
    try {
      final bool? success = await GallerySaver.saveImage(filePath);
      return success ?? false;
    } catch (e) {
      return false;
    }
  }

  /// Save network video to gallery
  static Future<bool> saveVideoFromUrl(String videoUrl) async {
    try {
      final bool? success = await GallerySaver.saveVideo(videoUrl);
      return success ?? false;
    } catch (e) {
      return false;
    }
  }

  /// Save local video file to gallery
  static Future<bool> saveLocalVideo(String filePath) async {
    try {
      final bool? success = await GallerySaver.saveVideo(filePath);
      return success ?? false;
    } catch (e) {
      return false;
    }
  }
}
