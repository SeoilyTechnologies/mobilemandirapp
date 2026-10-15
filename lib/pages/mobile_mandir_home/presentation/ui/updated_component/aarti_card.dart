// lib/widgets/aarti_card.dart
import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/network_image.dart';
import 'package:mandirapp/common/network/network_eport.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../naamjaap/jaappage_one/presentation/bloc/jaap_bloc.dart';
import '../../../../naamjaap/jaappage_one/presentation/bloc/jaap_event.dart';
import 'PlayNowButton.dart';

class AartiCard extends StatelessWidget {
  final String title;
  final String image;
  final String subtitle;

  const AartiCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    // print("S S S S S JJNJN ${AppConstant.fileBaseUrl}${image}");
    return Container(
      height: 140,
      decoration: BoxDecoration(
        color: AppColor.purple,
        borderRadius: BorderRadius.circular(12),
      ),
      child: NetworkImageWidget(
        imageUrl: "${image}",
        fullimage: false,
        imageHeight: 140,
        imageWidth: double.infinity,

        radiusAll: 12,
      ),
      // child: Row(
      //   children: <Widget>[
      //   Expanded(child:   Padding(padding: EdgeInsets.only(left: 18,top: 0),child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container(
      //         padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
      //         decoration: BoxDecoration(
      //           image: DecorationImage(image: NetworkImage("${AppConstant.fileBaseUrl}${image}"))
      //         ),
      //         child: Padding(padding: EdgeInsets.all(4),
      //         child: Text(
      //             "AARTI",
      //             style: AppTextStyle.gilroyMedium(context.screenWidth*0.020,color:AppColor.appWhiteColor )
      //         ),)
      //       ),
      //       const SizedBox(height: 8),
      //       Text(
      //         title,
      //         style: AppTextStyle.gilroyBold(
      //           context.screenWidth * 0.035,
      //           color: AppColor.appWhiteColor,
      //         ),
      //       ),
      //
      //       const SizedBox(height: 8),
      //       Text(
      //         subtitle,
      //         style: AppTextStyle.gilroyMedium(
      //           context.screenWidth * 0.0229,
      //           color: AppColor.appWhiteColor,
      //         ),
      //       ),
      //
      //       const SizedBox(height: 7),
      //
      //       PlayNowButton(
      //         onPressed: () {
      //           print("Play clicked");
      //         },
      //       ),
      //
      //     ],
      //   ),),),
      //   Expanded(child:   Image.asset("assets/new_design/icon/banner_item_image.png",))
      //   ],
      // )
    );
  }
}

class BottomSliderAartiCard extends StatelessWidget {
  final String title;
  final String image;
  final String subtitle;

  const BottomSliderAartiCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140, // 🔥 FIXED
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: NetworkImageWidget(
          imageUrl: "${AppConstant.fileBaseUrl}$image",
          fullimage: true,
          imageHeight: 140,
          imageWidth: double.infinity,
          radiusAll: 12,
        ),
      ),
    );
  }
}

class NaamJappCard extends StatelessWidget {
  final String title;
  final String image;
  final String subtitle;

  const NaamJappCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      margin: EdgeInsets.only(left: 12, right: 12),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("${AppConstant.fileBaseUrl}${image}"),
          fit: BoxFit.fill,
        ),
        // color: AppColor.purple,
        borderRadius: BorderRadius.circular(12),
      ),
      // child: NetworkImageWidget(imageUrl: "${image}",fullimage: false, imageHeight: 140, imageWidth: double.infinity,
      //
      //   radiusAll: 12,),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 18, top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Container(
                  //   padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(image: NetworkImage("${AppConstant.fileBaseUrl}${image}"))
                  //   ),
                  //   child: Padding(padding: EdgeInsets.all(4),
                  //   child: Text(
                  //       "AARTI",
                  //       style: AppTextStyle.gilroyMedium(context.screenWidth*0.020,color:AppColor.appWhiteColor )
                  //   ),)
                  // ),
                  //const SizedBox(height: 8),
                  SizedBox(
                    width: context.screenWidth * 0.6,
                    child: Text(
                      title,
                      style: AppTextStyle.gilroyBlack(
                        context.screenWidth * 0.055,
                        color: AppColor.appWhiteColor,
                      ),
                    ),
                  ),

                  const SizedBox(height: 2),

                  // Text(
                  //   subtitle,
                  //   style: AppTextStyle.gilroyMedium(
                  //     context.screenWidth * 0.0229,
                  //     color: AppColor.appWhiteColor,
                  //   ),
                  // ),
                  const SizedBox(height: 7),

                  PlayNowButton(
                    title: subtitle,
                    onPressed: () {
                      BlocProvider.of<JaapBloc>(context).add(GetGodData());

                      BlocProvider.of<JaapBloc>(
                        context,
                      ).add(GetWishlistMantra(userId: ""));
                      BlocProvider.of<JaapBloc>(
                        context,
                      ).add(JaapEvent.selectMantra("", "", ""));
                      Navigator.pushNamed(
                        context,
                        AppRoutes.JAAP_MALA_ONE_PAGE,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          //Expanded(child:   Image.network("${AppConstant.fileBaseUrl}${image}",))
        ],
      ),
    );
  }
}

