import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/naamjaap/jaappage_one/presentation/bloc/jaap_bloc.dart';

import '../../../../common/component/app_text_style.dart';
import '../../../../common/values/app_color.dart';
import '../../../../common/values/fonts.dart';
import 'bloc/jaap_page_bloc.dart';
import 'bloc/jaap_page_event.dart';
import 'bloc/jaap_page_state.dart';
import 'mala_circle.dart';

class JaapBody extends StatelessWidget {
  const JaapBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JaapPageBloc, JaapPageState>(
      builder: (context, state) {
        /// 🧿 CURRENT ROUND PROGRESS (max 108)
        final int roundProgress = state.currentCount == 0
            ? 0
            : (state.currentCount % 108 == 0
                  ? state.roundTotal
                  : state.currentCount % 108);

        /// 🧿 TOTAL ROUNDS
        final int totalRounds = (state.totalCount / 108).ceil();

        return Container(
          width: double.infinity,
          height: context.screenHeight,
          padding: const EdgeInsets.symmetric(horizontal: 0),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/new_design/background/jaap_background.png",
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:        [
                  SizedBox(height: context.screenHeight * 0.04),

                  /// 🔸 Mantra Name
                  Text(
                    BlocProvider.of<JaapBloc>(
                      context,
                    ).state.selectedMantraTitle.isEmpty
                        ? context.l10n.iWillDo
                        : BlocProvider.of<JaapBloc>(
                      context,
                    ).state.selectedMantraTitle,
                    style: AppTextStyle.gilroyBold(
                      18,
                    ).copyWith(color: AppColor.newsecondaruy),
                  ),

                  SizedBox(height: context.screenHeight * 0.01),

                  /// 🧿 ROUND INFO
                  if (state.totalCount > 108)
                    Text(
                      "Mala ${state.roundIndex} of $totalRounds",
                      style: AppTextStyle.gilroyMedium(14),
                    ),

                  const SizedBox(height: 35),

                  /// 🔸 MALA (max 108 beads)
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: MalaCircle(
                      total: state.roundTotal,
                      current: roundProgress,
                    ),
                  ),

                  /// 🔸 Duration
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/new_design/icon/timer_watch.png",
                        color: AppColor.newsecondaruy,
                        width: 16,
                        height: 16,
                      ),
                      const SizedBox(width: 3),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            context.l10n.durationLabel + ": ",
                            style: AppTextStyle.gilroyMedium(
                              context.screenWidth * 0.056,
                              color: AppColor.newsecondaruy,
                            ),
                          ),
                          Text(
                            " ${_formatTime(state.duration)}",
                            style: AppTextStyle.gilroyBold(
                              context.screenWidth * 0.056,
                              color: AppColor.newsecondaruy,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: state.roundTotal==108?context.screenHeight*0.05:context.screenHeight*0.12),

                  Padding(
                    padding: EdgeInsets.only(
                      bottom: context.screenHeight * 0.08,
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 0,
                      ),
                      width: context.screenWidth,
                      //height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColor.appYelloww,
                      ),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 18, top: 18),
                        child: Html(
                          data:
                          "${BlocProvider.of<JaapBloc>(context).state.mantraLyrics}",
                          // shrinkWrap: true, // ⭐ important
                          style: {
                            "h1": Style(
                              fontFamily: AppFont.gilroyBold,
                              // fontSize: FontSize(22),
                              lineHeight: const LineHeight(1),
                            ),
                            "html": Style(
                              fontFamily: AppFont.gilroyMedium,
                              fontSize: FontSize(18),
                              lineHeight: const LineHeight(1.8),
                            ),
                            "body": Style(
                              fontFamily: AppFont.gilroySemiBold,
                              fontSize: FontSize(18),
                              lineHeight: const LineHeight(1.8),
                              margin: Margins.zero,
                              padding: HtmlPaddings.zero,
                              textAlign: TextAlign.center,
                            ),
                            "div": Style(
                              fontFamily: AppFont.gilroyBold,
                              color: AppColor.goldDark,
                              textAlign: TextAlign.center,
                              lineHeight: const LineHeight(1.4),
                              fontWeight: FontWeight.w400,
                            ),
                            "p": Style(
                              fontFamily: AppFont.gilroySemiBold,
                              margin: Margins.only(bottom: 8),
                            ),
                            "span": Style(
                              fontFamily: AppFont.gilroySemiBold,
                            ),
                          },
                        ),
                      ),
                    ),
                  ),
                  // BlocProvider.of<JaapBloc>(
                  //       context,
                  //     ).state.selectedMantraTitle.isEmpty
                  //     ? SizedBox()
                  //     : const SizedBox(height: 32),

                  /// 🔸 Reset Button
                  //       ElevatedButton(
                  //         style: ElevatedButton.styleFrom(
                  //           backgroundColor: AppColor.newsecondaruy,
                  //           padding: const EdgeInsets.symmetric(
                  //             horizontal: 28,
                  //           ),
                  // minimumSize: const Size(0, 32),
                  //           shape: RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(3),
                  //           ),
                  //         ),
                  //         onPressed: () {
                  //           context.read<JaapPageBloc>().add(const JaapPageEvent.reset());
                  //         },
                  //         child:  Text("Reset",style: AppTextStyle.semiBold(12,color: AppColor.appWhiteColor),),
                  //       ),
                ],
              ),)

              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child:   Padding(padding: EdgeInsets.only(bottom:state.roundTotal==108?context.screenHeight*0.05:context.screenHeight*0.12  ),
              //   child:
              //   Container(
              //     margin: EdgeInsets.symmetric(horizontal: 20),
              //     width: context.screenWidth,
              //     //height: 160,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(18),
              //       color: Colors.white,
              //     ),
              //     child: Padding(
              //       padding: EdgeInsets.only(bottom: 10, top: 0),
              //       child: Html(
              //         data: "${BlocProvider.of<JaapBloc>(context).state.mantraLyrics}",
              //        // shrinkWrap: true, // ⭐ important
              //
              //       ),
              //     ),
              //   ),
              //   ),
              // )
            ],
          ),
        );
      },
    );
  }

  /// 🔸 Time formatter
  String _formatTime(int seconds) {
    final min = (seconds ~/ 60).toString().padLeft(2, '0');
    final sec = (seconds % 60).toString().padLeft(2, '0');
    return "$min:$sec";
  }
}

