import 'package:flutter/material.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/values/screenUtils.dart';

class ChadavaSankalpBottomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const ChadavaSankalpBottomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.h(47),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF793C01),
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          padding: EdgeInsets.zero,
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: AppTextStyle.gilroySemiBold(
            context.sp(16),
            color: Colors.white,
            height: 1.60,
          ),
        ),
      ),
    );
  }
}
