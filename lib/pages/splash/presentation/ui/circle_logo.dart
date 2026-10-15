import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final String imagePath;
  final double size;

  const CircleImage({super.key, required this.imagePath, this.size = 100});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0, // shadow depth
      shape: const CircleBorder(), // round shape
      clipBehavior: Clip.antiAlias, // clip to circle
      child: Padding(
        padding: EdgeInsets.all(size * 0.09),
        child: Image.asset(
          imagePath,
          width: size,
          height: size,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
