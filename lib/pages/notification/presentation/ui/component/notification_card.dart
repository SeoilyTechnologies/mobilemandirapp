import 'package:flutter/material.dart';

import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/values/screenUtils.dart';

class NotificationCard extends StatelessWidget {
  final String title;
  final String description;
  final String time;
  final bool isRead;
  final String type;
  final VoidCallback? onTap;

  const NotificationCard({
    super.key,
    required this.title,
    required this.description,
    required this.time,
    this.isRead = true,
    this.type = '',
    this.onTap,
  });

  IconData _getIcon() {
    switch (type.toLowerCase()) {
      case 'seva':
        return Icons.volunteer_activism_outlined;
      case 'aarti':
        return Icons.music_note_outlined;
      case 'coins':
      case 'reward':
        return Icons.monetization_on_outlined;
      default:
        return Icons.notifications_none_rounded;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: double.infinity,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: isRead ? Colors.white : const Color(0xFFFFF8EE),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: isRead
                ? Colors.transparent
                : const Color(0xFFE8C89A).withValues(alpha: 0.6),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: isRead ? 0.04 : 0.07),
              blurRadius: 12,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Icon Container
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xffB5620E), Color(0xff8B4A00)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                _getIcon(),
                color: Colors.white,
                size: 20,
              ),
            ),

            SizedBox(width: context.screenWidth * .03),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: AppTextStyle.gilroySemiBold(
                            15,
                            color: isRead
                                ? const Color(0xff1A1A1A)
                                : const Color(0xff8B4A00),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 8),
                      // Unread indicator dot
                      if (!isRead)
                        Container(
                          width: 8,
                          height: 8,
                          margin: const EdgeInsets.only(top: 5),
                          decoration: const BoxDecoration(
                            color: Color(0xffB5620E),
                            shape: BoxShape.circle,
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    style: AppTextStyle.gilroyRegular(
                      13,
                      color: const Color(0xff666666),
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    time,
                    style: AppTextStyle.gilroyRegular(
                      12,
                      color: const Color(0xff999999),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}