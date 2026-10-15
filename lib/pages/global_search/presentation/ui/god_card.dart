import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/component/network_image.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../common/routes/exports.dart';

class AartiCard extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback? onTap;

  const AartiCard({
    super.key,
    required this.image,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Column(
            children: [

              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: image==""||image==null?Image.asset("assets/icons/no-image.png"):Image.network(AppConstant.fileBaseUrl+image, fit: BoxFit.cover),
                ),
              ),

              Expanded(
                child: Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                   style: AppTextStyle.gilroyBold(context.screenWidth*0.034,
                   color: AppColor.appBlack),
                ),
                )
              ),


            ],
          ),
        ),
      ),
    );
  }
}
