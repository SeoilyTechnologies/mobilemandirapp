import 'package:flutter/material.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/values/screenUtils.dart';

class ChadavaContinueButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ChadavaContinueButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.h(48),
      child: ElevatedButton(
        onPressed: onPressed ?? () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF793C01),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(context.w(8)),
          ),
          elevation: 0,
        ),
        child: Text(
          'Continue',
          textAlign: TextAlign.center,
          style: AppTextStyle.gilroyBold(
            context.sp(16),
            color: Colors.white,
            height: 1.2,
          ),
        ),
      ),
    );
  }
}