class JaapBodyMedium extends StatelessWidget {
  const JaapBodyMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JaapPageBloc, JaapPageState>(
      builder: (context, state) {
        /// 🧿 CURRENT ROUND PROGRESS
        final int roundProgress = state.currentCount == 0
            ? 0
            : (state.currentCount % 108 == 0
                  ? state.roundTotal
                  : state.currentCount % 108);

        /// 🧿 TOTAL ROUNDS
        final int totalRounds = (state.totalCount / 108).ceil();

        return Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/new_design/background/jaap_background.png",
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(height: context.screenHeight * 0.04),

                  /// Mantra Title
                  Text(
                    BlocProvider.of<JaapBloc>(
                          context,
                        ).state.selectedMantraTitle.isEmpty
                        ? context.l10n.iWillDo
                        : BlocProvider.of<JaapBloc>(
                            context,
                          ).state.selectedMantraTitle,
                    style: AppTextStyle.gilroyBold(
                      context.screenWidth * 0.03,
                    ).copyWith(color: AppColor.newsecondaruy),
                  ),

                  SizedBox(height: context.screenHeight * 0.01),

                  /// Mala Count
                  if (state.totalCount > 108)
                    Text(
                      "Mala ${state.roundIndex} of $totalRounds",
                      style: AppTextStyle.gilroyMedium(
                        context.screenWidth * 0.02,
                      ),
                    ),

                  const SizedBox(height: 30),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: MalaCircle(
                      total: state.roundTotal,
                      current: roundProgress,
                    ),
                  ),

                  const SizedBox(height: 16),

                  /// Duration
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/new_design/icon/timer_watch.png",
                        color: AppColor.newsecondaruy,
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        "Duration :",
                        style: AppTextStyle.gilroyRegular(
                          context.screenWidth * 0.02,
                          color: AppColor.newsecondaruy,
                        ),
                      ),
                      Text(
                        " ${_formatTime(state.duration)}",
                        style: AppTextStyle.gilroySemiBold(
                          context.screenWidth * 0.02,
                          color: AppColor.newsecondaruy,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  BlocProvider.of<JaapBloc>(
                        context,
                      ).state.selectedMantraTitle.isEmpty
                      ? const SizedBox()
                      : SizedBox(
                          width: context.screenWidth,
                          // height: context.screenHeight*0.2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 8,
                            ),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: SingleChildScrollView(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 16,
                                ),
                                child: SizedBox(
                                  width: context.screenWidth,
                                  // height: context.screenHeight*0.2,
                                  child: Html(
                                    data: BlocProvider.of<JaapBloc>(
                                      context,
                                    ).state.mantraLyrics,
                                    style: {
                                      "h1": Style(
                                        fontFamily: AppFont.gilroyBold,
                                        lineHeight: const LineHeight(1),
                                      ),
                                      "html": Style(
                                        fontFamily: AppFont.gilroyMedium,
                                        fontSize: FontSize(22),
                                        lineHeight: const LineHeight(1.8),
                                      ),
                                      "body": Style(
                                        fontFamily: AppFont.gilroySemiBold,
                                        fontSize: FontSize(22),
                                        lineHeight: const LineHeight(1.8),
                                        margin: Margins.zero,
                                        padding: HtmlPaddings.zero,
                                        textAlign: TextAlign.center,
                                      ),
                                      "div": Style(
                                        textAlign: TextAlign.center,
                                        fontFamily: AppFont.gilroyBold,
                                        lineHeight: const LineHeight(1.4),
                                      ),
                                      "p": Style(
                                        fontFamily: AppFont.gilroySemiBold,
                                        margin: Margins.only(bottom: 10),
                                      ),
                                      "span": Style(
                                        fontFamily: AppFont.gilroySemiBold,
                                      ),
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  String _formatTime(int seconds) {
    final min = (seconds ~/ 60).toString().padLeft(2, '0');
    final sec = (seconds % 60).toString().padLeft(2, '0');
    return "$min:$sec";
  }
}

// class JaapBodyMedium extends StatelessWidget {
//   const JaapBodyMedium({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<JaapPageBloc, JaapPageState>(
//       builder: (context, state) {
//         /// 🧿 CURRENT ROUND PROGRESS (max 108)
//         final int roundProgress = state.currentCount == 0
//             ? 0
//             : (state.currentCount % 108 == 0
//             ? state.roundTotal
//             : state.currentCount % 108);
//
//         /// 🧿 TOTAL ROUNDS
//         final int totalRounds = (state.totalCount / 108).ceil();
//         return Container(
//           width: double.infinity,
//           padding: const EdgeInsets.symmetric(horizontal: 24),
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage(
//                 "assets/new_design/background/jaap_background.png",
//               ),
//               fit: BoxFit.fill,
//             ),
//           ),
//             child:Stack(
//               children: <Widget>[
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     SizedBox(height: context.screenHeight * 0.04),
//
//                     /// 🔸 Mantra Name
//                     Text(
//                       BlocProvider.of<JaapBloc>(
//                         context,
//                       ).state.selectedMantraTitle.isEmpty
//                           ? context.l10n.iWillDo
//                           : BlocProvider.of<JaapBloc>(
//                         context,
//                       ).state.selectedMantraTitle,
//                       style: AppTextStyle.gilroyBold(
//                         18,
//                       ).copyWith(color: AppColor.newsecondaruy),
//                     ),
//
//                     SizedBox(height: context.screenHeight * 0.01),
//
//                     /// 🧿 ROUND INFO
//                     if (state.totalCount > 108)
//                       Text(
//                         "Mala ${state.roundIndex} of $totalRounds",
//                         style: AppTextStyle.gilroyMedium(14),
//                       ),
//
//                     const SizedBox(height: 35),
//
//                     /// 🔸 MALA (max 108 beads)
//                     Padding(padding: EdgeInsets.symmetric(horizontal: 24),
//                       child:     MalaCircle(total: state.roundTotal, current: roundProgress),),
//
//                     /// 🔸 TOTAL COUNT TEXT
//                     // Text(
//                     //   "${state.currentCount}/${state.totalCount}",
//                     //   style: AppTextStyle.gilroyBold(22)
//                     //       .copyWith(color: AppColor.newsecondaruy),
//                     // ),
//                     //
//                     // const SizedBox(height: 8),
//
//                     /// 🔸 Hint
//
//
//                     /// 🔸 Duration
//                     SizedBox(height: 10,),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           "assets/new_design/icon/timer_watch.png",
//                           color: AppColor.newsecondaruy,
//                           width: 16,
//                           height: 16,
//                         ),
//                         const SizedBox(width: 3),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               context.l10n.durationLabel + ": ",
//                               style: AppTextStyle.gilroyRegular(
//                                 14,
//                                 color: AppColor.newsecondaruy,
//                               ),
//                             ),
//                             Text(
//                               " ${_formatTime(state.duration)}",
//                               style: AppTextStyle.gilroySemiBold(
//                                 14,
//                                 color: AppColor.newsecondaruy,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//
//                     SizedBox(height: 10,),
//                     BlocProvider.of<JaapBloc>(
//                       context,
//                     ).state.selectedMantraTitle.isEmpty?SizedBox():
//
//                     const SizedBox(height: 32),
//
//                     /// 🔸 Reset Button
//                     //       ElevatedButton(
//                     //         style: ElevatedButton.styleFrom(
//                     //           backgroundColor: AppColor.newsecondaruy,
//                     //           padding: const EdgeInsets.symmetric(
//                     //             horizontal: 28,
//                     //           ),
//                     // minimumSize: const Size(0, 32),
//                     //           shape: RoundedRectangleBorder(
//                     //             borderRadius: BorderRadius.circular(3),
//                     //           ),
//                     //         ),
//                     //         onPressed: () {
//                     //           context.read<JaapPageBloc>().add(const JaapPageEvent.reset());
//                     //         },
//                     //         child:  Text("Reset",style: AppTextStyle.semiBold(12,color: AppColor.appWhiteColor),),
//                     //       ),
//                   ],
//                 ),
//                 Align(
//                   alignment: Alignment.bottomCenter,
//                   child:   Padding(padding: EdgeInsets.only(bottom:context.screenHeight*0.1 ),
//                     child:  Container(
//                       margin: EdgeInsets.symmetric(horizontal: 12),
//                       width: context.screenWidth,
//                       height: 160,
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(24),
//                         color: Colors.white,
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.only(bottom: 10, top: 0),
//                         child: SingleChildScrollView(child: Html(
//                           data: "${BlocProvider.of<JaapBloc>(context).state.mantraLyrics}",
//                           shrinkWrap: true, // ⭐ important
//
//                         ),),
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             )
//         );
//       },
//     );
//   }
//
//   /// 🔸 Time formatter
//   String _formatTime(int seconds) {
//     final min = (seconds ~/ 60).toString().padLeft(2, '0');
//     final sec = (seconds % 60).toString().padLeft(2, '0');
//     return "$min:$sec";
//   }
// }
