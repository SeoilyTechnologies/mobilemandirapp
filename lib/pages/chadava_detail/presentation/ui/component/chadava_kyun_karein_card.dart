import 'package:flutter/material.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../../common/values/screenUtils.dart';

class ChadavaKyunKareinCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageAsset;

  const ChadavaKyunKareinCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(minHeight: context.h(133)),
      padding: EdgeInsets.all(context.w(12)),
      decoration: ShapeDecoration(
        color: const Color(0xFFF8E7D1),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xFFF3D3A5),
          ),
          borderRadius: BorderRadius.circular(context.w(10)),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Left Image (97x97)
          ClipRRect(
            borderRadius: BorderRadius.circular(context.w(5)),
            child: SizedBox(
              width: context.w(97),
              height: context.w(97),
              child: _buildImage(context, imageAsset),
            ),
          ),

          SizedBox(width: context.w(14)),

          // Right Text Column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Heading: Kyun Karein + Ornament
                Row(
                  children: [
                    Text(
                      title,
                      style: AppTextStyle.gilroySemiBold(
                        context.sp(16),
                        color: const Color(0xFF793C01),
                      ),
                    ),
                    SizedBox(width: context.w(6)),
                    Image.asset(
                      "assets/new_design/chadhawa_image/right_side_golden decorative_ornament.png",
                      width: context.w(27),
                      height: context.h(11),
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) => const SizedBox.shrink(),
                    ),
                  ],
                ),

                SizedBox(height: context.h(6)),

                // Description Text
                Text(
                  description,
                  style: AppTextStyle.gilroyRegular(
                    context.sp(12),
                    color: Colors.black,
                    height: 1.45,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage(BuildContext context, String path) {
    if (path.startsWith('http://') || path.startsWith('https://')) {
      return Image.network(
        path,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => _buildFallback(context),
      );
    }
    return Image.asset(
      path,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) => _buildFallback(context),
    );
  }

  Widget _buildFallback(BuildContext context) {
    return Container(
      color: const Color(0xFFFFF3E8),
      child: Icon(
        Icons.auto_awesome_rounded,
        color: AppColor.goldDark,
        size: context.w(36),
      ),
    );
  }
}
