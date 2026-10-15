import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/common/network/network_eport.dart';
import 'package:mandirapp/common/utils/utils.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../../../mobile_mandir_home/data/entity/home_foryou/home_for_your_api_response.dart';
import '../../../../../wishlist/data/entity/wishlist/wishlist_response.dart';
import '../../bloc/jaap_bloc.dart';
import '../../bloc/jaap_event.dart';
import '../../bloc/jaap_state.dart';

class FavouriteMantraSection extends StatelessWidget {
  const FavouriteMantraSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JaapBloc, JaapState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return  state.items.data.isNotEmpty? Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColor.appSantbackground,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      context.l10n.favouritesMantra,
                      style: AppTextStyle.gilroyBold(
                        context.screenWidth * 0.04,
                        color: AppColor.newsecondaruy,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "See All",
                      style: AppTextStyle.gilroyMedium(
                        12,
                      ).copyWith(color: AppColor.primary),
                    ),
                  ],
                ),
                SizedBox(height: 12),

                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: List.generate(
                    state.items.data.length,
                    (index) => _chip(state.items.data[index], context,state),
                  ),
                ),
              ],
            ),
          ),
        ):SizedBox();
      },
    );
  }

  Widget _chip(HomeForYouItem title, BuildContext context,JaapState state) {
    final bool isSelected = state.selectedMantraId == title.mantraData!.id;
    return GestureDetector(
      onTap: (){
        context.read<JaapBloc>().add(
          JaapEvent.selectMantra(title.mantraData!.id,title.mantraData!.title,title.mantraData!.testLyrics),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected?AppColor.appWhiteColor:Colors.transparent,
          border: Border.all(color: AppColor.newsecondaruy),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title.mantraData!.title,
              style: AppTextStyle.gilroyMedium(
                context.screenWidth * 0.03,
                color: isSelected?AppColor.fullBlack:AppColor.newsecondaruy,
              ),
            ),
            SizedBox(width: 6),
            Icon(Icons.favorite, size: 16, color: isSelected?AppColor.fullBlack:AppColor.newsecondaruy,),
          ],
        ),
      ),
    );
  }
}

class FavouriteMantraSectionMedium extends StatelessWidget {
  const FavouriteMantraSectionMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JaapBloc, JaapState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColor.appSantbackground,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      context.l10n.favouritesMantra,
                      style: AppTextStyle.gilroyBold(
                        context.screenWidth * 0.04,
                        color: AppColor.newsecondaruy,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "See All",
                      style: AppTextStyle.gilroyMedium(
                        12,
                      ).copyWith(color: AppColor.primary),
                    ),
                  ],
                ),
                SizedBox(height: 12),

                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: List.generate(
                    state.items.data.length,
                        (index) => _chip(state.items.data[index], context,state),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _chip(HomeForYouItem title, BuildContext context,JaapState state) {
    final bool isSelected = state.selectedMantraId == title.mantraData!.id;
    return GestureDetector(
      onTap: (){
        context.read<JaapBloc>().add(
          JaapEvent.selectMantra(title.mantraData!.id,title.mantraData!.title,title.mantraData!.testLyrics),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected?AppColor.appWhiteColor:Colors.transparent,
          border: Border.all(color: AppColor.newsecondaruy),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title.mantraData!.title,
              style: AppTextStyle.gilroyMedium(
                context.screenWidth * 0.03,
                color: isSelected?AppColor.fullBlack:AppColor.newsecondaruy,
              ),
            ),
            SizedBox(width: 6),
            Icon(Icons.favorite, size: 16, color: isSelected?AppColor.fullBlack:AppColor.newsecondaruy,),
          ],
        ),
      ),
    );
  }
}
