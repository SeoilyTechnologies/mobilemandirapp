import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/utils/utils.dart';

import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/utils/auth_helper.dart';
import '../../../../../../common/values/screenUtils.dart';
import '../../../../../../common/values/values_exports.dart';
import '../../../../../sewa_module/sewa_page/presentation/bloc/seva_page_bloc.dart';
import '../../../../../sewa_module/sewa_page/presentation/bloc/seva_page_event.dart';
import '../../../bloc/mobile_home_event.dart';
import '../../../bloc/mobile_home_state.dart';

class SewaCardUi extends StatelessWidget {
  const SewaCardUi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state.vendorSevaList.isEmpty) {
          return const SizedBox.shrink();
        }

        return CarouselSlider.builder(
          itemCount: state.vendorSevaList.length,
          itemBuilder: (context, index, realIndex) {
            final seva = state.vendorSevaList[index];

            return Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 12),
              width: context.screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: const DecorationImage(
                  image: AssetImage(
                    "assets/background/today_sewa_background.jpg",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              // margin: const EdgeInsets.symmetric(horizontal: 4),
              padding: Platform.isIOS? EdgeInsets.only(left: 16, right: 16, top: 2):EdgeInsets.only(left: 16, right: 16, top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: AppColor.yelloDeepBackground,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          padding:  EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          child: Text(
                            "Today Seva",
                            style: AppTextStyle.gilroySemiBold(
                              context.screenWidth * 0.032,
                              color: AppColor.appBlack,
                            ),
                          ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          seva.name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.gilroyBold(
                            context.screenWidth * 0.0426,
                            color: AppColor.goldDark,
                          ),
                        ),

                        const SizedBox(height: 6),

                        const SizedBox(height: 12),

                        GestureDetector(
                          onTap: () {
                            if (context.requireLogin()) return;
                            context.read<SevaPageBloc>().add(
                              SevaPageEvent.getSewaPriceList(
                                categoryId: seva.id,
                                categoryDescription: seva.name,
                                categoryName: seva.name
                              ),
                            );

                            Navigator.pushNamed(context, AppRoutes.SEVA_PAGE);
                          },

                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: AppColor.appYellow,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  "Proceed",
                                  style: AppTextStyle.gilroySemiBold(
                                    context.screenWidth * 0.032,
                                    color: AppColor.appBlack,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                Image.asset(
                                  "assets/icons/teda_back.png",
                                  width: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  if (seva.iconUrl.isNotEmpty)
                    Image.network(
                      AppConstant.fileBaseUrl + seva.iconUrl,
                      width: 130,
                      height: 130,
                      fit: BoxFit.contain,
                    ),
                ],
              ),
            );
          },
          options: CarouselOptions(
            height: Platform.isIOS?190:175,
            autoPlay: true,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            padEnds: false,
            enableInfiniteScroll: state.vendorSevaList.length > 1,
            onPageChanged: (index, reason) {
            },
          ),
        );
      },
    );
  }
}
