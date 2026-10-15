import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class NaamJapBanner extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath; // asset or network
  final VoidCallback onTap;

  const NaamJapBanner({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 12,right: 12),
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/new_design/background/banner_background.png',
              ),
              fit: BoxFit.contain
          ),
        ),
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(bottom: 0,left: 8),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(""),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(14),
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 14),

            // 🔸 Title + Subtitle
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.gilroyBold(context.screenWidth*0.0293,color: AppColor.appWhiteColor),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.gilroyMedium(context.screenWidth*0.0213,color: AppColor.appWhiteColor),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 8),

            // 🔸 Arrow Button
            Container(
              margin: EdgeInsets.only(right: 6),
              height: 26,
              width: 26,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child:Center(child: Image.asset("assets/new_design/icon/right_color_array.png",width: 14,height: 14,),),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
