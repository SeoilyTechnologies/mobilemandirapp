import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class CommonBottomActionBar extends StatelessWidget {
  final String primaryButtonText;
  final VoidCallback onReminderTap;
  final VoidCallback onPrimaryTap;

  const CommonBottomActionBar({
    super.key,
    this.primaryButtonText = "Book Pandit",
    required this.onReminderTap,
    required this.onPrimaryTap,
  });

  @override
  Widget build(BuildContext context) {
    final double w = context.screenWidth;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFFAF7F0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 47,
                child: OutlinedButton(
                  onPressed: onReminderTap,
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFFBF0),
                    side: const BorderSide(
                      color: Color(0xFF793C01),
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text(
                    "Reminder",
                    style: AppTextStyle.gilroySemiBold(
                      w * 0.041,
                      color: const Color(0xFF793C01),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 11),
            Expanded(
              child: SizedBox(
                height: 47,
                child: ElevatedButton(
                  onPressed: onPrimaryTap,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF793C01),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text(
                    primaryButtonText,
                    style: AppTextStyle.gilroySemiBold(
                      w * 0.041,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
