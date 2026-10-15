import 'package:flutter/material.dart';
import '../../../../../common/component/app_text_style.dart';

class SevaCard extends StatelessWidget {
  final String title;
  final String badgeText;
  final String value;
  final Gradient? gradient;
  final String? backgroundAsset;
  final String rightImageAsset;
  final double? customHeight;
  final double? rightImageBottom;
  final double? rightImageRight;
  final double? rightImageWidth;
  final double? rightImageHeight;
  final VoidCallback? onTap;

  const SevaCard({
    super.key,
    required this.title,
    this.badgeText = '',
    required this.value,
    this.gradient,
    this.backgroundAsset,
    required this.rightImageAsset,
    this.customHeight,
    this.rightImageBottom,
    this.rightImageRight,
    this.rightImageWidth,
    this.rightImageHeight,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: customHeight ?? (0.108 * screenHeight),
        margin: EdgeInsets.symmetric(
          horizontal: 0.0133 * screenWidth,
          vertical: 0.0049 * screenHeight,
        ),
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(0.0267 * screenWidth),
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            /// Background Image if gradient not supplied or as overlay
            if (backgroundAsset != null &&
                backgroundAsset!.isNotEmpty &&
                gradient == null)
              Positioned.fill(
                child: Image.asset(
                  backgroundAsset!,
                  fit: BoxFit.cover,
                ),
              ),

            /// Right illustration / 3D Icon (positioned at bottom-right below title text)
            Positioned(
              right: rightImageRight ?? (0.0213 * screenWidth),
              bottom: rightImageBottom ?? (0.0086 * screenHeight),
              child: Image.asset(
                rightImageAsset,
                width: rightImageWidth ?? (0.1147 * screenWidth),
                height: rightImageHeight ?? (0.0468 * screenHeight),
                fit: BoxFit.contain,
              ),
            ),

            /// Left Content: Title, Badge, Value
            Padding(
              padding: EdgeInsets.only(
                left: 0.032 * screenWidth,
                top: 0.0086 * screenHeight,
                bottom: 0.0086 * screenHeight,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.gilroySemiBold(
                      0.0347 * screenWidth,
                      color: Colors.black,
                    ),
                  ),

                  if (badgeText.isNotEmpty)
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 0.0213 * screenWidth,
                        vertical: 0.0025 * screenHeight,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF793C01),
                        borderRadius: BorderRadius.circular(
                          0.0242 * screenWidth,
                        ),
                      ),
                      child: Text(
                        badgeText,
                        textAlign: TextAlign.center,
                        style: AppTextStyle.gilroySemiBold(
                          0.0267 * screenWidth,
                          color: Colors.white,
                        ),
                      ),
                    ),

                  Text(
                    value,
                    style: AppTextStyle.gilroyBold(
                      0.048 * screenWidth,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

