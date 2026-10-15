import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'dart:io';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/component/mobile_home_god/popular_god_girlist.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/component/mobile_home_temple/temple_gird_item.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/component/text_with_addbtn.dart';

import '../../../../../../common/component/load_more_button.dart';
import '../../../../../../common/component/search_bar.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../bloc/mobile_home_event.dart';
import '../../../bloc/mobile_home_state.dart';
import '../../updated_component/title_with_see_allbutton.dart';
import 'home_god_horizontal_tab.dart';
import 'home_god_list_view.dart';

class MobileHomeGodPage extends StatelessWidget {
  const MobileHomeGodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Container(
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
                  title: context.l10n.godListing,
                  showActionButton: false,
                  actionText: context.l10n.addGod,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 10,
                  bottom: 18,
                ),
                child: SearchBarWidgett(
                  animatedHints: [],
                  hintText: context.l10n.searchGod,
                  onChanged: (value) {
                    context.read<MobileHomeBloc>().add(SearchNewHomeGod(value));
                  },
                ),
              ),

              HomeGodHorizontalTab(),

              SizedBox(height: 18),

              HomeGodListView(),

              SizedBox(height: 18),

              !state.hasMoreHomeGodData
                  ? SizedBox()
                  : LoadMoreButton(
                      onTap: () {
                        context.read<MobileHomeBloc>().add(
                          const GetNewGodDataList(true),
                        );
                      },
                    ),

              SizedBox(height: 10),

              Padding(
                padding: EdgeInsets.only(
                  left: 12,
                  right: 12,
                  top: 8,
                  bottom: 0,
                ),
                child: TitleWithSeeAllButton(
                  title: context.l10n.popularGods,
                  showActionButton: false,
                  actionText: context.l10n.seeAll,
                  onActionTap: () {},
                ),
              ),

              // GridView.builder(
              //   padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              //   shrinkWrap: true,
              //   physics: const NeverScrollableScrollPhysics(),
              //   itemCount: 6,
              //   gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 3,
              //     crossAxisSpacing: 8,
              //     mainAxisSpacing: 8,
              //     childAspectRatio: Platform.isIOS?0.71:0.68,
              //   ),
              //   itemBuilder: (context, index) {
              //     return TempleGridItem(
              //       showLocationIcon: false,
              //       image:
              //           "uploads/1768999825516-090bdb8b-ef5d-43f2-ae28-4c51cfe768e5-aarti-maa-durga-1.jpg",
              //       title: "Shri Ram Ji",
              //       location: "Category - God",
              //       onTap: () {},
              //     );
              //   },
              // ),
              PopularGodGrid(),
              SizedBox(height: context.screenHeight * 0.15),
            ],
          ),
        );
      },
    );
  }
}
