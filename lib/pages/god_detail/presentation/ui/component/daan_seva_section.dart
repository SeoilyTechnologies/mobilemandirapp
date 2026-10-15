import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/utils/utils.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../common/routes/exports.dart';
import '../../../../../common/utils/auth_helper.dart';
import '../../../../sewa_module/sewa_page/presentation/bloc/seva_page_bloc.dart';
import '../../../../sewa_module/sewa_page/presentation/bloc/seva_page_event.dart';
import '../../../../temple_detail/presentation/ui/component/section_title.dart';
import '../../../data/entity/god_detail_api_response.dart';
import '../../bloc/god_details_bloc.dart';
import '../../bloc/god_details_state.dart';

class DaanSevaSectionSmall extends StatelessWidget {
  const DaanSevaSectionSmall({super.key});

  Widget sevaCard({
    required Color startColor,
    required Color endColor,
    required BuildContext context,
    required VendorSeva vendorSeva,
  }) {
    return Container(
      width: 310,
      margin: const EdgeInsets.only(right: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [
            Utils.hexToColor(vendorSeva.backgroundColor),
            Utils.hexToColor(vendorSeva.backgroundColorEnd),
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 4,
            top: context.screenHeight*0.039,
            child: Image.network(
              AppConstant.fileBaseUrl + vendorSeva.iconUrl,
              height: context.screenHeight * 0.13,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              left: 18,
              top: 18,
              right: 18,
              bottom: 18,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${vendorSeva.name}",
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.038,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 8),

                ListView.builder(
                  itemCount: vendorSeva.lines.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return bullet("${vendorSeva.lines[index]}", context);
                  },
                ),

                const Spacer(),

                GestureDetector(
                  onTap: () {
                    if (context.requireLogin()) return;
                    BlocProvider.of<SevaPageBloc>(context).add(
                      SevaPageEvent.getSewaPriceList(categoryId: vendorSeva.id,categoryName: vendorSeva.name,categoryDescription: vendorSeva.name),
                    );
                    Navigator.pushNamed(context, AppRoutes.SEVA_PAGE);
                  },
                  child: Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Text(
                        context.l10n.proceed,
                        // style: AppTextStyle.gilroySemiBold(
                        //   context.screenWidth * 0.026,
                        //   color: AppColor.newsecondaruy,
                        // ),
                        style: AppTextStyle.gilroyBold(
                          context.screenWidth*0.034,
                          color: AppColor.newsecondaruy,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget bullet(String text, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4, top: 4),
      child: Row(
        children: [
          const Icon(Icons.verified, size: 14, color: Colors.black),

          const SizedBox(width: 8),

          Text(
            text,
            style: AppTextStyle.gilroyBold(
              context.screenWidth * 0.033,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GodDetailsBloc, GodDetailsState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(title: context.l10n.daanAndSeva),
            const SizedBox(height: 8),
            //state.godDetailApiResponse.data
            SizedBox(
              height: context.screenHeight*0.25,
              child: ListView.builder(
                itemCount: state.godDetailApiResponse.data.vendorSeva.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return sevaCard(
                    startColor: const Color(0xFFB8E2FF),
                    endColor: const Color(0xFFE5C778),
                    context: context,
                    vendorSeva:
                        state.godDetailApiResponse.data.vendorSeva[index],
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}


class DaanSevaSectionMedium extends StatelessWidget {
  const DaanSevaSectionMedium({super.key});
  Widget sevaCard({
    required Color startColor,
    required Color endColor,
    required BuildContext context,
    required VendorSeva vendorSeva,
  }) {
    return Container(
      width: 310,
      margin: const EdgeInsets.only(right: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [
            Utils.hexToColor(vendorSeva.backgroundColor),
            Utils.hexToColor(vendorSeva.backgroundColorEnd),
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 4,
            bottom: context.screenHeight*0.03,
            child: Image.network(
              AppConstant.fileBaseUrl + vendorSeva.iconUrl,
              height: context.screenHeight * 0.1,
              fit: BoxFit.contain,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              left: 18,
              top: 18,
              right: 18,
              bottom: 18,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${vendorSeva.name}",
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.03,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 8),

                ListView.builder(
                  itemCount: vendorSeva.lines.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return bullet("${vendorSeva.lines[index]}", context);
                  },
                ),

                const Spacer(),

                GestureDetector(
                  onTap: () {
                    if (context.requireLogin()) return;
                    BlocProvider.of<SevaPageBloc>(context).add(
                      SevaPageEvent.getSewaPriceList(categoryId: vendorSeva.id,categoryName: vendorSeva.name,categoryDescription: vendorSeva.name),
                    );
                    Navigator.pushNamed(context, AppRoutes.SEVA_PAGE);
                  },
                  child: Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      color:
                      AppColor.newsecondaruy,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Text(
                        context.l10n.proceed,
                        style: AppTextStyle.gilroySemiBold(
                          context.screenWidth * 0.026,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget bullet(String text, BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4, top: 4),
      child: Row(
        children: [
          const Icon(Icons.verified, size: 14, color: Colors.black),

          const SizedBox(width: 8),

          Text(
            text,
            style: AppTextStyle.gilroySemiBold(
              context.screenWidth * 0.018,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GodDetailsBloc, GodDetailsState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(title: context.l10n.daanAndSeva),
            const SizedBox(height: 8),
            //state.godDetailApiResponse.data
            SizedBox(
              height: context.screenHeight * 0.2,
              child: ListView.builder(
                itemCount: state.godDetailApiResponse.data.vendorSeva.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return sevaCard(
                    startColor: const Color(0xFFB8E2FF),
                    endColor: const Color(0xFFE5C778),
                    context: context,
                    vendorSeva:
                    state.godDetailApiResponse.data.vendorSeva[index],
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}






class DaanSevaSection extends StatelessWidget {
  DaanSevaSection({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return DaanSevaSectionSmall();
    } else if (context.isMediumScreen) {
      return DaanSevaSectionMedium();
    } else {
      return DaanSevaSectionMedium();
    }
  }
}
