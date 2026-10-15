import 'package:flutter/material.dart';
import '../../../../../common/values/screenUtils.dart';
import '../../../data/entity/chadava_item_model.dart';
import 'chadava_item_card.dart';

class ChadavaItemsGrid extends StatelessWidget {
  final List<ChadavaItemModel> items;
  final Function(String id) onItemSelect;
  final int crossAxisCount;

  const ChadavaItemsGrid({
    super.key,
    required this.items,
    required this.onItemSelect,
    this.crossAxisCount = 3,
  });

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      child: GridView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: context.w(12),
          mainAxisSpacing: context.h(12),
          childAspectRatio: 105 / 118, // Exact Figma card proportion
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ChadavaItemCard(
            item: item,
            onTap: () => onItemSelect(item.id),
          );
        },
      ),
    );
  }
}
