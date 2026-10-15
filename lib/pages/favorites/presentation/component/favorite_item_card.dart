import 'package:flutter/material.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../common/component/app_text_style.dart';

class FavoriteItemCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String plays;
  final String duration;

  const FavoriteItemCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.plays,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 4),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            spreadRadius: 1,
            offset: const Offset(0, 2),
            color: Colors.black.withOpacity(0.06),
          ),
        ],
      ),
      child: Row(
        children: [
          // Emoji icon area
          Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xfffff6dd),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.network("$imagePath"),
          ),
          const SizedBox(width: 16),

          // Song info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyle.bold(context.screenWidth*0.038,color: Colors.black),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                ),
                const SizedBox(height: 6),

                Row(
                  children: [
                    const Icon(Icons.play_arrow, size: 18, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(plays, style: AppTextStyle.lightText(context.screenWidth*0.038,color: Colors.grey),),

                    const SizedBox(width: 12),
                     Text(
                      "•",
                      style: AppTextStyle.lightText(context.screenWidth*0.038,color: Colors.grey),
                    ),
                    const SizedBox(width: 12),

                    Text(
                      duration,
                      style: AppTextStyle.lightText(context.screenWidth*0.038,color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Play button
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.play_arrow, color: Colors.white, size: 26),
          ),

          const SizedBox(width: 12),

          // Delete button
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.12),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.delete, color: Colors.red, size: 22),
          ),
        ],
      ),
    );
  }
}
