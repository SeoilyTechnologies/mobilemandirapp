import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import '../../../../../common/component/skeleton_loader.dart';
import 'package:mandirapp/common/network/network_eport.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/utils/auth_helper.dart';
import '../../../../common/utils/utils.dart';
import '../../../auth/component/primary_button.dart';
import '../../../naamjaap/jaappage/presentation/mala_circle.dart';
import '../../../temple_detail/presentation/ui/component/about_temple_card.dart';
import '../../../temple_detail/presentation/ui/component/info_tile.dart';
import '../../../naamjaap/jaappage/presentation/bloc/jaap_page_bloc.dart';
import '../../../naamjaap/jaappage/presentation/bloc/jaap_page_event.dart';
import '../../../naamjaap/jaappage_one/presentation/bloc/jaap_bloc.dart';
import '../../../naamjaap/jaappage_one/presentation/bloc/jaap_event.dart';
import '../../../naamjaap/jaappage_one/presentation/bloc/jaap_state.dart';
import '../../../naamjaap/jaappage_one/presentation/ui/component/jap_count_section.dart';
import '../../../temple_detail/presentation/ui/component/section_title.dart';
import '../bloc/god_details_bloc.dart';
import '../bloc/god_details_event.dart';
import '../bloc/god_details_state.dart';
import 'component/family_members.dart';
import 'component/god_festival_card.dart';
import 'component/daan_seva_section.dart';
import 'component/avatar_forms_section.dart';
import 'component/bhajan_section.dart';
import 'component/god_header.dart';
import 'component/popular_gird_item.dart';
import 'component/top_temple_section.dart';

class GodDetailScreen extends StatelessWidget {
  GodDetailScreen({super.key});

