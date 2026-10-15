import 'package:flutter/material.dart';
import 'custom_image_container.dart';

class LeftControls extends StatelessWidget {
  final VoidCallback onDiyaTap;
  final VoidCallback onFlowerTap;
  final VoidCallback onShellTap;

  const LeftControls({
    required this.onDiyaTap,
    required this.onFlowerTap,
    required this.onShellTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
        //  mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: onDiyaTap,
              child: CustomImageContainer(imagePath: "assets/updated/DIYA - BUTTON.png"),
            ),
            const SizedBox(height: 3.0),
            InkWell(
              onTap: onFlowerTap,
              child: CustomImageContainer(
                imagePath: "assets/updated/PHOOL- BUTTON.png",
              ),
            ),
            const SizedBox(height: 3.0),
            InkWell(
              onTap: onShellTap,
              child: CustomImageContainer(imagePath: "assets/updated/SHANK - BUTTON.png"),
            ),
            const SizedBox(height: 3.0),
            InkWell(
              onTap: onShellTap,
              child: CustomImageContainer(imagePath: "assets/updated/MUSIC- BUTTON.png"),
            ),
            const SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }
}
