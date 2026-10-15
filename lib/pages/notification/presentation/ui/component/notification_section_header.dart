import 'package:flutter/material.dart';

import '../../../../../common/component/app_text_style.dart';

class NotificationSectionHeader extends StatelessWidget {
  final String title;

  const NotificationSectionHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Text(
          title,
          style: AppTextStyle.gilroySemiBold(
            18,
            color: const Color(0xff8B4A00),
          ),
        ),

        const SizedBox(width: 12),

        const Expanded(
          child: Divider(
            thickness: 1,
            color: Color(0xffD8B08B),
          ),
        )
      ],
    );
  }
}