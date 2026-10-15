import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class CommonVivaranItem {
  final String label;
  final String value;

  const CommonVivaranItem({required this.label, required this.value});
}

class CommonVivaranGrid extends StatelessWidget {
  final List<CommonVivaranItem> items;
  final double childAspectRatio;

  const CommonVivaranGrid({
    super.key,
    required this.items,
    this.childAspectRatio = 3.1,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: childAspectRatio,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: items.map((item) {
        return _buildPanchangBox(context, item.label, item.value);
      }).toList(),
    );
  }

  Widget _buildPanchangBox(BuildContext context, String label, String value) {
    final double w = context.screenWidth;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF9EE),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: AppTextStyle.gilroySemiBold(
              w * 0.031,
              color: const Color(0xFFE4AE23),
            ),
          ),
          const SizedBox(height: 1),
          Text(
            value,
            style: AppTextStyle.gilroySemiBold(
              w * 0.036,
              color: const Color(0xFF000000),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
