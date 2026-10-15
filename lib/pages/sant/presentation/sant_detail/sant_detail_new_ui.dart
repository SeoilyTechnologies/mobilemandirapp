import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'dart:io';
import '../../../../../common/component/skeleton_loader.dart';

import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/pages/sant/presentation/sant_detail/sant_about_card.dart';
import 'package:mandirapp/pages/sant/presentation/sant_detail/sant_detail_header.dart';
import 'package:mandirapp/pages/sant/presentation/sant_detail/sant_info_card.dart';

import '../../../../common/component/app_text_style.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/utils/auth_helper.dart';
import '../../../../common/values/screenUtils.dart';
import '../../../mobile_mandir_home/data/entity/sant/sant_list/sant_list_response.dart';
import '../../../temple_detail/presentation/ui/component/section_title.dart';

class SantDetailNewUi extends StatelessWidget {
  const SantDetailNewUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4EEE8),
      body: BlocConsumer<SantBloc, SantState>(
        listener: (context, state) {},
        builder: (context, state) {
          final sant = state.santDetailResponse.data;

          // Loading state
          if (state.isDetailLoading) {
            return Column(
              children: [
                const SkeletonDetailHeader(),
                const SizedBox(height: 16),
                const SkeletonListView(itemCount: 4),
              ],
            );
          }

          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const SantDetailHeader(),

                Transform.translate(
                  offset: const Offset(0, -18),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF4EEE8),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Column(
                        children: [
                          /// KEY INFORMATION CARD
                          const SizedBox(height: 14),

                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.only(
                              left: 18,
                              right: 18,
                              top: 14,
                              bottom: 12,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFDFDFD),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: const Color(0xFFE5D6C5),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 24,
                                      height: 24,
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        color: AppColor.newsecondaruy,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      child: Image.asset(
                                        "assets/new_design/icon/sant_detail_info.png",
                                        width: 12,
                                      ),
                                    ),
                                    const SizedBox(width: 14),
                                    Text(
                                      context.l10n.keyInformationCap,
                                      // style: AppTextStyle.gilroyBold(
                                      //   context.screenWidth * 0.037,
                                      //   color: AppColor.fullBlack,
                                      // ),
                                      style: AppTextStyle.gilroyBold(
                                        fontWeight: FontWeight.w400,

                                        context.screenWidth * 0.053,
                                        color: AppColor.fullBlack,
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 18),

                                // DOB — show only if not empty
                                // if (sant.dob.isNotEmpty)
                                //   SantInfoCard(
                                //     title: "DOB",
                                //     value: sant.dob,
                                //   ),

                                // DOB Place — show only if not empty
                                if (sant.dobPlace.isNotEmpty)
                                  SantInfoCard(
                                    title: context.l10n.birthPlace,
                                    value: sant.dobPlace,
                                  ),

                                // Specialist
                                if (sant.specialist.isNotEmpty)
                                  SantInfoCard(
                                    title: context.l10n.specialist,
                                    value: sant.specialist,
                                  ),

                                // Guru
                                if (sant.guru.isNotEmpty)
                                  SantInfoCard(title: context.l10n.guru, value: sant.guru),

                                // Education
                                if (sant.education.isNotEmpty)
                                  SantInfoCard(
                                    title: context.l10n.educationLabel,
                                    value: sant.education,
                                  ),

                                // Designation
                                if (sant.designation.isNotEmpty)
                                  SantInfoCard(
                                    title: context.l10n.designation,
                                    value: sant.designation,
                                  ),

                                // Aashram
                                // if (sant.aashram.isNotEmpty)
                                //   SantInfoCard(
                                //     title: "Aashram",
                                //     value: sant.aashram,
                                //   ),

                                // Experience Years
                                if (sant.experienceYears > 0)
                                  SantInfoCard(
                                    title: context.l10n.experience,
                                    value: "${sant.experienceYears} Years",
                                  ),

                                // Followers Count
                                if (sant.followersCount > 0)
                                  SantInfoCard(
                                    title: context.l10n.followers,
                                    value: sant.followersCount.toString(),
                                  ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 26),

                          /// ABOUT CARD
                          if (sant.about.isNotEmpty)
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(18),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFDFDFD),
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(
                                  color: const Color(0xFFE5D6C5),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        padding: const EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          color: AppColor.newsecondaruy,
                                          borderRadius: BorderRadius.circular(
                                            2,
                                          ),
                                        ),
                                        child: Image.asset(
                                          "assets/new_design/icon/user_avatar.png",
                                          width: 12,
                                        ),
                                      ),
                                      const SizedBox(width: 14),
                                      Text(
                                        context.l10n.aboutSection,
                                        style: AppTextStyle.gilroyBold(
                                          fontWeight: FontWeight.w400,

                                          context.screenWidth * 0.053,
                                          color: AppColor.fullBlack,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 24),
                                  SantAboutCard(description: sant.about),
                                ],
                              ),
                            ),

                          /// SOCIAL LINKS CARD
                          // if (_hasSocialLinks(sant.socialLinks))
                          //   _buildSocialLinksCard(context, sant),
                          const SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                            SectionTitle(title: context.l10n.relatedSant),
                          ],),
                          const SizedBox(height: 14),
                          if (state.relatedsantListResponse.data.isNotEmpty)
                            SizedBox(
                              height: Platform.isIOS?context.screenHeight * 0.39:context.screenHeight * 0.41,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount:
                                    state.relatedsantListResponse.data.length,
                                itemBuilder: (context, index) {
                                  final sant =
                                      state.relatedsantListResponse.data[index];

                                  return Padding(
                                    padding: EdgeInsets.only(
                                      right:
                                          index ==
                                              state
                                                      .relatedsantListResponse
                                                      .data
                                                      .length -
                                                  1
                                          ? 0
                                          : 12,
                                    ),
                                    child: templeCard(context, sant),
                                  );
                                },
                              ),
                            ),
                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget templeCard(BuildContext context, Sant sant) {
    return GestureDetector(
      onTap: () {
        context.read<SantBloc>().add(SantEvent.getSantDetailById(sant.id));

        context.read<SantBloc>().add(
          SantEvent.getRelatedAllSantList(currentSantId: sant.id),
        );
      },
      child: Container(
        width: context.screenWidth * 0.53,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(14),
                  ),
                  child: Image.network(
                    AppConstant.fileBaseUrl + sant.image,
                    width: context.screenWidth * 0.53,
                    height: context.screenWidth * 0.5,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      height: context.screenWidth * 0.5,
                      color: Colors.grey.shade300,
                      child: const Icon(Icons.person),
                    ),
                  ),
                ),

                Positioned(
                  right: 10,
                  top: 10,
                  child: GestureDetector(
                    onTap: () {
                      if (context.requireLogin()) return;
                      context.read<SantBloc>().add(
                        SantEvent.toggleWishlist(
                          itemId: sant.id,
                          itemModel: "Sant",
                        ),
                      );
                    },
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF9B5A13),
                      ),
                      child: Icon(
                        sant.isAddedInWishlist
                            ? Icons.favorite
                            : Icons.favorite_border,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sant.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.gilroyBold(
                      context.screenWidth * 0.038,
                      color: AppColor.newsecondaruy,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    sant.about,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.032,
                      height: 1.6,
                      color: AppColor.newGreyy,
                    ),
                  ),

                  const SizedBox(height: 8),

                  SizedBox(
                    height: 29,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        if (sant.designation.isNotEmpty)
                          button("ss"+sant.designation, context),

                        if (sant.specialist.isNotEmpty) ...[
                          const SizedBox(width: 6),
                          button(sant.specialist, context),
                        ],

                        if (sant.guru.isNotEmpty) ...[
                          const SizedBox(width: 6),
                          button(sant.guru, context),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget button(String text, BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
      decoration: BoxDecoration(
        color: AppColor.newsecondaruy.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: AppTextStyle.gilroyMedium(
          context.screenWidth * 0.032,
          color: AppColor.newsecondaruy,
        ),
      ),
    );
  }
}
