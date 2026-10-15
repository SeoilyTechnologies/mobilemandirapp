import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_exif_rotation/flutter_exif_rotation.dart';
import 'package:file_picker/file_picker.dart';

import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:permission_handler/permission_handler.dart';

import '../values/fonts.dart';

class CameraFileUtility {
  static void showPermissionDeniedDialog(
      BuildContext context, String permissionType) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Permission Denied",
            style: TextStyle(
                color: Colors.black,
                fontFamily: AppFont.interBlack,
                fontSize: context.screenWidth * 0.0425),
          ),
          content: Text(
            "You have denied access to $permissionType. Please grant the permission in settings.",
            style: TextStyle(
                color: Colors.black,
                fontFamily: AppFont.interBold,
                fontSize: context.screenWidth * 0.0325),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                openAppSettings();
              },
              child: Text(
                "OK",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: AppFont.interBold,
                    fontSize: context.screenWidth * 0.0425),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<File?> openCame(BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    try {
      var image = await _picker.pickImage(source: ImageSource.camera);
      if (image != null) {
        File rotatedImage =
            await FlutterExifRotation.rotateAndSaveImage(path: image.path);
        return File(rotatedImage.path);
      }

      return null;
    } catch (err) {
      showPermissionDeniedDialog(context, "Camera");
    }
  }
  Future<File?> openCameraVideo(BuildContext context) async {
    final ImagePicker _picker = ImagePicker();

    try {
      // Request camera permissions (if necessary)
      await Permission.camera.request();
      await Permission.microphone.request();

      // Pick the video from the camera

      var video = await _picker.pickVideo(source: ImageSource.camera);

      if (video != null) {
        return File(video.path);
      }
    } catch (err) {
      showPermissionDeniedDialog(context, "Camera");
    }

    return null;
  }

  Future<File?> openCameVideo(BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    try {
      var image = await _picker.pickVideo(source: ImageSource.camera);
      if (image != null) {
        return File(image.path);
      }

      return null;
    } catch (err) {
      showPermissionDeniedDialog(context, "Camera");
    }
    return null;
  }

  Future<File?> openGallery(BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    try {
      var picture = await _picker.pickImage(
          source: ImageSource.gallery, maxHeight: 400, maxWidth: 400);
      if (picture != null) {
        if (!kIsWeb) {
          File rotatedImage =
              await FlutterExifRotation.rotateAndSaveImage(path: picture.path);
          return File(rotatedImage.path);
        } else {
          return File(picture.path);
        }
      }
    } catch (err) {
      showPermissionDeniedDialog(context, "Gallery");
    }
  }


  Future<File?> openVideoPicker(BuildContext context) async {
    final ImagePicker _picker = ImagePicker();

    try {
      final XFile? galleryVideo = await _picker.pickVideo(source: ImageSource.gallery);
      if (galleryVideo != null) {
        return File(galleryVideo.path);
      }

    } catch (err) {
      // Handle permission denied or other errors
      // if (context.mounted) {
      //   showPermissionDeniedDialog(context, "Gallery");
      // }
    }

    return null;
  }




  Future<String?> _pickVideoFromNative() async {
    const platform = MethodChannel("com.underrated/video");
    try {
      final String? videoPath = await platform.invokeMethod('pickVideo');
      return videoPath;
      return videoPath;
    } on PlatformException catch (e) {
      return null;
    }
  }

  Future<List<File>> openGalleryForMultiPleImages(
      BuildContext context, int limit) async {
    List<File> selectedImages = [];
    final ImagePicker _picker = ImagePicker();

    try {
      // Pick multiple images
      final List<XFile>? imageFiles = await _picker.pickMultiImage(
        limit:2,
          imageQuality: 100, maxHeight: 400, maxWidth: 400, );

      // Add selected images to the list
      if (imageFiles != null && imageFiles.isNotEmpty) {
        for (var xfile in imageFiles) {
          File rotatedImage =
              await FlutterExifRotation.rotateAndSaveImage(path: xfile.path);
          selectedImages.add(rotatedImage);
        }
      }


    } catch (err) {
      showPermissionDeniedDialog(context, "Gallery");
    }

    return selectedImages; // Ensure the function always returns a List<File>
  }

  Future<List<File>> openGalleryForMultiMediaa(
      BuildContext context, int limit) async {
    List<File> selectedImages = [];
    final ImagePicker _picker = ImagePicker();

    try {
      // Pick multiple images
      final List<XFile>? pictures = await _picker.pickMultipleMedia(
        imageQuality: 100,
        limit: limit,
        maxHeight: 400,
        maxWidth: 400,
      );

      if (pictures != null && pictures.isNotEmpty) {
        if (!kIsWeb) {
          for (var xfile in pictures) {
            File rotatedImage =
                await FlutterExifRotation.rotateAndSaveImage(path: xfile.path);
            selectedImages.add(rotatedImage);
          }
        }
      }
    } catch (err) {
      showPermissionDeniedDialog(context, "Gallery");
    }

    return selectedImages; // Ensure the function always returns a List<File>
  }

  Future<File?> pickDocumentt(BuildContext context) async {
    try {
      FilePickerResult? result = await FilePicker.pickFiles();
      if (result != null && result.files.single.path != null) {
        return File(result.files.single.path!);
      }
    } catch (err) {
      showPermissionDeniedDialog(context, "File System");
    }
    return null;
  }
  static Future<bool> _checkAndRequestStoragePermission(BuildContext context) async {
    try {
      // Check current permission status
      var status = await Permission.storage.status;

      // If permanently denied, show settings dialog
      if (status.isPermanentlyDenied) {
        if (context.mounted) {
          showPermissionDeniedDialog(context, "Storage");
        }
        return false;
      }

      // If not granted, request permission with rationale
      if (!status.isGranted) {
        // Show explanation dialog if first denial
        if (status.isDenied && context.mounted) {
          await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(context.l10n.permissionRequired),
              content: Text(
                  "The app needs access to your storage to select files and images"),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(context.l10n.cancel),
                ),
                TextButton(
                  onPressed: () async {
                    Navigator.pop(context);
                    status = await Permission.storage.request();
                  },
                  child: Text(context.l10n.allow),
                ),
              ],
            ),
          );
        } else {
          status = await Permission.storage.request();
        }
      }

      return status.isGranted;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> _ddcheckAndRequestStoragePermission(BuildContext context) async {
    try {
      // Check current permission status
      var status = await Permission.storage.status;

      // If permission is already granted
      if (status.isGranted) {
        return true;
      }
      if (!status.isGranted) {
        await Permission.storage.request();
        return true;
      }

      // If permanently denied, show settings dialog
      if (status.isPermanentlyDenied) {
        if (context.mounted) {
          showPermissionDeniedDialog(context, "Storage");
        }
        return false;
      }

      // Show explanation dialog for first request or after denial
      if (status.isDenied || status.isRestricted) {
        final shouldRequest = await showDialog<bool>(
          context: context,
          barrierDismissible: false,
          builder: (context) => AlertDialog(
            title: Text(context.l10n.storagePermissionRequired),
            content: Text(
                "This app needs access to your storage to select files and images"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context, false);
                },
                child: Text(context.l10n.cancel),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: Text(context.l10n.allow),
              ),
            ],
          ),
        ) ?? false;

        if (!shouldRequest) {
          return false;
        }
      }

      // Request the permission
      status = await Permission.storage.request();

      // Handle limited permission on Android (if needed)
      if (status.isLimited) {
        return true;
      }

      return status.isGranted;
    } catch (e) {
      return false;
    }
  }

  Future<Map<String, dynamic>?> pickDocumentWithFileName(BuildContext context) async {
    try {
      //Check and request permission first
      final hasPermission = await _ddcheckAndRequestStoragePermission(context);
      if (!hasPermission){

        if (!hasPermission) return null;
      };

      // // Request storage permission
      // final permissionStatus = await _requestStoragePermission(context);
      // if (permissionStatus != PermissionStatus.granted) {
      //   if (context.mounted) {
      //     ScaffoldMessenger.of(context).showSnackBar(
      //       SnackBar(content: Text("Permission denied. Cannot access files.Please give permission")),
      //     );
      //     openAppSettings();
      //   }
      //   return null;
      // }
      // Now proceed with file picking
      FilePickerResult? result = await FilePicker.pickFiles(
        type: FileType.any,
        allowMultiple: false,
      );

      if (result != null && result.files.single.path != null) {
        String fileName = result.files.single.name;
        File file = File(result.files.single.path!);
        return {'file': file, 'fileName': fileName};
      }
    } catch (err) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(context.l10n.failedToPickFile)),
        );
      }
    }
    return null;
  }

  // Helper function to request storage permission
  Future<PermissionStatus> _requestStoragePermission(BuildContext context) async {
    if (Platform.isAndroid) {
      // On Android, request MANAGE_EXTERNAL_STORAGE for API 30+ (Android 11+)
      if (await Permission.manageExternalStorage.isDenied) {
        await Permission.manageExternalStorage.request();
      }
      // Also request regular storage permission
      return await Permission.storage.request();
    } else if (Platform.isIOS) {
      // On iOS, request photos permission for images and documents
      return await Permission.photos.request();
    }
    return PermissionStatus.granted; // Default for other platforms
  }


}
