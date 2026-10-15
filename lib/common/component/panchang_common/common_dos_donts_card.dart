import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class CommonDosDontsCard extends StatelessWidget {
  final List<String> dos;
  final List<String> donts;

  const CommonDosDontsCard({
    super.key,
    required this.dos,
    required this.donts,
  });

  @override
  Widget build(BuildContext context) {
    final double w = context.screenWidth;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Dos Box
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFEAF4EC),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dos",
                  style: AppTextStyle.gilroyBold(
                    w * 0.031,
                    color: const Color(0xFF2E7D32),
                  ),
                ),
                const SizedBox(height: 6),
                ...dos.map((item) => _buildBulletItem(item, const Color(0xFF2E7D32), w)),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        // Na Karein Box
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFFDE8E8),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Na Karein",
                  style: AppTextStyle.gilroyBold(
                    w * 0.031,
                    color: const Color(0xFFC62828),
                  ),
                ),
                const SizedBox(height: 6),
                ...donts.map((item) => _buildBulletItem(item, const Color(0xFFC62828), w)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBulletItem(String text, Color color, double w) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "• ",
            style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 12),
          ),
          Expanded(
            child: Text(
              text,
              style: AppTextStyle.gilroyRegular(
                w * 0.026,
                color: const Color(0xFF333333),
                height: 1.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
