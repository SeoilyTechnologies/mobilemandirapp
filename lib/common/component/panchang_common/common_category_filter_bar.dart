import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class CommonCategoryFilterBar extends StatelessWidget {
  final List<String> categories;
  final String selectedCategory;
  final ValueChanged<String> onCategorySelected;

  const CommonCategoryFilterBar({
    super.key,
    required this.categories,
    required this.selectedCategory,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    final double w = context.screenWidth;

    return SizedBox(
      height: 28,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final cat = categories[index];
          final isSelected = selectedCategory == cat;

          return GestureDetector(
            onTap: () => onCategorySelected(cat),
            child: Container(
              height: 28,
              margin: const EdgeInsets.only(right: 12),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: isSelected ? const Color(0xFF793C01) : Colors.white,
                borderRadius: BorderRadius.circular(15.5),
                border: Border.all(
                  color: const Color(0xFF793C01),
                  width: 1.0,
                ),
              ),
              child: Center(
                child: Text(
                  cat,
                  textAlign: TextAlign.center,
                  style: isSelected
                      ? AppTextStyle.gilroySemiBold(
                          w * 0.031,
                          color: const Color(0xFFFFFFFF),
                        )
                      : AppTextStyle.gilroyMedium(
                          w * 0.031,
                          color: const Color(0xFF793C01),
                        ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
