import 'package:flutter/material.dart';
import 'package:mandirapp/common/values/fonts.dart';

import '../../../../../common/values/app_color.dart';

class PlayNowButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const PlayNowButton({
    super.key,
    required this.onPressed,
    this.title = "Play Now →",
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.newsecondaruy,
        foregroundColor: AppColor.purple,
        elevation: 0,
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
        minimumSize: const Size(0, 26),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(                // 🔥 outline yaha add hogi
            color: AppColor.white,        // border color
            width: 1,                      // border width
          ),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: AppColor.appWhiteColor,
          fontFamily: AppFont.gilroyBold,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}