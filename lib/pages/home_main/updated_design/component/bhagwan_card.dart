import 'package:flutter/material.dart';
import 'package:mandirapp/common/values/app_color.dart';

class BhagwanCard extends StatelessWidget {
  final String image;
  const BhagwanCard({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // full width
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.white54, // border color
          width: 4, // border width
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3), // soft shadow
            blurRadius: 6,
            offset: const Offset(0, 4), // shadow below
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13), // slightly smaller for border visibility
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
