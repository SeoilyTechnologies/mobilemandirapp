import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/pages/god_detail/data/entity/god_detail_api_response.dart';

import '../../../../../common/routes/exports.dart';
import '../../../../auth/component/primary_button.dart';
import '../../../../temple_detail/presentation/bloc/templ_detail_new/temple_detail_new_bloc.dart';
import '../../../../temple_detail/presentation/bloc/templ_detail_new/temple_detail_new_event.dart';
import '../../../../temple_detail/presentation/ui/component/section_title.dart';
import '../../bloc/god_details_bloc.dart';
import '../../bloc/god_details_state.dart';


class TopTempleSection extends StatelessWidget {
  TopTempleSection({super.key});


  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return TopTempleSectionSmall();
    } else if (context.isMediumScreen) {
      return TopTempleSectionMedium();
    } else {
      return TopTempleSectionMedium();
    }
  }
}


class TopTempleSectionSmall extends StatelessWidget {
  const TopTempleSectionSmall({super.key});

  Widget templeCard(BuildContext context, TempleModel templ) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColor.lightyellobackground,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE5D4BE), width: 1.5),
      ),

      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /// Temple Image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                AppConstant.fileBaseUrl + '${templ.image}',
                width: 54,
                height: 54,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 18),

            /// Temple Details
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Text(
                      "${templ.name}",
                      maxLines: 1,
                      textAlign: TextAlign.start,
                      style: AppTextStyle.gilroyBold(
                        context.screenWidth * 0.038,
                        color: AppColor.newsecondaruy,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/new_design/icon/akar-icons_location.png",
                        width: 12,
                      ),

                      SizedBox(width: 6),

                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 0),
                          child: Text(
                            "${templ.location}",
                            maxLines: 1,
                            textAlign: TextAlign.start,
                            style: AppTextStyle.gilroyMedium(
                              context.screenWidth * 0.029,
                              color: AppColor.newGreyy,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
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
            SectionTitle(
              title:
                  "${context.l10n.top} ${state.godDetailApiResponse.data.temples.length} ${context.l10n.temples}",
            ),

            const SizedBox(height: 8),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: const Color(0xFFFDFDFD),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFE5D4BE), width: 1.5),
              ),
              child: Column(
                children: [
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.godDetailApiResponse.data.temples.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          BlocProvider.of<TempleDetailNewBloc>(context).add(
                            GetTempleDetailById(
                              id: state
                                  .godDetailApiResponse
                                  .data
                                  .temples[index]
                                  .id,
                            ),
                          );
                          Navigator.pushNamed(
                            context,
                            AppRoutes.TEMPLE_DETAIL_PAGE,
                          );
                        },
                        child: templeCard(
                          context,
                          state.godDetailApiResponse.data.temples[index],
                        ),
                      );
                    },
                  ),

                  // const SizedBox(height: 6),
                  // GodDetailPageActionButtonPrimary(
                  //   onTap: () {},
                  //   title: "View All",
                  // ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class TopTempleSectionMedium extends StatelessWidget {
  const TopTempleSectionMedium({super.key});

  Widget templeCard(BuildContext context, TempleModel templ) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColor.lightyellobackground,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE5D4BE), width: 1.5),
      ),

      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /// Temple Image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                AppConstant.fileBaseUrl + '${templ.image}',
                width: 54,
                height: 54,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 18),

            /// Temple Details
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Text(
                      "${templ.name}",
                      maxLines: 1,
                      textAlign: TextAlign.start,
                      style: AppTextStyle.gilroyBold(
                        context.screenWidth * 0.033,
                        color: AppColor.newsecondaruy,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/new_design/icon/akar-icons_location.png",
                        width: 12,
                      ),

                      SizedBox(width: 6),

                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 0),
                          child: Text(
                            "${templ.location}",
                            maxLines: 1,
                            textAlign: TextAlign.start,
                            style: AppTextStyle.gilroyMedium(
                              context.screenWidth * 0.029,
                              color: AppColor.newGreyy,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
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
            SectionTitle(
              title:
              "${context.l10n.top} ${state.godDetailApiResponse.data.temples.length} ${context.l10n.temples}",
            ),

            const SizedBox(height: 8),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: const Color(0xFFFDFDFD),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: const Color(0xFFE5D4BE), width: 1.5),
              ),
              child: Column(
                children: [
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.godDetailApiResponse.data.temples.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          BlocProvider.of<TempleDetailNewBloc>(context).add(
                            GetTempleDetailById(
                              id: state
                                  .godDetailApiResponse
                                  .data
                                  .temples[index]
                                  .id,
                            ),
                          );
                          Navigator.pushNamed(
                            context,
                            AppRoutes.TEMPLE_DETAIL_PAGE,
                          );
                        },
                        child: templeCard(
                          context,
                          state.godDetailApiResponse.data.temples[index],
                        ),
                      );
                    },
                  ),

                  // const SizedBox(height: 6),
                  // GodDetailPageActionButtonPrimary(
                  //   onTap: () {},
                  //   title: "View All",
                  // ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
