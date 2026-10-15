import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/component/skeleton_loader.dart';
import '../../../../../../common/local/SharedPrefs.dart';
import '../../../../../../common/network/app_constant.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/service_locator/setivelocator.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../../../auth/signin/data/entity/login_response.dart';
import '../../bloc/jaap_bloc.dart';
import '../../bloc/jaap_event.dart';
import '../../bloc/jaap_state.dart';

class ChooseMantraSection extends StatelessWidget {
  const ChooseMantraSection({super.key});

  Widget dataNotAvailableCard(BuildContext context) {
    return Container(
      // width: 180,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.info_outline, size: 18, color: Colors.black),
          SizedBox(width: 6),
          Text(
            context.l10n.noMantraAvailableForThisGod,
            style: TextStyle(
              fontSize: 13,
              color: Colors.black,
              fontFamily: AppFont.gilroyMedium,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JaapBloc, JaapState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state.isLoading) {
          return Container(
            width: context.screenWidth,
            margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 8),
            decoration: BoxDecoration(
              color: AppColor.appSantbackground,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColor.pinkBackgroundfddd, width: 1.5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.chooseMantra,
                  style: AppTextStyle.gilroyBold(context.screenWidth * 0.042),
                ),
                const SizedBox(height: 8),
                Column(
                  children: List.generate(
                    4,
                    (index) => Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: SkeletonLoader(
                        child: Row(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: FractionallySizedBox(
                                  widthFactor: [0.65, 0.8, 0.55, 0.7][index % 4],
                                  child: const SkeletonBox(
                                    height: 14,
                                    borderRadius: 4,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            const SkeletonBox(
                              width: 24,
                              height: 24,
                              borderRadius: 12,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        final mantras = state.aartiResponse.data;
        if (mantras.isEmpty) {
          return dataNotAvailableCard(context);
        }

        return Container(
          width: context.screenWidth,
          margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
          decoration: BoxDecoration(
            color: AppColor.appSantbackground,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColor.pinkBackgroundfddd, width: 1.5),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.chooseMantra,
                  style: AppTextStyle.gilroyBold(context.screenWidth * 0.042),
                ),
                const SizedBox(height: 8),

                /// 👇 IMPORTANT: ListView inside Column
                ///
                mantras.isEmpty
                    ? Text(context.l10n.noMantraAvailableForThisGod)
                    : SizedBox(),
                ListView.builder(
                  itemCount: mantras.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final mantra = mantras[index];

                    final bool isSelected = state.selectedMantraId == mantra.id;
                    // agar selectedMantraId nahi hai:
                    // final bool isSelected = index == 1;

                    return _tile(
                      mantra.title ?? "",
                      mantra.isAddedInWishlist,
                      onFavTap: () async {
                        BlocProvider.of<JaapBloc>(context).add(
                          ToggleWishlistJaapEvent(
                            itemModel: mantra.type,
                            itemId: mantra.id,
                          ),
                        );
                        final prefs = getIt<SharedPrefs>();

                        final token = await prefs.getString(AppConstant.token);
                        // final LoginResponse? userData = prefs.getModel<LoginResponse>(
                        //   AppConstant.userModel,
                        //       (json) => LoginResponse.fromJson(json),
                        // );
                        // BlocProvider.of<JaapBloc>(context).add(GetWishlistMantra(userId: "${userData!.user.id}"));
                      },
                      context,
                      selected: isSelected,
                      onTap: () {
                        context.read<JaapBloc>().add(
                          JaapEvent.selectMantra(
                            mantra.id,
                            mantra.title,
                            mantra.testLyrics,
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _tile(
    String title,
    bool isAddedInWishList,
    BuildContext context, {
    bool selected = false,
    VoidCallback? onTap,
    VoidCallback? onFavTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: selected ? AppColor.newsecondaruy : Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.transparent),
        ),
        child: Row(
          children: [
            // Icon(Icons.menu, color: selected ? Colors.white : Colors.black),
            // const SizedBox(width: 8),
            Expanded(
              child: Text(
                title,
                style: selected
                    ? AppTextStyle.gilroyMedium(
                        context.screenWidth * 0.033,
                      ).copyWith(color: Colors.white)
                    : AppTextStyle.gilroyMedium(context.screenWidth * 0.033),
              ),
            ),
            GestureDetector(
              onTap: onFavTap,
              child: Image.asset(
                color: selected ? Colors.white : AppColor.newsecondaruy,
                isAddedInWishList
                    ? "assets/new_design/icon/fav_with_circle.png"
                    : "assets/new_design/icon/fav_without_fill.png",
                width: 28,
                height: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


