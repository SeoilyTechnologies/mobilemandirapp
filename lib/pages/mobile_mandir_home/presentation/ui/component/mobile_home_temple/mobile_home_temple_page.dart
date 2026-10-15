import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'dart:async';

import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/component/mobile_home_temple/popular_temple_grid_view.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/component/mobile_home_temple/popular_temple_slider.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/component/text_with_addbtn.dart';

import '../../../../../../common/component/current_location/search_with_current_location.dart';
import '../../../../../../common/component/load_more_button.dart';
import '../../../../../../common/component/search_bar.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../bloc/mobile_home_event.dart';
import '../../../bloc/mobile_home_state.dart';
import '../../updated_component/title_with_see_allbutton.dart';
import 'home_temple_listview_page.dart';

class MobileHomeTemplePage extends StatefulWidget {
  const MobileHomeTemplePage({super.key});

  @override
  State<MobileHomeTemplePage> createState() => _MobileHomeTemplePageState();
}

class _MobileHomeTemplePageState extends State<MobileHomeTemplePage> {
  late TextEditingController controller;
  Timer? _locationDebounce;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    _locationDebounce?.cancel();

    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {
        if (state.location.isNotEmpty && controller.text != state.location) {
          controller.text = state.location;

          controller.selection = TextSelection.fromPosition(
            TextPosition(offset: controller.text.length),
          );
        }
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();

            context.read<MobileHomeBloc>().add(
              const EditProfileShowHideLocationListEvent(false),
            );
          },
          child: Container(
            color: AppColor.newbackgroundColorHome,
            padding: EdgeInsets.only(left: 0, right: 0),

            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: context.screenHeight * 0.03,
                    bottom: 6,
                  ),
                  child: TextWithAddbtn(
                    title: context.l10n.templeNearYou,
                    showActionButton: false,
                    actionText: context.l10n.addTemple,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 10,
                    bottom: 0,
                  ),
                  child: SearchBarWidgett(
                    hintText: context.l10n.searchTemple,
                    onChanged: (value) {
                      context.read<MobileHomeBloc>().add(
                        SearchHomeTemple(value),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 10,
                    bottom: 0,
                  ),
                  child: SearchWithCurrentLocation(
                    controller: controller,
                    hintText: context.l10n.enterTempleName,
                    activeMicIcon: "assets/new_design/icon/current_loc.png",
                    micIcon: "assets/new_design/icon/current_loc.png",
                    onMicTap: () {
                      context.read<MobileHomeBloc>().add(
                        const DetectLocation(),
                      );
                    },
                    onChanged: (value) {
                      _locationDebounce?.cancel();

                      _locationDebounce = Timer(
                        const Duration(milliseconds: 300),
                        () {
                          context.read<MobileHomeBloc>().add(
                            EditProfileLocationChanged(value),
                          );
                        },
                      );
                    },
                  ),
                ),
                if (state.isPlaceLoading)
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: CircularProgressIndicator(),
                  ),

                ///yaha pe list hide show hoga
                if (state.showHideLocationList &&
                    state.placeSuggestions.isNotEmpty)
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: ListView.separated(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.placeSuggestions.length > 5
                          ? 5
                          : state.placeSuggestions.length,
                      separatorBuilder: (_, __) => const Divider(height: 1),
                      itemBuilder: (context, index) {
                        final item = state.placeSuggestions[index];

                        return ListTile(
                          dense: true,
                          leading: const Icon(
                            Icons.location_on_outlined,
                            color: AppColor.primary,
                          ),
                          title: Text(
                            item['description'],
                            style: AppTextStyle.regular(14),
                          ),
                          onTap: () {
                            controller.text = item['description'];
                            context.read<MobileHomeBloc>().add(
                              EditProfileSelectLocation(
                                description: item['description'],
                                placeId: item['place_id'],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 16,
                    bottom: 8,
                  ),
                  child: TitleWithSeeAllButton(
                    title: "${state.homeTempleListResponse.data.items.length} ${context.l10n.resultsFound}",
                    showActionButton: false,
                    actionText: context.l10n.seeAll,
                    onActionTap: () {},
                  ),
                ),

                HomeTempleListviewPage(),

                SizedBox(height: 14),

                state.hasMoreHomeTempleData
                    ? LoadMoreButton(
                        onTap: () {
                          context.read<MobileHomeBloc>().add(
                            const GetHomeTempleDataList(true),
                          );
                        },
                      )
                    : SizedBox(),

                SizedBox(height: 20),

                DistanceSliderComponent(
                  title: context.l10n.popularTemples,
                  max: 10,
                  value: state.popularTempleDistance,
                  startLabel: "0 ${context.l10n.km}",
                  endLabel: "10 ${context.l10n.km}",
                  onChanged: (val) {
                    context.read<MobileHomeBloc>().add(
                      ChangePopularTempleDistance(val),
                    );
                  },
                ),

                const PopularTempleGridView(),
                SizedBox(height: context.screenHeight * 0.15),
              ],
            ),
          ),
        );
      },
    );
  }
}
