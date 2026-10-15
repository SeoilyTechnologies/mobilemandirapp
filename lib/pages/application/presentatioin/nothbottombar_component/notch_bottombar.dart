import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

Widget buildPage(int index) {
  List<Widget> _widget = [Container(), Container(), Container(), Container()];

  return _widget[index];
}

extension NotchBottomBarExtension on List<Widget> {
  Widget notchBottomBar({
    required int currentIndex,
    required Function(int) onTap,
  }) {
    final List<String> labels = ["Home", "Penchang", "Temples", "Explore"];

    final List<String> iconPaths = [

    ];

    return GestureDetector(
      onTap: () {},
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        elevation: 5,
        color: Colors.white,
        child: SizedBox(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildTabItem(0, currentIndex, labels, iconPaths, onTap),
              _buildTabItem(1, currentIndex, labels, iconPaths, onTap),
              const SizedBox(width: 40), // space for FAB
              _buildTabItem(2, currentIndex, labels, iconPaths, onTap),
              _buildTabItem(3, currentIndex, labels, iconPaths, onTap),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabItem(
    int index,
    int currentIndex,
    List<String> labels,
    List<String> iconPaths,
    Function(int) onTap,
  ) {
    final bool isActive = currentIndex == index;

    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPaths[index],
            height: 28,
            width: 28,
            color: isActive ? Colors.black : Colors.grey,
          ),
          const SizedBox(height: 2),
          Transform.translate(
            offset: const Offset(0, -4),
            child: Text(
              labels[index],
              style: TextStyle(
                color: isActive ? Colors.black : Colors.grey,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
