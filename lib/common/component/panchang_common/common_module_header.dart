import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class CommonModuleHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  final String hintText;
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;

  const CommonModuleHeader({
    super.key,
    required this.title,
    required this.subtitle,
    required this.controller,
    this.hintText = 'Search for "Vivah Muhurat"',
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final double w = context.screenWidth;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFB37A0B),
            Color(0xFF8C5C00),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.fromLTRB(w * 0.04, 8, w * 0.04, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Button & Header Title/Subtitle
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Container(
                      width: w * 0.092,
                      height: w * 0.092,
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.25),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                        size: w * 0.046,
                      ),
                    ),
                  ),
                  SizedBox(width: w * 0.03),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: AppTextStyle.gilroyBold(
                          w * 0.056,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        subtitle,
                        style: AppTextStyle.gilroyMedium(
                          w * 0.036,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: w * 0.04),
              // Search Bar
              Container(
                height: 44,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  controller: controller,
                  onChanged: onChanged,
                  style: AppTextStyle.gilroyMedium(
                    w * 0.031,
                    color: const Color(0xFF333333),
                  ),
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: AppTextStyle.gilroyMedium(
                      w * 0.031,
                      color: const Color(0xFF616161),
                    ),
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: const Color(0xFF616161),
                      size: w * 0.051,
                    ),
                    suffixIcon: Icon(
                      Icons.mic,
                      color: const Color(0xFF333333),
                      size: w * 0.051,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
