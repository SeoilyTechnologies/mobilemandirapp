import 'package:flutter/material.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../common/component/app_text_style.dart';

class FavoriteFilterChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const FavoriteFilterChip({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 0, top: 4),
      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: isSelected ? 8 : 12,
            ),
            decoration: BoxDecoration(
              color: isSelected ? Colors.orange : Colors.white,
              borderRadius: BorderRadius.circular(isSelected ? 12 : 2),
              border: Border.all(
                color: isSelected ? Colors.orange : Colors.transparent,
              ),
            ),

            child: Text(
              label,
              style: AppTextStyle.medium(
                context.screenWidth * 0.032,
                color: isSelected ? Colors.white : Colors.black87,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
