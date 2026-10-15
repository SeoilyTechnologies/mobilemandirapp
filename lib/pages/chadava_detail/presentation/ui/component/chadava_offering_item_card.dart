import 'package:flutter/material.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../../common/values/screenUtils.dart';
import '../../../data/entity/chadava_offering_model.dart';

class ChadavaOfferingItemCard extends StatelessWidget {
  final ChadavaOfferingModel offering;
  final VoidCallback onTap;

  const ChadavaOfferingItemCard({
    super.key,
    required this.offering,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = offering.isSelected;

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Main Option Container (345x54)
          Container(
            width: double.infinity,
            height: context.h(54),
            padding: EdgeInsets.symmetric(horizontal: context.w(10)),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: isSelected
                      ? const Color(0xFFE4AE23)
                      : const Color(0xFFE0E0E0),
                ),
                borderRadius: BorderRadius.circular(context.w(5)),
              ),
              shadows: isSelected
                  ? []
                  : const [
                      BoxShadow(
                        color: Color(0x3F777777),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                      ),
                    ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Left Icon Box (#F4E9D6)
                Container(
                  width: context.w(38),
                  height: context.w(38),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF4E9D6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(context.w(5)),
                    ),
                  ),
                  child: Center(
                    child: SizedBox(
                      width: context.w(25),
                      height: context.w(25),
                      child: _buildIcon(context, offering.iconAsset),
                    ),
                  ),
                ),

                SizedBox(width: context.w(12)),

                // Title & Subtitle Column
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        offering.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.gilroySemiBold(
                          context.sp(15),
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 1),
                      Text(
                        offering.subtitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.gilroyMedium(
                          context.sp(11),
                          color: Colors.black.withValues(alpha: 0.70),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(width: context.w(8)),

                // Price Tag (₹101)
                Text(
                  '₹${offering.price}',
                  textAlign: TextAlign.right,
                  style: AppTextStyle.gilroyBold(
                    context.sp(18),
                    color: const Color(0xFF793C01),
                  ),
                ),
                SizedBox(width: context.w(4)),
              ],
            ),
          ),

          // Top-Right Gold Selection Badge (When Selected)
          if (isSelected)
            Positioned(
              right: -4,
              top: -4,
              child: Container(
                width: context.w(20),
                height: context.w(20),
                decoration: const BoxDecoration(
                  color: Color(0xFFE4AE23),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Icons.check_rounded,
                    size: context.w(14),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildIcon(BuildContext context, String path) {
    if (path.startsWith('http://') || path.startsWith('https://')) {
      return Image.network(
        path,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) => _buildFallback(context),
      );
    }
    return Image.asset(
      path,
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) => _buildFallback(context),
    );
  }

  Widget _buildFallback(BuildContext context) {
    return Icon(
      Icons.local_florist_rounded,
      color: AppColor.goldDark,
      size: context.w(22),
    );
  }
}
