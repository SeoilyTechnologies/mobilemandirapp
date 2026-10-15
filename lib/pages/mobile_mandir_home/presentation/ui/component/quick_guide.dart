import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class QuickGuideCard extends StatelessWidget {
  const QuickGuideCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 15,right: 16,bottom: 54),child: Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xfffff6e5), // soft cream background
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xfff2e6d3),
          width: 1.2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            "Quick Guide",
            style: AppTextStyle.bold(context.screenWidth*0.044,color: Colors.black),
          ),

          const SizedBox(height: 16),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // LEFT COLUMN
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _GuideItem(emoji: "✨", label: "Shubha - Best"),
                    SizedBox(height: 12),
                    _GuideItem(emoji: "💰", label: "Laabha - Profit"),
                    SizedBox(height: 12),
                    _GuideItem(emoji: "⚠️", label: "Roga - Avoid"),
                  ],
                ),
              ),

              // RIGHT COLUMN
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _GuideItem(emoji: "💧", label: "Amrit - Excellent"),
                    SizedBox(height: 12),
                    _GuideItem(emoji: "🕴️", label: "Chara - Travel"),
                    SizedBox(height: 12),
                    _GuideItem(emoji: "⛔", label: "Kaal - Bad"),
                  ],
                ),
              ),
            ],
          ),

        ],
      ),
    ),);
  }
}

// --------------------------------------------------
// Single Row Item (Emoji + Label)
// --------------------------------------------------
class _GuideItem extends StatelessWidget {
  final String emoji;
  final String label;

  const _GuideItem({
    required this.emoji,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(emoji, style: const TextStyle(fontSize: 20)),
        const SizedBox(width: 10),
        Text(
          label,
          style: AppTextStyle.medium(context.screenWidth*0.034,color: Colors.black),
        ),
      ],
    );
  }
}
