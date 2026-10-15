import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../network/app_constant.dart';
import 'asset_image.dart';



class NetworkImageWidget extends StatelessWidget {
  final String imageUrl;
  final double? radiusAll;
  final double radiusTopRight;
  final double radiusTopLeft;
  final double radiusBottomRight;
  final double radiusBottomLeft;
  final double imageHeight;
  final double imageWidth;
  final BoxFit imageFitType;
  final Color? color;
  final String? placeHolder;
  final bool fullimage;

  const NetworkImageWidget({
    Key? key,
    required this.imageUrl,
    this.radiusAll,
    this.fullimage = false,
    this.radiusTopLeft = 0.0,
    this.radiusBottomRight = 0.0,
    this.radiusBottomLeft = 0.0,
    this.radiusTopRight = 0.0,
    required this.imageHeight,
    required this.imageWidth,
    this.color,
    this.placeHolder,
    this.imageFitType = BoxFit.fill,
  }) : super(key: key);

  String get _resolvedUrl {
    final trimmed = imageUrl.trim();
    if (trimmed.isEmpty) return '';
    if (fullimage || trimmed.startsWith('http://') || trimmed.startsWith('https://')) {
      return trimmed;
    }
    final base = AppConstant.fileBaseUrl.endsWith('/')
        ? AppConstant.fileBaseUrl
        : '${AppConstant.fileBaseUrl}/';
    final cleanPath = trimmed.startsWith('/') ? trimmed.substring(1) : trimmed;
    return '$base$cleanPath';
  }

  @override
  Widget build(BuildContext context) {
    final finalUrl = _resolvedUrl;

    if (finalUrl.isEmpty) {
      return AssetImageWidget(
        placeHolder ?? 'assets/icons/no-image.png',
        radiusAll: radiusAll,
        radiusTopLeft: radiusTopLeft,
        radiusTopRight: radiusTopRight,
        radiusBottomLeft: radiusBottomLeft,
        radiusBottomRight: radiusBottomRight,
        imageHeight: imageHeight,
        imageWidth: imageWidth,
        imageFitType: imageFitType,
      );
    }

    //print("🚀 [IMAGE cURL] (Ready to run):\ncurl -I '$finalUrl'");

    return ClipRRect(
      borderRadius: radiusAll == null
          ? BorderRadius.only(
              topRight: Radius.circular(radiusTopRight),
              topLeft: Radius.circular(radiusTopLeft),
              bottomLeft: Radius.circular(radiusBottomLeft),
              bottomRight: Radius.circular(radiusBottomRight),
            )
          : BorderRadius.circular(radiusAll!),
      child: Image.network(
        finalUrl,
        height: imageHeight,
        width: imageWidth,
        fit: imageFitType,
        color: color,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return SizedBox(
            height: imageHeight,
            width: imageWidth,
            child: const Center(
              child: CupertinoActivityIndicator(
                radius: 14,
                color: Color.fromARGB(255, 25, 132, 28),
              ),
            ),
          );
        },
        errorBuilder: (context, error, stackTrace) {
          return AssetImageWidget(
            placeHolder ?? 'assets/icons/no-image.png',
            radiusAll: radiusAll,
            radiusTopLeft: radiusTopLeft,
            radiusTopRight: radiusTopRight,
            radiusBottomLeft: radiusBottomLeft,
            radiusBottomRight: radiusBottomRight,
            imageHeight: imageHeight,
            imageWidth: imageWidth,
            imageFitType: BoxFit.contain,
          );
        },
      ),
    );
  }
}
