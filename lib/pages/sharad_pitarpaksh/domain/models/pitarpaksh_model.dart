import 'package:flutter/material.dart';

class ShraadhItem {
  final String id;
  final String title;
  final String date;
  final String badgeText;
  final Color badgeColor;
  final String description;
  final String aparahnaKaal;
  final String category;
  final String iconAsset;

  const ShraadhItem({
    required this.id,
    required this.title,
    required this.date,
    required this.badgeText,
    required this.badgeColor,
    required this.description,
    required this.aparahnaKaal,
    required this.category,
    required this.iconAsset,
  });
}
