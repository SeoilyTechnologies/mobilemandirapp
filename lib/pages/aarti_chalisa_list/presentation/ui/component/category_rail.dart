import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../common/routes/exports.dart';
import '../../../data/entity/aarti_category_item.dart';

class CategoryRail extends StatelessWidget {
  final List<AartiCategoryItem> items;
  final int selectedIndex;
  final Function(int) onSelect;

  const CategoryRail({
    super.key,
    required this.items,
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 26),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          final isSelected = index == selectedIndex;

          return GestureDetector(
            onTap: () => onSelect(index),
            child: Row(
              children: [

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: AssetImage(item.image),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          item.getLocalizedTitle(context),
                          textAlign: TextAlign.center,
                          style: AppTextStyle.gilroySemiBold(context.screenWidth*0.033,color: AppColor.fullBlack),
                        ),
                      ],
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: 4,
                  height: 92,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? const Color(0xFF8B4A10)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}



class CategoryRailMedium extends StatelessWidget {
  final List<AartiCategoryItem> items;
  final int selectedIndex;
  final Function(int) onSelect;

  const CategoryRailMedium({
    super.key,
    required this.items,
    required this.selectedIndex,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 148,
      height: context.screenHeight,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 0),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          final isSelected = index == selectedIndex;

          return GestureDetector(
            onTap: () => onSelect(index),
            child: Row(
              children: [

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: AssetImage(item.image),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          item.getLocalizedTitle(context),
                          textAlign: TextAlign.center,
                          style: AppTextStyle.gilroySemiBold(context.screenWidth*0.033,color: AppColor.fullBlack),
                        ),
                      ],
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: 4,
                  height: 92,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? const Color(0xFF8B4A10)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

