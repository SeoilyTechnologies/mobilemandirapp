import 'package:flutter/material.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../common/component/app_text_style.dart';

class ThingsNotToDoCard extends StatelessWidget {
  final String title;
  final List<String> points;
  final String remedyText;

  const ThingsNotToDoCard({
    super.key,
    required this.title,
    required this.points,
    required this.remedyText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF3E9),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.bold(context.screenWidth*0.038,color: Colors.black),
          ),
          const SizedBox(height: 12),

          // Bullet points
          ...points.map((e) => Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("•  ", style: TextStyle(fontSize: 16, color: Colors.black87)),
                Expanded(
                  child: Text(
                    e,
                    style: AppTextStyle.medium(context.screenWidth*0.033,color: Colors.black),
                  ),
                ),
              ],
            ),
          )),

          const SizedBox(height: 12),

          // Remedy box
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
            decoration: BoxDecoration(
              color: const Color(0xFFFFE0D5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              remedyText,

              style:  AppTextStyle.medium(context.screenWidth*0.034,color: Color(0xFFD14F29)),
            ),
          ),
        ],
      ),
    );
  }
}

// Example usage:
// ThingsNotToDoCard(
//   title: "Things NOT to do today",
//   points: [
//     "Avoid starting new ventures",
//     "Refrain from financial investments",
//   ],
//   remedyText: "🙏 Remedy: Chant Om Namah Shivaya 21 times",
// );