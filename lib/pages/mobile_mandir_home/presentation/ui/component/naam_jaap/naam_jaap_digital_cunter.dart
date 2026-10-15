import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'dart:io';

import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/utils/auth_helper.dart';
import '../../../../../../common/values/screenUtils.dart';
import '../../../../../../common/values/values_exports.dart';
import 'jaap_baaner_item.dart';

class NaamJaapDigitalCunter extends StatelessWidget {
  const NaamJaapDigitalCunter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsGeometry.only(left: 12, right: 10, top: 2, bottom: 12),
      padding: EdgeInsetsGeometry.only(
        left: 10,
        right: 10,
        top: 10,
        bottom: 10,
      ),
      width: context.screenWidth,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background/naam_jaap_back.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.l10n.digitalNaamJaap,

                style: AppTextStyle.gilroyBold(
                  fontWeight: FontWeight.w400,

                  context.screenWidth * 0.053,
                  color: AppColor.appWhiteColor,
                ),
              ),

              InkWell(
                onTap: () {
                  if (context.requireLogin()) return;

                  BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(3));
                },
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.appNewYello,
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(color: AppColor.appWhiteColor),
                  ),
                  child: Row(
                    spacing: 4,
                    children: <Widget>[
                      Text(
                        context.l10n.startJaap,
                        // style: AppTextStyle.gilroyBold(
                        //   context.screenWidth * 0.027,
                        //   color: AppColor.appBlack,
                        // ),
                        style:  TextStyle(
                          fontSize: Platform.isIOS?context.screenWidth*0.034:context.screenWidth*0.034,
                          fontFamily: AppFont.gilroyBold,
                          color: AppColor.appBlack,
                        ),

                      ),
                      // Image.asset(
                      //   "assets/new_design/icon/back_right_img.png",
                      //   width: 12,
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 6,
            children: <Widget>[
              Expanded(
                child: JaapBannerItem(
                  imagePath: "assets/new_design/icon/naam_jaap_one.png",
                  title: context.l10n.jaapTracking,
                ),
              ),
              Expanded(
                child: JaapBannerItem(
                  imagePath: "assets/new_design/icon/naam_jaap_two.png",
                  title: context.l10n.realTimeCounter,
                ),
              ),
              Expanded(
                child: JaapBannerItem(
                  imagePath: "assets/new_design/icon/naam_jaap_three.png",
                  title: context.l10n.jaapHistory.replaceFirst(' ', '\n'),
                ),
              ),
              Expanded(
                child: JaapBannerItem(
                  imagePath: "assets/new_design/icon/naam_jaap_four.png",
                  title: context.l10n.bhaktiProgress,
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
        ],
      ),
    );
  }
}
