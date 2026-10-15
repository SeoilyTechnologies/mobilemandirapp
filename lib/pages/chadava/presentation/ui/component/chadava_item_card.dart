import 'package:flutter/material.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../../common/values/screenUtils.dart';
import '../../../data/entity/chadava_item_model.dart';

class ChadavaItemCard extends StatelessWidget {
  final ChadavaItemModel item;
  final VoidCallback onTap;

  const ChadavaItemCard({
    super.key,
    required this.item,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = item.isSelected;

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: context.w(105),
        height: context.h(118),
        child: Stack(
          children: [
            // 1. Background Card Container
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: context.w(105),
                height: context.h(118),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: isSelected ? 1.5 : 1.0,
                      color: isSelected ? const Color(0xFFE4AE23) : const Color(0xFFE0E0E0),
                    ),
                    borderRadius: BorderRadius.circular(context.w(7)),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F777777),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),

            // 2. Avatar Circular Image (No inner image border)
            Positioned(
              left: context.w(23.5),
              top: context.h(13),
              child: SizedBox(
                width: context.w(58),
                height: context.w(58),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(context.w(29)),
                  child: _buildAvatarImage(context, item.imageAsset),
                ),
              ),
            ),

            // 3. Item Title Text
            Positioned(
              left: 0,
              right: 0,
              top: context.h(75),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: context.w(4)),
                child: Text(
                  item.title,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.gilroySemiBold(
                    context.sp(13),
                    color: const Color(0xFF793C01),
                  ),
                ),
              ),
            ),

            // 4. Title Below Ornament Image Asset
            Positioned(
              left: context.w(15.5),
              top: context.h(97),
              child: SizedBox(
                width: context.w(74),
                height: context.h(11),
                child: Image.asset(
                  "assets/new_design/chadhawa_image/chadhawa_title_below_image.png",
                  fit: BoxFit.fill,
                  errorBuilder: (context, error, stackTrace) => const SizedBox.shrink(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatarImage(BuildContext context, String path) {
    if (path.startsWith('http://') || path.startsWith('https://')) {
      return Image.network(
        path,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => _buildFallbackIcon(context),
      );
    }
    return Image.asset(
      path,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) => _buildFallbackIcon(context),
    );
  }

  Widget _buildFallbackIcon(BuildContext context) {
    return Container(
      color: const Color(0xFFFFF3E8),
      child: Icon(
        item.category == 'god_seva'
            ? Icons.person_rounded
            : Icons.park_rounded,
        color: AppColor.goldDark,
        size: context.w(28),
      ),
    );
  }
}
