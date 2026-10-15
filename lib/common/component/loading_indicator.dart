import 'package:flutter/cupertino.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
     //   color: Colors.black.withOpacity(0.5),
        width: context.screenWidth,
        height: context.screenHeight,
        child: Center(
          child: Container(
            width: 80,
            height: 80,

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(
              "assets/new_design/icon/loadericon.gif",
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
