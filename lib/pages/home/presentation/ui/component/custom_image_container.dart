import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  final String imagePath;

  CustomImageContainer({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74,
      height: 74,
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage('assets/images/swastikcircle.png'),
      //   ),
      // ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Image.asset(
            imagePath,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
