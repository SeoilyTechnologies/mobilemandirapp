import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../common/routes/exports.dart';
import '../../../temple_detail/presentation/ui/component/icon_circle_button.dart';

class SantDetailHeader extends StatelessWidget {
  const SantDetailHeader({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return SantDetailHeaderSmall();
    } else if (context.isMediumScreen) {
      return SantDetailHeaderSmallMedium();
    } else {
      return SantDetailHeaderSmallMedium();
    }
  }
}

class SantDetailHeaderSmall extends StatelessWidget {
  const SantDetailHeaderSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SantBloc, SantState>(
      listener: (context, state) {},
      builder: (context, state) {
        final sant = state.santDetailResponse.data;
        final imageUrl = sant.image.isNotEmpty
            ? sant.image
            : 'https://images.unsplash.com/photo-1582510003544-4d00b7f74220';
        final name = sant.name.isNotEmpty ? sant.name : '';
        final location = sant.location.isNotEmpty
            ? sant.location
            : (sant.aashram.isNotEmpty ? sant.aashram : '');

        return SizedBox(
          height: 318,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.network(
                    AppConstant.fileBaseUrl + imageUrl,
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 300,
                      width: double.infinity,
                      color: AppColor.newsecondaruy.withValues(alpha: 0.2),
                      child: const Icon(
                        Icons.person,
                        size: 80,
                        color: Colors.white54,
                      ),
                    ),
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
                        Colors.black.withValues(alpha: 0.65),
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

              // Positioned(
              //   top: context.screenHeight * 0.07,
              //   right: 14,
              //   child: Row(
              //     children: [
              //       IconCircleButton(icon: Icons.favorite_border, size: 18),
              //       SizedBox(width: 8),
              //       IconCircleButton(icon: Icons.share, size: 18),
              //     ],
              //   ),
              // ),
              //
              // Positioned(
              //   left: 26,
              //   bottom: 34,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       if (name.isNotEmpty)
              //         Text(
              //           name,
              //           style: AppTextStyle.gilroyBold(
              //             context.screenWidth * 0.058,
              //             color: AppColor.appWhiteColor,
              //           ),
              //         ),
              //
              //       if (location.isNotEmpty) ...[
              //         const SizedBox(height: 2),
              //         Row(
              //           children: [
              //             Image.asset(
              //               "assets/new_design/icon/akar-icons_location.png",
              //               color: Colors.white,
              //               width: 12,
              //             ),
              //             SizedBox(width: 4),
              //             Text(
              //               location,
              //               style: AppTextStyle.regular(
              //                 context.screenWidth * 0.032,
              //                 color: AppColor.appWhiteColor,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ],
              //   ),
              // ),
            ],
          ),
        );
      },
    );
  }
}

class SantDetailHeaderSmallMedium extends StatelessWidget {
  const SantDetailHeaderSmallMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SantBloc, SantState>(
      listener: (context, state) {},
      builder: (context, state) {
        final sant = state.santDetailResponse.data;
        final imageUrl = sant.image.isNotEmpty
            ? sant.image
            : 'https://images.unsplash.com/photo-1582510003544-4d00b7f74220';
        final name = sant.name.isNotEmpty ? sant.name : '';
        final location = sant.location.isNotEmpty
            ? sant.location
            : (sant.aashram.isNotEmpty ? sant.aashram : '');

        return SizedBox(
          height: context.screenHeight * 0.45,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.network(
                    AppConstant.fileBaseUrl + imageUrl,
                    height: context.screenHeight * 0.45,
                    width: double.infinity,
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: context.screenHeight * 0.45,
                      width: double.infinity,
                      color: AppColor.newsecondaruy.withValues(alpha: 0.2),
                      child: const Icon(
                        Icons.person,
                        size: 80,
                        color: Colors.white54,
                      ),
                    ),
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
                        Colors.black.withValues(alpha: 0.65),
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

              // Positioned(
              //   top: context.screenHeight * 0.07,
              //   right: 14,
              //   child: Row(
              //     children: [
              //       IconCircleButton(icon: Icons.favorite_border, size: 18),
              //       SizedBox(width: 8),
              //       IconCircleButton(icon: Icons.share, size: 18),
              //     ],
              //   ),
              // ),
              //
              // Positioned(
              //   left: 26,
              //   bottom: 34,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       if (name.isNotEmpty)
              //         Text(
              //           name,
              //           style: AppTextStyle.gilroyBold(
              //             context.screenWidth * 0.058,
              //             color: AppColor.appWhiteColor,
              //           ),
              //         ),
              //
              //       if (location.isNotEmpty) ...[
              //         const SizedBox(height: 2),
              //         Row(
              //           children: [
              //             Image.asset(
              //               "assets/new_design/icon/akar-icons_location.png",
              //               color: Colors.white,
              //               width: 12,
              //             ),
              //             SizedBox(width: 4),
              //             Text(
              //               location,
              //               style: AppTextStyle.regular(
              //                 context.screenWidth * 0.032,
              //                 color: AppColor.appWhiteColor,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ],
              //   ),
              // ),
            ],
          ),
        );
      },
    );
  }
}
