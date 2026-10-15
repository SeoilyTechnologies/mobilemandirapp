import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/utils/auth_helper.dart';
import '../../../../../common/utils/share_helper.dart';
import '../../../../../common/utils/utils.dart';
import '../../bloc/templ_detail_new/temple_detail_new_bloc.dart';
import '../../bloc/templ_detail_new/temple_detail_new_event.dart';
import '../../bloc/templ_detail_new/temple_detail_new_state.dart';
import 'icon_circle_button.dart';

class TempleHeader extends StatelessWidget {
   const TempleHeader({super.key});


  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return TempleHeaderSmall();
    } else if (context.isMediumScreen) {
      return TempleHeaderMedium();
    } else {

      return TempleHeaderMedium();
    }
  }
}
class TempleHeaderSmall extends StatelessWidget {
  const TempleHeaderSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TempleDetailNewBloc, TempleDetailNewState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SizedBox(
          height: 318,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.network(
                    AppConstant.fileBaseUrl +
                        state.templeDetailApiResponse.data.image,
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
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
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(.65),
                      ],
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
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: IconCircleButton(
                        icon: Icons.arrow_back_ios_new,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                top: context.screenHeight * 0.07,
                right: 14,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (context.requireLogin()) return;
                        BlocProvider.of<TempleDetailNewBloc>(context).add(
                          TempleWishlistvent(
                            itemId: "${state.templeDetailApiResponse.data.id}",
                            itemModel: "temple",
                          ),
                        );
                      },
                      child: IconCircleButton(
                        icon: state.templeDetailApiResponse.data.isWishlist
                            ? Icons.favorite
                            : Icons.favorite_border,
                        size: 18,
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        ShareHelper.shareTemple(
                          slug: state.templeDetailApiResponse.data.slug,
                          name: state.templeDetailApiResponse.data.title,
                        );
                      },
                      child: IconCircleButton(icon: Icons.share, size: 18),
                    ),
                  ],
                ),
              ),

              Positioned(
                left: 26,
                bottom: 34,
                right: 26,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${state.templeDetailApiResponse.data.title}",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.gilroyBold(
                        context.screenWidth * 0.058,
                        color: AppColor.appWhiteColor,
                      ),
                    ),

                    //const SizedBox(height: 2),

                    // Row(
                    //   children: [
                    //     Image.asset(
                    //       "assets/new_design/icon/akar-icons_location.png",
                    //       color: Colors.white,
                    //       width: 12,
                    //     ),
                    //
                    //     SizedBox(width: 4),
                    //     Text(
                    //       "${state.templeDetailApiResponse.data.location}",
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

class TempleHeaderMedium extends StatelessWidget {
  const TempleHeaderMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TempleDetailNewBloc, TempleDetailNewState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SizedBox(
          height: context.screenHeight*0.45,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.network(
                    AppConstant.fileBaseUrl +
                        state.templeDetailApiResponse.data.image,
                    height: context.screenHeight*0.45,
                    alignment: Alignment.topCenter,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
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
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(.65),
                      ],
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
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: IconCircleButton(
                        icon: Icons.arrow_back_ios_new,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                top: context.screenHeight * 0.07,
                right: 14,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (context.requireLogin()) return;
                        BlocProvider.of<TempleDetailNewBloc>(context).add(
                          TempleWishlistvent(
                            itemId: "${state.templeDetailApiResponse.data.id}",
                            itemModel: "temple",
                          ),
                        );
                      },
                      child: IconCircleButton(
                        icon: state.templeDetailApiResponse.data.isWishlist
                            ? Icons.favorite
                            : Icons.favorite_border,
                        size: 18,
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        ShareHelper.shareTemple(
                          slug: state.templeDetailApiResponse.data.slug,
                          name: state.templeDetailApiResponse.data.title,
                        );
                      },
                      child: IconCircleButton(icon: Icons.share, size: 18),
                    ),
                  ],
                ),
              ),

              Positioned(
                left: 26,
                bottom: 34,
                right: 26,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${state.templeDetailApiResponse.data.title}",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.gilroyBold(
                        context.screenWidth * 0.058,
                        color: AppColor.appWhiteColor,
                      ),
                    ),

                    //const SizedBox(height: 2),

                    // Row(
                    //   children: [
                    //     Image.asset(
                    //       "assets/new_design/icon/akar-icons_location.png",
                    //       color: Colors.white,
                    //       width: 12,
                    //     ),
                    //
                    //     SizedBox(width: 4),
                    //     Text(
                    //       "${state.templeDetailApiResponse.data.location}",
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

