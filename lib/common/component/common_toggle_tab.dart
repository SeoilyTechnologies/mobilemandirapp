import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../values/app_color.dart';

class CustomToggleSwitch extends StatelessWidget {
  final int selectedTabIndex; // Current selected tab index
  final List<String> tabNames; // List of tab names
  final Function(int) onTabChanged; // Callback when a tab is selected
  final double borderRadius; // Dynamic border radius

  const CustomToggleSwitch({
    Key? key,
    required this.selectedTabIndex,
    required this.tabNames,
    required this.onTabChanged,
    this.borderRadius = 12, // Default value if not provided
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 4.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
            color: Colors.grey.withOpacity(0.8),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            children: List.generate(
              tabNames.length,
                  (index) => _buildToggleButton(index, context),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildToggleButton(int index, BuildContext context) {
    bool isActive = selectedTabIndex == index;

    return Expanded(
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: () => onTabChanged(index),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          padding: isActive ? const EdgeInsets.all(8) : EdgeInsets.zero,
          decoration: BoxDecoration(
            color: isActive ? const Color(0xFF8A001F) : Colors.transparent,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Center(
            child: Text(
              tabNames[index],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: isActive ? Colors.white : Colors.black54,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
