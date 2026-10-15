import 'dart:ui';

class ResumeItem {
  final String title;
  final String iconAsset;
  final VoidCallback? onTap;

  ResumeItem({
    required this.title,
    required this.iconAsset,
    this.onTap,
  });
}
