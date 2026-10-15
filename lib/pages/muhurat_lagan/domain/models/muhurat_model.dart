import 'package:flutter/material.dart';

class MuhuratItem {
  final String id;
  final String title;
  final String date;
  final String badgeText;
  final Color badgeColor;
  final String tithi;
  final String paksha;
  final String nakshatra;
  final String shubhTime;
  final String category;
  final String iconAsset;

  const MuhuratItem({
    required this.id,
    required this.title,
    required this.date,
    required this.badgeText,
    required this.badgeColor,
    required this.tithi,
    required this.paksha,
    required this.nakshatra,
    required this.shubhTime,
    required this.category,
    required this.iconAsset,
  });
}

class PanchangDetail {
  final String tithi;
  final String paksha;
  final String nakshatra;
  final String yoga;
  final String karan;
  final String day;

  const PanchangDetail({
    required this.tithi,
    required this.paksha,
    required this.nakshatra,
    required this.yoga,
    required this.karan,
    required this.day,
  });
}

class ChoghadiyaSlot {
  final String name;
  final String time;
  final bool isAuspicious;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;

  const ChoghadiyaSlot({
    required this.name,
    required this.time,
    required this.isAuspicious,
    required this.backgroundColor,
    required this.textColor,
    required this.borderColor,
  });
}

class AuspiciousSlotInfo {
  final int number;
  final String title;
  final String description;

  const AuspiciousSlotInfo({
    required this.number,
    required this.title,
    required this.description,
  });
}
