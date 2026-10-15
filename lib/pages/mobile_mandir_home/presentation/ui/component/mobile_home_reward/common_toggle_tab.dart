import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/values/fonts.dart';

import '../../../../../../common/values/app_color.dart';

import 'package:flutter/material.dart';

class ToggleTabItem {
  final String title;
  final String imagePath;

  ToggleTabItem({required this.title, required this.imagePath});
}

class CustomToggleSwitchNew extends StatelessWidget {
  final int selectedTabIndex;
  final List<ToggleTabItem> tabs;
  final Function(int) onTabChanged;
  final double borderRadius;

  const CustomToggleSwitchNew({
    Key? key,
    required this.selectedTabIndex,
    required this.tabs,
    required this.onTabChanged,
    this.borderRadius = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4,top: 12),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.pinkBackgroundddd,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: AppColor.pinkBackground, width: 2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Row(
            children: List.generate(
              tabs.length,
                  (index) => _buildToggleButton(index),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildToggleButton(int index) {
    bool isActive = selectedTabIndex == index;

    return Expanded(
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () => onTabChanged(index),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: isActive ? AppColor.newsecondaruy : Colors.transparent,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                tabs[index].imagePath,
                height: 20,
                width: 20,
                color: isActive ? Colors.white : AppColor.newsecondaruy,
                // color: isActive ? Colors.white : Colors.black54,
              ),
              const SizedBox(width: 8),
              Text(
                tabs[index].title,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: AppFont.gilroySemiBold,
                  color: isActive ? Colors.white : AppColor.newsecondaruy,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
