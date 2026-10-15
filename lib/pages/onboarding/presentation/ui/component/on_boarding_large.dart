import 'package:dots_indicator/dots_indicator.dart';
import 'package:mandirapp/common/network/app_constant.dart';

import '../../../../../l10n/l10n_extension.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import 'package:mandirapp/pages/language/language_toggle_button.dart';
import '../../../../../common/component/app_button.dart';
import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/local/SharedPrefs.dart';
import '../../../../../common/routes/exports.dart';
import '../../../../../common/routes/routes.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../../../../common/values/app_color.dart';
import '../../../../../common/values/screenUtils.dart';
import '../../bloc/onboarding_bloc.dart';
import '../../bloc/onboarding_event.dart';
import '../../bloc/onboarding_state.dart';



class OnBoardingLarge extends StatelessWidget {
  const OnBoardingLarge({super.key});

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    return BlocConsumer<OnboardingBloc, OnboardingState>(
      listener: (context, state) {
        // handle navigation if needed
      },
      builder: (context, state) {
        if (state.items.isEmpty) {
          return const SizedBox.shrink();
        }

        final pageController = PageController(initialPage: state.currentIndex);

        return Scaffold(
            backgroundColor: AppColor.newsecondaruy,
            body:  SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (index) {
                  context.read<OnboardingBloc>().add(
                    OnboardingEvent.pageChanged(index),
                  );
                },
                itemCount: state.items.length,
                itemBuilder: (context, index) {
                  final item = state.items[index];

                  return Stack(
                    //  crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// ----------- IMAGE SECTION (45% HEIGHT) -----------

                      Positioned(
                        top: context.screenHeight*0.04,
                        left: 0,
                        child:  Image.asset(
                          item.image,
                          width: context.screenWidth,
                          height: context.screenHeight*1.75,
                          fit: BoxFit.contain,

                        ),),

                      /// ----------- LANGUAGE TOGGLE BUTTON -----------
                      Positioned(
                        top: 40,
                        right: 16,
                        child: SafeArea(
                          child: LanguageToggleButton(),
                        ),
                      ),
                      // Positioned.fill(child: Image.asset(
                      //   item.image,
                      //   width: context.screenWidth,
                      //   height: context.screenWidth*0.3,
                      //   fit: BoxFit.fill,
                      // ),),

                      Align(
                        alignment: Alignment.bottomCenter,
                        child:   Container(
                          padding: EdgeInsets.only(
                            left: 12,
                            right: 12,
                            top: 0,
                          ),
                          width: double.infinity,
                         // height: context.screenHeight*0.,
                          decoration: const BoxDecoration(
                            color: Colors.white, // background white
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                            ),
                          ),
                          child:SingleChildScrollView(

                            child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(height: 24),

                                Text(
                                  item.title(context.l10n),
                                  textAlign: TextAlign.center,
                                  style: AppTextStyle.gilroyBold(
                                    context.screenWidth * 0.03,
                                    color: AppColor.appBlack,
                                  ),
                                ),

                                const SizedBox(height: 10),

                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 40,
                                  ),
                                  child: Text(
                                    item.subtitle(context.l10n),
                                    textAlign: TextAlign.center,
                                    style: AppTextStyle.gilroyBold(
                                      context.screenWidth * 0.025,
                                      color: AppColor.appBlack,
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 30),

                                /// ---------- Dots Indicator ----------
                                DotsIndicator(
                                  dotsCount: state.items.length,
                                  position: state.currentIndex.toDouble(),
                                  decorator: DotsDecorator(
                                    size: const Size.square(9.0),
                                    activeSize: const Size(18.0, 9.0),
                                    color: AppColor.newsecondaruy.withOpacity(
                                      0.3,
                                    ),
                                    activeColor: AppColor.newsecondaruy,
                                    activeShape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        5.0,
                                      ),
                                    ),
                                  ),
                                ),

                                 SizedBox(height: context.screenHeight*0.06),

                                /// ---------- Get Started ----------
                                Padding(
                                  padding:  EdgeInsets.only(bottom: context.screenHeight*0.06),
                                  child: AppButtonLarge(
                                    title:
                                    state.currentIndex ==
                                        state.items.length - 1
                                        ? context.l10n.getStarted
                                        : context.l10n.next,
                                    onTap: () async {
                                      if (state.currentIndex ==
                                          state.items.length - 1) {
                                        await getIt<SharedPrefs>().setBool(
                                          AppConstant.onBoardinPage,
                                          true,
                                        );
                                        Navigator.pushNamed(
                                          context,
                                          AppRoutes.SIGNIN,
                                        );
                                      } else {
                                        context.read<OnboardingBloc>().add(
                                          OnboardingEvent.pageChanged(
                                            state.currentIndex + 1,
                                          ),
                                        );
                                        pageController.nextPage(
                                          duration: const Duration(
                                            milliseconds: 300,
                                          ),
                                          curve: Curves.easeInOut,
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            )
        );
      },
    );
  }
}
