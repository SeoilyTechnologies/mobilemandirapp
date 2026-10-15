import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/utils/auth_helper.dart';
import '../../../../../common/utils/share_helper.dart';
import '../../../../../common/utils/utils.dart';
import '../../../../temple_detail/presentation/ui/component/icon_circle_button.dart';
import '../../bloc/god_details_bloc.dart';
import '../../bloc/god_details_event.dart';
import '../../bloc/god_details_state.dart';

class GodHeader extends StatelessWidget {
  GodHeader({super.key});


  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return const GodHeaderSmall();
    } else if (context.isMediumScreen) {
      return const GodHeaderMedium();
    } else {
      return const GodHeaderMedium();
    }
  }
}

class GodHeaderSmall extends StatelessWidget {
  const GodHeaderSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GodDetailsBloc, GodDetailsState>(
  builder: (context, state) {
    return SizedBox(
      height: 318,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child:  state.godDetailApiResponse.data.image.isNotEmpty?Image.network(
                AppConstant.fileBaseUrl+'${state.godDetailApiResponse.data.image}',
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ):Image.asset("assets/icons/no-image.png")
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 130,
              margin: const EdgeInsets.symmetric(horizontal: 0),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(.65)],
                ),
              ),
            ),
          ),

          Positioned(
            top: context.screenHeight * 0.07,
            left: 14,
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },

                  child: IconCircleButton(icon: Icons.arrow_back_ios_new, size: 18),
                )
              ],
            ),
          ),

          Positioned(
            top: context.screenHeight * 0.07,
            right: 14,
            child: Row(
              children:  [
                GestureDetector(
                  onTap: (){
                    if (context.requireLogin()) return;
                    BlocProvider.of<GodDetailsBloc>(context).add(GodWishlistvent(
                      itemId: "${state.godDetailApiResponse.data.id}",
                      itemModel: "god"
                    ));
                  },
                  child: IconCircleButton(
                    icon: state.godDetailApiResponse.data.isWishlist
                        ? Icons.favorite
                        : Icons.favorite_border,
                    size: 18,
                  ),
                ),
                SizedBox(width: 8),
               GestureDetector(
                 onTap: (){
                   ShareHelper.shareGod(
                     slug: state.godDetailApiResponse.data.slug,
                     name: state.godDetailApiResponse.data.name,
                   );
                 },
                 child:  IconCircleButton(icon: Icons.share, size: 18),
               )
              ],
            ),
          ),

          Positioned(
            left: 26,
            bottom: 34,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${state.godDetailApiResponse.data.name??""}",
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.058,
                    color: AppColor.appWhiteColor,
                  ),
                ),

               // const SizedBox(height: 2),

                // Row(
                //   children: [
                //     Image.asset(
                //       "assets/new_design/icon/akar-icons_location.png",
                //       color: Colors.white,
                //       width: 12,
                //     ),
                //     SizedBox(width: 4),
                //     Text(
                //       "${state.godDetailApiResponse.data.birthPlace??""}",
                //       style: AppTextStyle.regular(
                //         context.screenWidth * 0.032,
                //         color: AppColor.appWhiteColor,
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  },
);
  }
}


class GodHeaderMedium extends StatelessWidget {
  const GodHeaderMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GodDetailsBloc, GodDetailsState>(
      builder: (context, state) {
        return SizedBox(
          height: context.screenHeight*0.45,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child:  state.godDetailApiResponse.data.image.isNotEmpty?Image.network(
                      AppConstant.fileBaseUrl+'${state.godDetailApiResponse.data.image}',
                      height: context.screenHeight*0.45,
                      width: double.infinity,
                      alignment: Alignment.topCenter,
                      fit: BoxFit.cover,
                    ):Image.asset("assets/icons/no-image.png")
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 130,
                  margin: const EdgeInsets.symmetric(horizontal: 0),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black.withOpacity(.65)],
                    ),
                  ),
                ),
              ),

              Positioned(
                top: context.screenHeight * 0.07,
                left: 14,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },

                      child: IconCircleButton(icon: Icons.arrow_back_ios_new, size: 18),
                    )
                  ],
                ),
              ),

              Positioned(
                top: context.screenHeight * 0.07,
                right: 14,
                child: Row(
                  children:  [
                    GestureDetector(
                      onTap: (){
                        if (context.requireLogin()) return;
                        BlocProvider.of<GodDetailsBloc>(context).add(GodWishlistvent(
                            itemId: "${state.godDetailApiResponse.data.id}",
                            itemModel: "god"
                        ));
                      },
                      child: IconCircleButton(
                        icon: state.godDetailApiResponse.data.isWishlist
                            ? Icons.favorite
                            : Icons.favorite_border,
                        size: 18,
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: (){
                        ShareHelper.shareGod(
                          slug: state.godDetailApiResponse.data.slug,
                          name: state.godDetailApiResponse.data.name,
                        );
                      },
                      child:  IconCircleButton(icon: Icons.share, size: 18),
                    )
                  ],
                ),
              ),

              Positioned(
                left: 26,
                bottom: 34,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${state.godDetailApiResponse.data.name??""}",
                      style: AppTextStyle.gilroyBold(
                        context.screenWidth * 0.058,
                        color: AppColor.appWhiteColor,
                      ),
                    ),

                    // const SizedBox(height: 2),

                    // Row(
                    //   children: [
                    //     Image.asset(
                    //       "assets/new_design/icon/akar-icons_location.png",
                    //       color: Colors.white,
                    //       width: 12,
                    //     ),
                    //     SizedBox(width: 4),
                    //     Text(
                    //       "${state.godDetailApiResponse.data.birthPlace??""}",
                    //       style: AppTextStyle.regular(
                    //         context.screenWidth * 0.032,
                    //         color: AppColor.appWhiteColor,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
