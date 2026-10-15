import 'package:flutter/material.dart';

class FestivalItem {
  final String id;
  final String title;
  final String date;
  final String badgeText;
  final Color badgeColor;
  final String description;
  final String daysLeftText;
  final String category;
  final String iconAsset;

  const FestivalItem({
    required this.id,
    required this.title,
    required this.date,
    required this.badgeText,
    required this.badgeColor,
    required this.description,
    required this.daysLeftText,
    required this.category,
    required this.iconAsset,
  });
}