class NaamJappCardMedium extends StatelessWidget {
  final String title;
  final String image;
  final String subtitle;

  const NaamJappCardMedium({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.screenHeight * 0.8,

      child: Container(
        height: 300,
        margin: EdgeInsets.only(left: 12, right: 12),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("${AppConstant.fileBaseUrl}${image}"),
            fit: BoxFit.fill,
          ),
          // color: AppColor.purple,
          borderRadius: BorderRadius.circular(12),
        ),
        // child: NetworkImageWidget(imageUrl: "${image}",fullimage: false, imageHeight: 140, imageWidth: double.infinity,
        //
        //   radiusAll: 12,),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 18, top: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Container(
                    //   padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                    //   decoration: BoxDecoration(
                    //     image: DecorationImage(image: NetworkImage("${AppConstant.fileBaseUrl}${image}"))
                    //   ),
                    //   child: Padding(padding: EdgeInsets.all(4),
                    //   child: Text(
                    //       "AARTI",
                    //       style: AppTextStyle.gilroyMedium(context.screenWidth*0.020,color:AppColor.appWhiteColor )
                    //   ),)
                    // ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: context.screenWidth * 0.6,
                      child: Text(
                        title,
                        style: AppTextStyle.gilroyBlack(
                          context.screenWidth * 0.055,
                          color: AppColor.appWhiteColor,
                        ),
                      ),
                    ),

                    const SizedBox(height: 2),

                    // Text(
                    //   subtitle,
                    //   style: AppTextStyle.gilroyMedium(
                    //     context.screenWidth * 0.0229,
                    //     color: AppColor.appWhiteColor,
                    //   ),
                    // ),
                    const SizedBox(height: 7),

                    PlayNowButton(
                      title: subtitle,
                      onPressed: () {
                        BlocProvider.of<JaapBloc>(context).add(GetGodData());

                        BlocProvider.of<JaapBloc>(
                          context,
                        ).add(GetWishlistMantra(userId: ""));
                        BlocProvider.of<JaapBloc>(
                          context,
                        ).add(JaapEvent.selectMantra("", "", ""));
                        Navigator.pushNamed(
                          context,
                          AppRoutes.JAAP_MALA_ONE_PAGE,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            //Expanded(child:   Image.network("${AppConstant.fileBaseUrl}${image}",))
          ],
        ),
      ),
    );
  }
}

class EventSliderCard extends StatelessWidget {
  final String title;
  final String image;
  final String subtitle;

  const EventSliderCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      margin: EdgeInsets.only(left: 12, right: 12),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("${AppConstant.fileBaseUrl}${image}"),
          fit: BoxFit.fill,
        ),
        // color: AppColor.purple,
        borderRadius: BorderRadius.circular(12),
      ),
      // child: NetworkImageWidget(imageUrl: "${image}",fullimage: false, imageHeight: 140, imageWidth: double.infinity,
      //
      //   radiusAll: 12,),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: PlayNowButton(
              title: "Watch Video",
              onPressed: () {
                _launchUrl(
                  Uri.parse("https://www.youtube.com/@MobileMandirApp"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(_url) async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
