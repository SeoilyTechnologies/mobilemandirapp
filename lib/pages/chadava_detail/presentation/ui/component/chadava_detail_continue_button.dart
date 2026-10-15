import 'package:flutter/material.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/values/screenUtils.dart';

class ChadavaDetailContinueButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ChadavaDetailContinueButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.h(47),
      child: ElevatedButton(
        onPressed: onPressed ?? () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF793C01),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(context.w(5)),
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
