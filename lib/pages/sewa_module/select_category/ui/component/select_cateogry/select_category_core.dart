import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import '../../../../../../common/analytics/facebook_analytics.dart';
import '../../../../../../common/analytics/facebook_events.dart';
import '../../../../../../common/component/mm_vendor_appbar.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/utils/auth_helper.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../../../../common/values/screenUtils.dart';
import '../../../../../../common/values/snack_bar.dart';
import '../../../../../auth/component/primary_button.dart';

import '../../../../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../../../../mobile_mandir_home/presentation/bloc/mobile_home_state.dart';
import '../../../../book_sewa/bloc/book_sewa_page_bloc.dart';
import '../../../../book_sewa/bloc/book_sewa_page_event.dart';
import '../../../../sewa_page/presentation/bloc/seva_page_bloc.dart';
import '../../../../sewa_page/presentation/bloc/seva_page_event.dart';
import '../../bloc/select_category_bloc.dart';
import '../../bloc/select_category_event.dart';
import '../../bloc/select_category_state.dart';
import '../category_grid.dart';
import '../multi_seva_hint.dart';

class SelectCategoryCore extends StatelessWidget {
  final EdgeInsets padding;
  final double topSpacing;

  const SelectCategoryCore({
    super.key,
    required this.padding,
    required this.topSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {
        if (state.errorMessage.isNotEmpty) {
          context.showCustomSnackbar(
            state.errorMessage,
            backgroundColor: AppColor.newsecondaruy,
          );
          return;
        }

        if (state.isProceedSuccess) {}
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColor.lightyellobackground,

          body: SizedBox(
            height: context.screenHeight,
            width: context.screenWidth,
            child: Stack(
              children: [
                /// HEADER
                // const SevaGoldenHeader(
                //   title: 'I am a...',
                //   subtitle: 'Select your seva category',
                // ),
                Container(
                  width: double.infinity,
                  height: context.screenHeight * 0.19,
                  padding: EdgeInsets.only(
                    // top: MediaQuery.of(context).padding.top + 15,
                    left: 8,
                    right: 8,
                    bottom: 14,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/background_image/gradient_background.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: MmVendorAppbar(
                    title: context.l10n.selectSeva,
                    showBackButton: true,
                    onBackTap: () {
                      context.read<AppBloc>().loadUserData();
                      context.read<AppBloc>().add(TriggerAppEvent(0));
                      // Navigator.pop(context);
                    },
                  ),
                ),

                /// BODY
                Positioned(
                  top: context.screenHeight * topSpacing,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(29),
                    ),
                    child: Container(
                      color: AppColor.lightyellobackground,
                      child: Column(
                        children: [
                          const SizedBox(height: 18),

                          /// 🔥 SAME COMPONENT (NO CHANGE)
                          Expanded(
                            child: SingleChildScrollView(
                              padding: padding,
                              child: Column(
                                children: [
                                  CategoryGrid(
                                    selectedId: state.selectedCategory?.id,
                                    onCategoryTap: (cat) {
                                      if (context.requireLogin()) return;
                                      context.read<MobileHomeBloc>().add(
                                        MobileHomeEvent.categorySelected(cat),
                                      );

                                      context.read<SevaPageBloc>().add(
                                        SevaPageEvent.getSewaPriceList(
                                          categoryId: cat.id,
                                          categoryDescription: cat.description,
                                          categoryName: cat.name
                                        ),
                                      );

                                      BlocProvider.of<BookSewaPageBloc>(
                                        context,
                                      ).add(
                                        const BookSewaPageEvent.resetState(),
                                      );
                                      FacebookAnalytics.logEvent(
                                        FacebookEvents.sewaStarted,
                                        parameters: {
                                          "sewa_type": "${cat.name}",
                                        },
                                      );
                                      Navigator.pushNamed(
                                        context,
                                        AppRoutes.SEVA_PAGE,
                                      );
                                    },
                                  ),

                                  SizedBox(height: context.screenHeight * 0.03),

                                  // MultiSevaHint(),
                                  //   const SizedBox(height: 20),

                                  // PrimaryButton(
                                  //   title: context.l10n.continueText,
                                  //   onTap: () {
                                  //     Navigator.pushNamed(
                                  //       context,
                                  //       AppRoutes.SEVA_PAGE,
                                  //     );
                                  //   },
                                  // ),
                                  const SizedBox(height: 110),
                                ],
                              ),
                            ),
                          ),
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
  }
}
