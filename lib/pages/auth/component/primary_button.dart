import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import '../../../common/values/app_color.dart';


class GodDetailPageActionButtonPrimary extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const GodDetailPageActionButtonPrimary({required this.title, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 38,
        decoration: BoxDecoration(
          color: AppColor.newsecondaruy,
          borderRadius: BorderRadius.circular(4),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: AppTextStyle.gilroyBold(
            context.screenWidth * 0.037,
            color: AppColor.appWhiteColor,
          ),
        ),
      ),
    );
  }
}

class PrimaryButtonWithImage extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  const PrimaryButtonWithImage({
    required this.title,
    required this.imagePath,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 8,right: 8),
        height: 44,
        decoration: BoxDecoration(
          color: AppColor.newsecondaruy,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: AppTextStyle.gilroyBold(
                context.screenWidth * 0.042,
                color: AppColor.appWhiteColor,
              ),
            ),
            const SizedBox(width: 12),
            Image.asset(
              imagePath,
              width: 16,
              height: 16,
              color: AppColor.appWhiteColor,
            ),
          ],
        ),
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const PrimaryButton({required this.title, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 44,
        decoration: BoxDecoration(
          color: AppColor.newsecondaruy,
          borderRadius: BorderRadius.circular(4),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: AppTextStyle.gilroyBold(
            context.screenWidth * 0.042,
            color: AppColor.appWhiteColor,
          ),
        ),
      ),
    );
  }
}


class PrimaryButtonMedium extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const PrimaryButtonMedium({required this.title, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 52,
        decoration: BoxDecoration(
          color: AppColor.newsecondaruy,
          borderRadius: BorderRadius.circular(4),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: AppTextStyle.gilroyBold(
            context.screenWidth * 0.036,

            color: AppColor.appWhiteColor,
          ),
        ),
      ),
    );
  }
}


class PrimaryButtonLarge extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const PrimaryButtonLarge({required this.title, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: context.screenHeight*0.07,
        decoration: BoxDecoration(
          color: AppColor.newsecondaruy,
          borderRadius: BorderRadius.circular(4),
        ),
        alignment: Alignment.center,
        child: Center(child: Text(
          title,
          style: AppTextStyle.gilroyBold(
            context.screenWidth * 0.027,

            color: AppColor.appWhiteColor,
          ),
        ),)
      ),
    );
  }
}
