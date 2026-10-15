import 'package:flutter/material.dart';
import '../../../../chadava/presentation/ui/component/chadava_header.dart';

class ChadavaSankalpHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onBackTap;

  const ChadavaSankalpHeader({
    super.key,
    this.title = 'Kitni Bar Chadhayein',
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
