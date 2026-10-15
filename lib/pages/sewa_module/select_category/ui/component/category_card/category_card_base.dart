import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/common/network/app_constant.dart';

import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/utils/utils.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../data/entity/categories_list_response.dart';

class CategoryCardBase extends StatelessWidget {
  final CategoryItem category;
  final bool isSelected;
  final VoidCallback onTap;

  final double titleSize;
  final double subTitleSize;
  final double imageWidth;
  final double imageHeight;
  final EdgeInsets padding;

  const CategoryCardBase({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onTap,
    required this.titleSize,
    required this.subTitleSize,
    required this.imageWidth,
    required this.imageHeight,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final isActive = category.isActive;

    return GestureDetector(
      onTap: isActive ? onTap : null,
      child: Stack(
        children: [



          /// 🔒 COMING SOON
          if (!isActive)
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColor.fullBlack.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: titleSize * 0.6,
                      vertical: titleSize * 0.3,
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      context.l10n.comingSoon,
                      style: AppTextStyle.gilroyBold(
                        titleSize * 0.7,
                        color: AppColor.newsecondaruy,
                      ),
                    ),
                  ),
                ),
              ),
            ),


          /// ✅ SELECTED CHECK
          if (isSelected)
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                width: titleSize * 1.2,
                height: titleSize * 1.2,
                decoration: const BoxDecoration(
                  color: AppColor.newsecondaruy,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check,
                  size: titleSize * 0.7,
                  color: AppColor.appWhiteColor,
                ),
              ),
            ),

          Container(

            padding: padding,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [

                  Utils.hexToColor(category.backgroundColor.isNotEmpty?category.backgroundColor:"FBE8D5"), // first color
                  Utils.hexToColor(category.backgroundColorEnd.isNotEmpty?category.backgroundColorEnd:"EDBF91"), // first c
                ],
              ),
              borderRadius: BorderRadius.circular(20),
              border: isSelected
                  ? Border.all(
                color: AppColor.newsecondaruy,
                width: 2,
              )
                  : null,
            ),
            child: Column(
              children: [
                /// TITLE
                Text(
                  category.name,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.gilroyExtraBold(
                    titleSize,
                    color: AppColor.appBlack,

                  ),
                ),

                const SizedBox(height: 4),

                /// SUBTITLE
                Padding(padding: EdgeInsets.only(left: 8,right: 8),
                  child: Text(
                    category.description,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.gilroyBold(
                      subTitleSize,
                      color: AppColor.appBlack,
                    ),
                  ),),

                const Spacer(),

                /// IMAGE
                Image.network(
                  AppConstant.fileBaseUrl + "${category.icon}",
                  width: imageWidth,
                  height: imageHeight,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
