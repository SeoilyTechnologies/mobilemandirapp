import 'package:flutter/material.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class MusicControl extends StatelessWidget {
  final VoidCallback onTap;

  const MusicControl({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0, right: 8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: context.screenWidth * 0.1 + 12,
          height: context.screenHeight * 0.1 - context.screenHeight * 0.04,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/swastikcircle.png'),
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(
                'assets/images/music.png',
                width: context.screenWidth * 0.07 - 5,
                height: context.screenHeight * 0.04 - 5,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
