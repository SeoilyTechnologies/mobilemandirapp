import 'package:flutter/material.dart';
import '../../../../chadava/presentation/ui/component/chadava_header.dart';

class ChadavaDetailHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onBackTap;

  const ChadavaDetailHeader({
    super.key,
    required this.title,
    this.onBackTap,
  });

  @override
  Widget build(BuildContext context) {
    return ChadavaHeader(
      title: title,
      onBackTap: onBackTap,
    );
  }
}
