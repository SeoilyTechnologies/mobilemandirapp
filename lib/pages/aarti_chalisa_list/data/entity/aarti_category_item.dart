import 'package:flutter/material.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';

class AartiCategoryItem {
  final String title;
  final String image;

  const AartiCategoryItem({
    required this.title,
    required this.image,
  });

  String getLocalizedTitle(BuildContext context) {
    switch (title.toLowerCase()) {
      case 'aarti':
        return context.l10n.aarti;
      case 'bhajan':
        return context.l10n.bhajan;
      case 'chalisa':
        return context.l10n.chalisa;
      case 'katha':
        return context.l10n.katha;
      case 'mantra':
        return context.l10n.mantra;
      case 'stuti':
        return context.l10n.stuti;
      default:
        return title;
    }
  }

  static const List<AartiCategoryItem> items = [
    AartiCategoryItem(
      title: "Aarti",
      image: "assets/new_design/background/arti_icon.png",
    ),
    AartiCategoryItem(
      title: "Bhajan",
      image: "assets/new_design/background/bhajan_icon.png",
    ),
    AartiCategoryItem(
      title: "Chalisa",
      image: "assets/new_design/background/chalisa_icon.png",
    ),
    AartiCategoryItem(
      title: "Katha",
      image: "assets/new_design/background/katha_icon.png",
    ),
    AartiCategoryItem(
      title: "Mantra",
      image: "assets/new_design/background/mantra_icon.png",
    ),
    AartiCategoryItem(
      title: "Stuti",
      image: "assets/new_design/background/stuti_icon.png",
    ),
  ];
}