  final GlobalKey _bhajanSectionKey = GlobalKey();
  final GlobalKey _naamJaapSectionKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments;
    return BlocConsumer<GodDetailsBloc, GodDetailsState>(
      listener: (context, state) {
        final args = ModalRoute.of(context)?.settings.arguments;

        if (args is Map) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (args["scrollToAarti"] == true) {
              final ctx = _bhajanSectionKey.currentContext;
              if (ctx != null) {
                Scrollable.ensureVisible(
                  ctx,
                  duration: const Duration(milliseconds: 700),
                  curve: Curves.easeInOut,
                );
              }
            } else if (args["scrollToNaamJaap"] == true) {
              final ctx = _naamJaapSectionKey.currentContext;
              if (ctx != null) {
                Scrollable.ensureVisible(
                  ctx,
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.easeInOut,
                );
              }
            }
          });
        }
      },
      builder: (context, state) {
        final mantraItems = state.godDetailApiResponse.data.devotional
            .where((item) => item.type.toLowerCase() == "mantra")
            .toList();
        final naamJaapMantra = mantraItems.isNotEmpty
            ? mantraItems.first
            : null;
        final naamJaapTitle = naamJaapMantra?.title.isNotEmpty == true
            ? naamJaapMantra!.title
            : state.godDetailApiResponse.data.name;

        return BlocConsumer<GodDetailsBloc, GodDetailsState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              backgroundColor: AppColor.lightyellobackground,
              body: state.isLoading 
                ? Column(
                    children: [
                      const SkeletonDetailHeader(),
                      const SizedBox(height: 16),
                      const SkeletonListView(itemCount: 4),
                    ],
                  )
                : SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                     GodHeader(),

                    Transform.translate(
                      offset: const Offset(0, -18),
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: AppColor.lightyellobackground,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 16),

                              /// Basic Information
                              SectionTitle(title: context.l10n.godDetailBasicInfo),

                              const SizedBox(height: 8),

                              Row(
                                children: [
                                  Expanded(
                                    child: InfoTile(
                                      title: context.l10n.godNameLabel,
                                      value:
                                          "${state.godDetailApiResponse.data.name}",
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: InfoTile(
                                      title: context.l10n.avatarOf,
                                      value:
                                          "${state.godDetailApiResponse.data.avatarOf}",
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 10),

                              Row(
                                children: [
                                  Expanded(
                                    child: InfoTile(
                                      title: context.l10n.genderLabel,
                                      value:
                                      "${Utils.capitalizeFirstLetter("${state.godDetailApiResponse.data.gender}")}",
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: InfoTile(
                                      title: context.l10n.birthPlace,
                                      value:
                                          "${state.godDetailApiResponse.data.birthPlace}",
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 10),

                              Row(
                                children: [
                                  Expanded(
                                    child: InfoTile(
                                      title: context.l10n.categoryLabel,
                                      value:
                                          "${state.godDetailApiResponse.data.category}",
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: InfoTile(
                                      title: context.l10n.weaponLabel,
                                      value:
                                          "${state.godDetailApiResponse.data.weapons}",
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 10),

                              Row(
                                children: [
                                  Expanded(
                                    child: InfoTile(
                                      title: context.l10n.vahanLabel,
                                      value:
                                          "${state.godDetailApiResponse.data.vahans}",
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: InfoTile(
                                      title: context.l10n.favoriteColor,
                                      value:
                                          "${state.godDetailApiResponse.data.favoriteColors}",
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 10),

                              Row(
                                children: [
                                  Expanded(
                                    child: InfoTile(
                                      title: context.l10n.favoriteFood,
                                      value:
                                          "${state.godDetailApiResponse.data.favoriteFoods}",
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: InfoTile(
                                      title: context.l10n.dayLabel,
                                      value:
                                      state.godDetailApiResponse.data.days
                                          .map((e) => Utils.getDayName(e))
                                          .join(", "),
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 10),

                              SizedBox(
                                width: context.screenWidth,
                                child: InfoTile(
                                  title: context.l10n.alternateNames,
                                  value:
                                      "${state.godDetailApiResponse.data.alternateNames}",
                                  // fullWidth: true,
                                ),
                              ),
                              const SizedBox(height: 28),

                              /// About
                              SectionTitle(title: context.l10n.aboutSection),

                              const SizedBox(height: 8),

                              AboutTempleCard(
                                description: state
                                    .godDetailApiResponse
                                    .data
                                    .shortDescription,
                              ),

                              state
                                      .godDetailApiResponse
                                      .data
                                      .festivals
                                      .isNotEmpty
                                  ? const SizedBox(height: 28)
                                  : SizedBox.shrink(),

                              /// Festivals
                              state
                                      .godDetailApiResponse
                                      .data
                                      .festivals
                                      .isNotEmpty
                                  ? SectionTitle(
                                      title: context.l10n.festivalsOccasions,
                                    )
                                  : SizedBox(),

                              state
                                      .godDetailApiResponse
                                      .data
                                      .festivals
                                      .isNotEmpty
                                  ? const SizedBox(height: 8)
                                  : SizedBox(),

                              state
                                      .godDetailApiResponse
                                      .data
                                      .festivals
                                      .isNotEmpty
                                  ? const GodFestivalCard()
                                  : SizedBox(),
                              state
                                      .godDetailApiResponse
                                      .data
                                      .vendorSeva
                                      .isNotEmpty
                                  ? const SizedBox(height: 28)
                                  : SizedBox(),

                              state
                                      .godDetailApiResponse
                                      .data
                                      .vendorSeva
                                      .isNotEmpty
                                  ?  DaanSevaSection()
                                  : SizedBox(),

                              state
                                  .godDetailApiResponse
                                  .data
                                  .avatarsAndForms
                                  .isNotEmpty?    const SizedBox(height: 28):SizedBox(),

                              state
                                      .godDetailApiResponse
                                      .data
                                      .avatarsAndForms
                                      .isNotEmpty
                                  ? SectionTitle(title: context.l10n.avatarsAndForms)
                                  : SizedBox(),

                              state
                                      .godDetailApiResponse
                                      .data
                                      .avatarsAndForms
                                      .isNotEmpty
                                  ? const SizedBox(height: 14)
                                  : SizedBox(),

                              state
                                      .godDetailApiResponse
                                      .data
                                      .avatarsAndForms
                                      .isNotEmpty
                                  ?  AvatarFormsSection()
                                  : SizedBox(),
                              state.godDetailApiResponse.data.devotional.isNotEmpty
                                  ? const SizedBox(height: 28)
                                  : SizedBox(),

                              state.godDetailApiResponse.data.devotional.isNotEmpty? SectionTitle(
                                key: _bhajanSectionKey,
                                title:
                                    "${state.godDetailApiResponse.data.name}",
                              ):SizedBox(),

                              state.godDetailApiResponse.data.devotional.isNotEmpty?const SizedBox(height: 8):SizedBox(),

                              state.godDetailApiResponse.data.devotional.isNotEmpty? BhajanSection():SizedBox(),

                              naamJaapMantra != null
                                  ? const SizedBox(height: 24)
                                  : const SizedBox(),
                              naamJaapMantra != null
                                  ? SectionTitle(
                                      title: context.l10n.naamJaap,
                                      key: _naamJaapSectionKey,
                                    )
                                  : const SizedBox(),

                              naamJaapMantra != null
                                  ? const SizedBox(height: 9)
                                  : const SizedBox(),
                              naamJaapMantra != null
                                  ? Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 22,
                                        vertical: 26,
                                      ),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFDFDFD),
                                        borderRadius: BorderRadius.circular(22),
                                        border: Border.all(
                                          color: const Color(0xFFE3D4C3),
                                        ),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          const SizedBox(height: 18),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 24,
                                            ),
                                            child: MalaCircleForGodPage(
                                              total: 38,
                                              current: 4,
                                              godName: "$naamJaapTitle",
                                            ),
                                          ),
                                          const SizedBox(height: 22),
                                          const JapCountSection(),
                                          SizedBox(height: 12),
                                          _GodDetailNaamJaapButton(
                                            mantraId: naamJaapMantra.id,
                                            mantraTitle: naamJaapTitle,
                                            mantraLyrics:
                                                naamJaapMantra.testLyrics,
                                          ),
                                        ],
                                      ),
                                    )
                                  : const SizedBox(),

                              state.godDetailApiResponse.data.temples.isNotEmpty
                                  ? SizedBox(height: 24)
                                  : SizedBox(),
                              state.godDetailApiResponse.data.temples.isNotEmpty
                                  ? TopTempleSection()
                                  : SizedBox(),

                              SizedBox(height: 24),
                              state
                                      .godDetailApiResponse
                                      .data
                                      .familyMembers
                                      .isNotEmpty
                                  ? SectionTitle(title: context.l10n.familyMembers)
                                  : SizedBox(),

                              state
                                      .godDetailApiResponse
                                      .data
                                      .familyMembers
                                      .isNotEmpty
                                  ? const SizedBox(height: 8)
                                  : SizedBox(),

                              state
                                      .godDetailApiResponse
                                      .data
                                      .familyMembers
                                      .isNotEmpty
                                  ? const FamilyMembers()
                                  : SizedBox(),
                              state
                                      .godDetailApiResponse
                                      .data
                                      .familyMembers
                                      .isNotEmpty
                                  ? const SizedBox(height: 24)
                                  : SizedBox(),
                              state
                                      .godDetailApiResponse
                                      .data
                                      .relatedGods
                                      .isNotEmpty
                                  ? SectionTitle(title: context.l10n.relatedGod)
                                  : SizedBox(),
                              state
                                      .godDetailApiResponse
                                      .data
                                      .relatedGods
                                      .isNotEmpty
                                  ? GridView.builder(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 0,
                                        vertical: 6,
                                      ),
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemCount: state
                                          .godDetailApiResponse
                                          .data
                                          .relatedGods
                                          .length,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            crossAxisSpacing: 8,
                                            mainAxisSpacing: 8,
                                            childAspectRatio: 0.63,
                                          ),
                                      itemBuilder: (context, index) {
                                        return PopularGirdItem(
                                          showLocationIcon: false,
                                          image:
                                              AppConstant.fileBaseUrl +
                                              state
                                                  .godDetailApiResponse
                                                  .data
                                                  .relatedGods[index]
                                                  .image,
                                          title:
                                              "${state.godDetailApiResponse.data.relatedGods[index].name}",
                                          location:
                                              "${context.l10n.category} - ${state.godDetailApiResponse.data.relatedGods[index].category}",
                                          onTap: () {
                                            BlocProvider.of<GodDetailsBloc>(
                                              context,
                                            ).add(
                                              GodDetailsEvent.getGodDetailById(
                                                id: state
                                                    .godDetailApiResponse
                                                    .data
                                                    .relatedGods[index]
                                                    .id,
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    )
                                  : SizedBox(),
                              const SizedBox(height: 30),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _GodDetailNaamJaapButton extends StatelessWidget {
  final String mantraId;
  final String mantraTitle;
  final String mantraLyrics;

  const _GodDetailNaamJaapButton({
    required this.mantraId,
    required this.mantraTitle,
    required this.mantraLyrics,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JaapBloc, JaapState>(
      listenWhen: (previous, current) {
        return previous.jaapSessionId != current.jaapSessionId &&
            current.jaapSessionId != null &&
            current.apiErrorMessage.isEmpty;
      },
      listener: (context, state) {
        Navigator.pushNamed(
          context,
          AppRoutes.JAAP_PAGE,
          arguments: {
            "sessionId": state.jaapSessionId!,
            "totalCount": int.tryParse(state.selectedJapCount) ?? 108,
            "mantraName": state.selectedMantraId,
            "mantraNameeetitle": state.selectedMantraTitle,
            "mantraId": state.selectedMantraId,
            "mantraTitle": state.selectedMantraTitle,
            "mantraLyrics": state.mantraLyrics,
          },
        );
      },
      builder: (context, state) {
        return GodDetailPageActionButtonPrimary(
          onTap: () {
            if (context.requireLogin()) return;
            context.read<JaapBloc>().add(
              JaapEvent.selectMantra(mantraId, mantraTitle, mantraLyrics),
            );

            BlocProvider.of<JaapPageBloc>(
              context,
            ).add(const JaapPageEvent.completeReset());

            context.read<JaapBloc>().add(const JaapEvent.createJaapSession());
          },
          title: context.l10n.startJaap,
        );
      },
    );
  }
}
