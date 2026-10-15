import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import '../../../../../../common/component/skeleton_loader.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import '../../../../../../common/component/search_bar.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../data/entity/home_foryou/home_for_your_api_response.dart';
import '../../../bloc/mobile_home_event.dart';
import '../../../bloc/mobile_home_state.dart';
import '../../updated_component/title_with_see_allbutton.dart';
import '../../updated_component/updated_categories/aarti_bhajan_tab.dart';
import 'home_for_you_item_builder.dart';
import 'home_foryou_horizontal_tab.dart';

class MobileHomeSmallForYou extends StatelessWidget {
  const MobileHomeSmallForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          color: AppColor.newbackgroundColorHome,
          width: context.screenWidth,
          padding: EdgeInsets.only(left: 0, right: 0),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 18),
              Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 0,
                  bottom: 10,
                ),
                child: TitleWithSeeAllButton(
                  title: context.l10n.yourFavouriteItems,
                  showActionButton: false,
                  actionText: context.l10n.seeAll,
                  onActionTap: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 0,
                  bottom: 0,
                ),
                child: SearchBarWidgett(
                  hintText:
                      getLocalizedSearchCategoryHint(context, homeForYouTabs[state.selectedForYouTabIndex].title),
                  onChanged: (value) {
                    context.read<MobileHomeBloc>().add(
                      MobileHomeEvent.searchHomeForYou(value),
                    );
                  },
                ),
              ),
              SizedBox(height: context.screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 0,
                  bottom: 0,
                ),
                child: HomeForyouHorizontalTab(),
              ),
              SizedBox(height: context.screenHeight * 0.03),
              Container(
                color: AppColor.pinkBackgrounddd,
                padding: EdgeInsets.only(bottom: 12, top: 12),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top: 0,
                        bottom: 0,
                      ),
                      child: Row(
                        spacing: 10,
                        children: <Widget>[
                          Text(
                            getLocalizedCategoryName(context, homeForYouTabs[state.selectedForYouTabIndex].title),
                            style: AppTextStyle.gilroyBold(
                              context.screenWidth * 0.048,
                              color: AppColor.newsecondaruy,
                            ),
                          ),
                          Image.asset(
                            "assets/new_design/icon/line_with_circle.png",
                            width: context.screenWidth * 0.2,
                          ),
                        ],
                      ),
                    ),
                    state.isLoading 
                      ? const SkeletonListView(itemCount: 4)
                      : ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.homeForYouResponse.data.length,
                          itemBuilder: (context, index) {
                            return HomeForYouItemBuilder.build(
                              context,
                              state.homeForYouResponse.data[index],
                            );
                          },
                        ),
                    SizedBox(height: 95),
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

class MobileHomeMediumForYou extends StatelessWidget {
  const MobileHomeMediumForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          color: AppColor.newbackgroundColorHome,
          width: context.screenWidth,
          child: Column(
            children: <Widget>[
              const SizedBox(height: 24),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: TitleWithSeeAllButton(
                  title: context.l10n.yourFavouriteItems,
                  showActionButton: false,
                  actionText: context.l10n.seeAll,
                  onActionTap: () {},
                ),
              ),

              const SizedBox(height: 12),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: SearchBarWidgett(

                  hintText:
                      getLocalizedSearchCategoryHint(context, homeForYouTabs[state.selectedForYouTabIndex].title),
                  onChanged: (value) {
                    context.read<MobileHomeBloc>().add(
                      MobileHomeEvent.searchHomeForYou(value),
                    );
                  },
                ),
              ),

              SizedBox(height: context.screenHeight * 0.03),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: HomeForyouHorizontalTabMedium(),
              ),

              SizedBox(height: context.screenHeight * 0.03),

              Container(
                color: AppColor.pinkBackgrounddd,
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      child: Row(
                        children: [
                          Text(
                            getLocalizedCategoryName(context, homeForYouTabs[state.selectedForYouTabIndex].title),
                            style: AppTextStyle.gilroyBold(
                              context.screenWidth * 0.035,
                              color: AppColor.newsecondaruy,
                            ),
                          ),

                          const SizedBox(width: 12),

                          Image.asset(
                            "assets/new_design/icon/line_with_circle.png",
                            //   fit: BoxFit.fitWidth,
                            width: context.screenWidth * 0.2,
                          ),
                        ],
                      ),
                    ),

                    state.isLoading 
                      ? const SkeletonListView(itemCount: 4)
                      : ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.homeForYouResponse.data.length,
                          itemBuilder: (context, index) {
                            return HomeForYouItemBuilderTab.build(
                              context,
                              state.homeForYouResponse.data[index],
                            );
                          },
                        ),

                    const SizedBox(height: 180),
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