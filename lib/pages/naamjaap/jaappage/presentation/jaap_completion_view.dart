import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../common/routes/exports.dart';
import '../../../../common/component/app_text_style.dart';
import '../../../../common/routes/routes.dart';
import '../../../../common/values/app_color.dart';

import '../../../../common/values/fonts.dart';
import '../../jaap_history/presentation/bloc/jaap_history_bloc.dart';
import '../../jaappage_one/presentation/bloc/jaap_bloc.dart';
import 'JaapTimeSummaryCard.dart';
import 'bloc/jaap_page_bloc.dart';
import 'bloc/jaap_page_event.dart';
import 'bloc/jaap_page_state.dart';

final GlobalKey _shareKey = GlobalKey();

class JaapCompletionView extends StatelessWidget {
  const JaapCompletionView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JaapPageBloc, JaapPageState>(
      builder: (context, state) {
        return Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/new_design/background/ganeshg_background.png",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: context.screenHeight * 0.05),

                    Container(
                      width: 350,
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 20),

                          Image.asset(
                            "assets/new_design/icon/congralution_poppler.png",
                            width: 24,
                            height: 24,
                          ),

                          Text(
                            context.l10n.congratulations,
                            style: AppTextStyle.gilroyBold(
                              context.screenWidth * 0.08,
                            ).copyWith(color: AppColor.newsecondaruy),
                          ),

                          const SizedBox(height: 10),

                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              vertical: 54,
                              horizontal: 34,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/background_image/mantra_complition_backgorund_view.png",
                                ),
                                fit: BoxFit.fill,
                              ),
                              //color: AppColor.newsecondaruy.withOpacity(0.05),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${state.totalCount}",
                                      style: AppTextStyle.gilroyBold(
                                        45,
                                      ).copyWith(color: AppColor.newsecondaruy),
                                    ),
                                    const SizedBox(width: 4),
                                    Image.asset(
                                      "assets/new_design/icon/malalll.png",
                                      width: 34,
                                      height: 34,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  context.l10n.jaapCountCompleted,
                                  style: AppTextStyle.semiBold(
                                    16,
                                    color: AppColor.newsecondaruy,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 12),

                          Text(
                            BlocProvider.of<JaapBloc>(
                              context,
                            ).state.selectedMantraTitle,
                            textAlign: TextAlign.center,
                            style: AppTextStyle.gilroySemiBold(
                              context.screenWidth * 0.061,
                              color: AppColor.newsecondaruy,
                            ),
                          ),

                          const SizedBox(height: 24),

                          JaapTimeSummaryCard(
                            startTime: formatTime(state.startTime!),
                            endTime: formatTime(state.endTime!),
                            durationText: formatDuration(context, state.duration),
                            dateText:
                            formatDate(state.startTime!) ==
                                formatDate(state.endTime!)
                                ? formatDate(state.startTime!)
                                : "${formatDate(state.startTime!)} → ${formatDate(state.endTime!)}",
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 14),

                    /// Buttons
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.newsecondaruy,
                              foregroundColor: Colors.white,
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  4,
                                ), // 👈 radius
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ), // optional
                            ),
                            onPressed: () {
                              BlocProvider.of<JaapHistoryBloc>(
                                context,
                              ).add(const LoadHistory());
                              Navigator.pushNamed(
                                context,
                                AppRoutes.JAAP_PAGE_HISTORY,
                              );
                            },
                            child: Text(
                              context.l10n.showHistory,
                              style: TextStyle(
                                color: AppColor.appWhiteColor,
                                fontFamily: AppFont.gilroySemiBold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: ElevatedButton.icon(
                            style: OutlinedButton.styleFrom(
                              backgroundColor: AppColor.appLigthYellows,
                              // 👈 button color
                              side: const BorderSide(
                                color: AppColor.newsecondaruy, // 👈 border color
                                width: 1.5, // optional
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  4,
                                ), // 👈 radius
                              ),
                            ),
                            onPressed: () {
                              _shareScreenshot(context);
                            },
                            icon: const Icon(
                              Icons.share,
                              color: AppColor.newsecondaruy,
                            ),
                            label: Text(
                              context.l10n.shareCta,
                              style: TextStyle(
                                color: AppColor.newsecondaruy,
                                fontFamily: AppFont.gilroySemiBold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 23),

                    GestureDetector(
                      onTap: () {
                        _shareScreenshotToWhatsApp(context);
                      },
                      child: Image.asset(
                        "assets/new_design/background/whatsappsahre.png",
                        width: 178,
                        height: 38,
                        fit: BoxFit.fill,
                      ),
                    ),

                    const SizedBox(height: 44),

                    Row(
                      children: [
                        // Expanded(
                        //   child: OutlinedButton(
                        //     style: OutlinedButton.styleFrom(
                        //       side: const BorderSide(
                        //         color: AppColor.newsecondaruy, // 👈 border color
                        //         width: 1.5, // optional
                        //       ),
                        //       shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(
                        //           4,
                        //         ), // 👈 radius
                        //       ),
                        //     ),
                        //     onPressed: () {
                        //       Navigator.pushReplacementNamed(
                        //         context,
                        //         AppRoutes.APPLICATION,
                        //       );
                        //     },
                        //     child: Text(
                        //       "Go To Home",
                        //       style: TextStyle(
                        //         color: AppColor.newsecondaruy,
                        //         fontFamily: AppFont.gilroySemiBold,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // const SizedBox(width: 12),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.newsecondaruy,
                              // 👈 button color
                              foregroundColor: Colors.white,
                              // 👈 text color
                              elevation: 2,
                              // optional shadow
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  4,
                                ), // 👈 radius
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ), // optional
                            ),
                            onPressed: () {
                              context.read<JaapPageBloc>().add(ResetJaap());
                              context.read<JaapPageBloc>().add(
                                CompleteResetJaap(),
                              );
                              Navigator.pop(context);
                              //  var mantraName=BlocProvider.of<JaapBloc>(context).state.selectedMantraTitle;
                              //  var mantraId=BlocProvider.of<JaapBloc>(context).state.selectedMantraId;
                              //  var jaapCount=BlocProvider.of<JaapBloc>(context).state.selectedJapCount;
                              //  print(mantraName+" "+mantraId+" "+jaapCount);
                              //  context.read<JaapPageBloc>().add(
                              //    const JaapPageEvent.completeReset(),
                              //  );
                              // BlocProvider.of<JaapPageBloc>(context).add(CreateSameJaapSession(jaapCount,mantraId));
                            },
                            child: Text(context.l10n.startNextJaap),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 75),
                  ],
                ),
              )
            ),

            Positioned(
              left: -10000,
              top: 0,
              child: RepaintBoundary(
                key: _shareKey,
                child: Material(
                  color: Colors.white,
                  child: JaapCompletionCard(state: state),
                ),
              ),
              // child: RepaintBoundary(
              //   key: _shareKey,
              //   child: Container(
              //     width: 350,
              //     padding: const EdgeInsets.all(24),
              //     decoration: const BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.all(Radius.circular(12)),
              //     ),
              //     child: Column(
              //       mainAxisSize: MainAxisSize.min,
              //       children: [
              //         Column(
              //           mainAxisSize: MainAxisSize.min,
              //           children: [
              //             Container(
              //               width: 120,
              //               height: 80,
              //               padding: EdgeInsets.only(left: 14, right: 14),
              //               margin: EdgeInsets.only(top: 10),
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(12),
              //                 color: AppColor.newsecondaruy,
              //                 // image: DecorationImage(image: AssetImage("assets/new_design/background/logo-hindi-white 1.png"))
              //               ),
              //               child: Image.asset(
              //                 "assets/new_design/background/logo-hindi-white 1.png",
              //               ),
              //             ),
              //
              //             SizedBox(height: 20),
              //             Image.asset(
              //               "assets/new_design/icon/congralution_poppler.png",
              //               width: 24,
              //               height: 24,
              //             ),
              //
              //             Text(
              //               context.l10n.congratulations,
              //               style: AppTextStyle.gilroyBold(
              //                 20,
              //               ).copyWith(color: AppColor.newsecondaruy),
              //             ),
              //
              //             const SizedBox(height: 20),
              //
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Text(
              //                   "${state.totalCount}",
              //                   style: AppTextStyle.gilroyBold(
              //                     45,
              //                   ).copyWith(color: AppColor.newsecondaruy),
              //                 ),
              //                 const SizedBox(width: 4),
              //                 Image.asset(
              //                   "assets/new_design/icon/malalll.png",
              //                   width: 34,
              //                   height: 34,
              //                 ),
              //               ],
              //             ),
              //
              //             const SizedBox(height: 10),
              //
              //             Text(
              //               context.l10n.jaapCountCompleted,
              //               style: AppTextStyle.gilroyMedium(
              //                 16,
              //                 color: AppColor.newsecondaruy,
              //               ),
              //             ),
              //
              //             const SizedBox(height: 6),
              //
              //             BlocProvider.of<JaapBloc>(
              //                   context,
              //                 ).state.selectedMantraTitle.isNotEmpty
              //                 ? Text(
              //                     BlocProvider.of<JaapBloc>(
              //                       context,
              //                     ).state.selectedMantraTitle,
              //                     style: AppTextStyle.gilroyBold(
              //                       16,
              //                       color: AppColor.newsecondaruy,
              //                     ),
              //                   )
              //                 : SizedBox(),
              //
              //             const SizedBox(height: 14),
              //
              //             Container(
              //               padding: EdgeInsets.all(8),
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(12),
              //                 border: Border.all(color: AppColor.newsecondaruy),
              //               ),
              //
              //               // child: JaapTimeSummaryCard(
              //               //   startTime: formatTime(state.startTime!),
              //               //   endTime: formatTime(state.endTime!),
              //               //   durationText: formatDuration(state.duration),
              //               //   dateText: formatDate(state.startTime!),
              //               // ),
              //               child: JaapTimeSummaryCard(
              //                 startTime: formatTime(
              //                   state.resumeTime ?? state.startTime!,
              //                 ),
              //                 endTime: formatTime(state.endTime!),
              //                 durationText: formatDuration(state.duration),
              //                 dateText: formatDate(
              //                   state.resumeTime ?? state.startTime!,
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ), // your share UI
              //       ],
              //     ),
              //   ),
              // ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _shareScreenshot(BuildContext context) async {
    try {
      /// Ensure widget rendered
      await Future.delayed(const Duration(milliseconds: 100));

      final boundary =
          _shareKey.currentContext!.findRenderObject() as RenderRepaintBoundary;

      final image = await boundary.toImage(pixelRatio: 3);

      final byteData = await image.toByteData(format: ImageByteFormat.png);

      if (byteData == null) return;

      final pngBytes = byteData.buffer.asUint8List();

      /// Save file
      final tempDir = await getTemporaryDirectory();
      final filePath =
          '${tempDir.path}/jaap_${DateTime.now().millisecondsSinceEpoch}.png';

      final file = File(filePath);
      await file.writeAsBytes(pngBytes);
      final String androidUrl =
          "https://play.google.com/store/apps/details?id=com.seoily.mobilemandir";

      final String iosUrl =
          "https://apps.apple.com/us/app/mobile-mandir/id6757151198";

      var a =
          "Making small yet meaningful steps toward devotion. " +
          context.l10n.myJaapCountShareText + "\n\n" +
          "Download now\n\n" +
          "Android: $androidUrl\n\n" +
          "iOS: $iosUrl";

      /// Share
      await Share.shareXFiles(
        [XFile(file.path)],
        text: "$a",
        sharePositionOrigin: const Rect.fromLTWH(0, 0, 1, 1),
      );
    } catch (e) {
    }
  }

  Future<void> _shareScreenshotToWhatsApp(BuildContext context) async {
    try {
      await Future.delayed(const Duration(milliseconds: 100));

      final boundary =
          _shareKey.currentContext!.findRenderObject() as RenderRepaintBoundary;

      final image = await boundary.toImage(pixelRatio: 3);
      final byteData = await image.toByteData(format: ImageByteFormat.png);

      if (byteData == null) return;

      final pngBytes = byteData.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final filePath =
          '${tempDir.path}/jaap_${DateTime.now().millisecondsSinceEpoch}.png';

      final file = File(filePath);
      await file.writeAsBytes(pngBytes);

      final String androidUrl =
          "https://play.google.com/store/apps/details?id=com.seoily.mobilemandir";

      final String iosUrl =
          "https://apps.apple.com/us/app/mobile-mandir/id6757151198";

      var a =
          "Making small yet meaningful steps toward devotion. " +
          context.l10n.myJaapCountShareText + "\n\n" +
          "Download now\n\n" +
          "Android: $androidUrl\n\n" +
          "iOS: $iosUrl";

      /// 👉 WhatsApp targeted share
      await Share.shareXFiles(
        [XFile(file.path)],
        text: "$a",
        sharePositionOrigin: const Rect.fromLTWH(0, 0, 1, 1),
      );
    } catch (e) {
    }
  }

  String formatTime(DateTime time) {
    return DateFormat('h:mm:ss a').format(time);
  }

  String formatDate(DateTime time) {
    return DateFormat('MMM d, yyyy').format(time);
  }

  String formatDuration(BuildContext context, int seconds) {
    final min = seconds ~/ 60;
    final sec = seconds % 60;
    return "$min ${context.l10n.mins} $sec ${context.l10n.sec}";
  }
}

class JaapCompletionCard extends StatelessWidget {
  final JaapPageState state;

  const JaapCompletionCard({super.key, required this.state});

  String formatTime(DateTime time) {
    return DateFormat('h:mm:ss a').format(time);
  }

  String formatDate(DateTime time) {
    return DateFormat('MMM d, yyyy').format(time);
  }

  String formatDuration(BuildContext context, int seconds) {
    final min = seconds ~/ 60;
    final sec = seconds % 60;
    return "$min ${context.l10n.mins} $sec ${context.l10n.sec}";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 120,
            height: 80,
            padding: EdgeInsets.only(left: 14, right: 14),
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColor.newsecondaruy,
              // image: DecorationImage(image: AssetImage("assets/new_design/background/logo-hindi-white 1.png"))
            ),
            child: Image.asset(
              "assets/new_design/background/logo-hindi-white 1.png",
            ),
          ),
          const SizedBox(height: 20),

          Image.asset(
            "assets/new_design/icon/congralution_poppler.png",
            width: 24,
            height: 24,
          ),

          Text(
            context.l10n.congratulations,
            style: AppTextStyle.gilroyBold(
              context.screenWidth * 0.08,
            ).copyWith(color: AppColor.newsecondaruy),
          ),

          const SizedBox(height: 10),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 54, horizontal: 34),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/background_image/mantra_complition_backgorund_view.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${state.totalCount}",
                      style: AppTextStyle.gilroyBold(
                        45,
                      ).copyWith(color: AppColor.newsecondaruy),
                    ),
                    const SizedBox(width: 4),
                    Image.asset(
                      "assets/new_design/icon/malalll.png",
                      width: 34,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  context.l10n.jaapCountCompleted,
                  style: AppTextStyle.semiBold(
                    16,
                    color: AppColor.newsecondaruy,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          Text(
            BlocProvider.of<JaapBloc>(context).state.selectedMantraTitle,
            style: AppTextStyle.gilroySemiBold(
              22,
              color: AppColor.newsecondaruy,
            ),
          ),

          const SizedBox(height: 20),

          JaapTimeSummaryCard(
            startTime: formatTime(state.startTime!),
            endTime: formatTime(state.endTime!),
            durationText: formatDuration(context, state.duration),
            dateText: formatDate(state.startTime!) == formatDate(state.endTime!)
                ? formatDate(state.startTime!)
                : "${formatDate(state.startTime!)} → ${formatDate(state.endTime!)}",
          ),
        ],
      ),
    );
  }
}

class JaapCompletionCardMedium extends StatelessWidget {
  final JaapPageState state;

  const JaapCompletionCardMedium({super.key, required this.state});

  String formatTime(DateTime time) {
    return DateFormat('h:mm:ss a').format(time);
  }

  String formatDate(DateTime time) {
    return DateFormat('MMM d, yyyy').format(time);
  }

  String formatDuration(BuildContext context, int seconds) {
    final min = seconds ~/ 60;
    final sec = seconds % 60;
    return "$min ${context.l10n.mins} $sec ${context.l10n.sec}";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 120,
            height: 80,
            padding: EdgeInsets.only(left: 14, right: 14),
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColor.newsecondaruy,
              // image: DecorationImage(image: AssetImage("assets/new_design/background/logo-hindi-white 1.png"))
            ),
            child: Image.asset(
              "assets/new_design/background/logo-hindi-white 1.png",
            ),
          ),
          const SizedBox(height: 20),

          Image.asset(
            "assets/new_design/icon/congralution_poppler.png",
            width: 44,
            height: 44,
          ),

          Text(
            context.l10n.congratulations,
            style: AppTextStyle.gilroyBold(
              context.screenWidth * 0.065,
            ).copyWith(color: AppColor.newsecondaruy),
          ),

          const SizedBox(height: 10),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 54, horizontal: 34),
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 54),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/background_image/mantra_complition_backgorund_view.png",
                ),
                fit: BoxFit.contain,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${state.totalCount}",
                      style: AppTextStyle.gilroyBold(
                        45,
                      ).copyWith(color: AppColor.newsecondaruy),
                    ),
                    const SizedBox(width: 4),
                    Image.asset(
                      "assets/new_design/icon/malalll.png",
                      width: 34,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  context.l10n.jaapCountCompleted,
                  style: AppTextStyle.semiBold(
                    16,
                    color: AppColor.newsecondaruy,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          Text(
            BlocProvider.of<JaapBloc>(context).state.selectedMantraTitle,
            style: AppTextStyle.gilroySemiBold(
              22,
              color: AppColor.newsecondaruy,
            ),
          ),

          const SizedBox(height: 20),

       Padding(padding: EdgeInsets.only(left: 54,right: 54),

       child:    JaapTimeSummaryCardMedium(
         startTime: formatTime(state.startTime!),
         endTime: formatTime(state.endTime!),
         durationText: formatDuration(context, state.duration),
         dateText: formatDate(state.startTime!) == formatDate(state.endTime!)
             ? formatDate(state.startTime!)
             : "${formatDate(state.startTime!)} → ${formatDate(state.endTime!)}",
       ),)
        ],
      ),
    );
  }
}

class JaapCompletionViewMedium extends StatelessWidget {
  const JaapCompletionViewMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JaapPageBloc, JaapPageState>(
      builder: (context, state) {
        return Stack(
          children: <Widget>[
            Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/new_design/background/ganeshg_background.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: context.screenHeight * 0.05),

                      Container(
                        width: 350,
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 20),

                            Image.asset(
                              "assets/new_design/icon/congralution_poppler.png",
                              width: 44,
                              height: 44,
                            ),

                            Text(
                              context.l10n.congratulations,
                              style: AppTextStyle.gilroyBold(
                                context.screenWidth * 0.055,
                              ).copyWith(color: AppColor.newsecondaruy),
                            ),

                            const SizedBox(height: 10),

                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                vertical: 54,
                                horizontal: 34,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/background_image/mantra_complition_backgorund_view.png",
                                  ),
                                  fit: BoxFit.fill,
                                ),
                                //color: AppColor.newsecondaruy.withOpacity(0.05),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "${state.totalCount}",
                                        style: AppTextStyle.gilroyBold(
                                          40,
                                        ).copyWith(color: AppColor.newsecondaruy),
                                      ),
                                      const SizedBox(width: 4),
                                      Image.asset(
                                        "assets/new_design/icon/malalll.png",
                                        width: 34,
                                        height: 34,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    context.l10n.jaapCountCompleted,
                                    style: AppTextStyle.semiBold(
                                      16,
                                      color: AppColor.newsecondaruy,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 12),

                            Text(
                              BlocProvider.of<JaapBloc>(
                                context,
                              ).state.selectedMantraTitle,
                              textAlign: TextAlign.center,
                              style: AppTextStyle.gilroySemiBold(
                                context.screenWidth * 0.045,
                                color: AppColor.newsecondaruy,
                              ),
                            ),

                            const SizedBox(height: 24),

                            JaapTimeSummaryCardMedium(
                              startTime: formatTime(state.startTime!),
                              endTime: formatTime(state.endTime!),
                              durationText: formatDuration(context, state.duration),
                              dateText:
                              formatDate(state.startTime!) ==
                                  formatDate(state.endTime!)
                                  ? formatDate(state.startTime!)
                                  : "${formatDate(state.startTime!)} → ${formatDate(state.endTime!)}",
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 14),

                      /// Buttons
                    Padding(padding: EdgeInsets.only(left: context.screenWidth*0.1,right: context.screenWidth*0.1),
                    child:   Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.newsecondaruy,
                              foregroundColor: Colors.white,
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  4,
                                ), // 👈 radius
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ), // optional
                            ),
                            onPressed: () {
                              BlocProvider.of<JaapHistoryBloc>(
                                context,
                              ).add(const LoadHistory());
                              Navigator.pushNamed(
                                context,
                                AppRoutes.JAAP_PAGE_HISTORY,
                              );
                            },
                            child: Text(
                              context.l10n.showHistory,
                              style: TextStyle(
                                color: AppColor.appWhiteColor,
                                fontFamily: AppFont.gilroySemiBold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: ElevatedButton.icon(
                            style: OutlinedButton.styleFrom(
                              backgroundColor: AppColor.appLigthYellows,
                              // 👈 button color
                              side: const BorderSide(
                                color: AppColor.newsecondaruy, // 👈 border color
                                width: 1.5, // optional
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  4,
                                ), // 👈 radius
                              ),
                            ),
                            onPressed: () {
                              _shareScreenshot(context);
                            },
                            icon: const Icon(
                              Icons.share,
                              color: AppColor.newsecondaruy,
                            ),
                            label: Text(
                              context.l10n.shareCta,
                              style: TextStyle(
                                color: AppColor.newsecondaruy,
                                fontFamily: AppFont.gilroySemiBold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),),

                      const SizedBox(height: 23),

                      GestureDetector(
                        onTap: () {
                          _shareScreenshotToWhatsApp(context);
                        },
                        child: Image.asset(
                          "assets/new_design/background/whatsappsahre.png",
                          width: 178,
                          height: 38,
                          fit: BoxFit.fill,
                        ),
                      ),

                      const SizedBox(height: 44),

                      Padding(padding: EdgeInsets.only(left: context.screenWidth*0.1,right: context.screenWidth*0.1),

                        child:  Row(
                       children: [
                         // Expanded(
                         //   child: OutlinedButton(
                         //     style: OutlinedButton.styleFrom(
                         //       side: const BorderSide(
                         //         color: AppColor.newsecondaruy, // 👈 border color
                         //         width: 1.5, // optional
                         //       ),
                         //       shape: RoundedRectangleBorder(
                         //         borderRadius: BorderRadius.circular(
                         //           4,
                         //         ), // 👈 radius
                         //       ),
                         //     ),
                         //     onPressed: () {
                         //       Navigator.pushReplacementNamed(
                         //         context,
                         //         AppRoutes.APPLICATION,
                         //       );
                         //     },
                         //     child: Text(
                         //       "Go To Home",
                         //       style: TextStyle(
                         //         color: AppColor.newsecondaruy,
                         //         fontFamily: AppFont.gilroySemiBold,
                         //       ),
                         //     ),
                         //   ),
                         // ),
                         // const SizedBox(width: 12),
                         Expanded(
                           child: ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               backgroundColor: AppColor.newsecondaruy,
                               // 👈 button color
                               foregroundColor: Colors.white,
                               // 👈 text color
                               elevation: 2,
                               // optional shadow
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(
                                   4,
                                 ), // 👈 radius
                               ),
                               padding: const EdgeInsets.symmetric(
                                 horizontal: 20,
                                 vertical: 10,
                               ), // optional
                             ),
                             onPressed: () {
                               context.read<JaapPageBloc>().add(ResetJaap());
                               context.read<JaapPageBloc>().add(
                                 CompleteResetJaap(),
                               );
                               Navigator.pop(context);
                               //  var mantraName=BlocProvider.of<JaapBloc>(context).state.selectedMantraTitle;
                               //  var mantraId=BlocProvider.of<JaapBloc>(context).state.selectedMantraId;
                               //  var jaapCount=BlocProvider.of<JaapBloc>(context).state.selectedJapCount;
                               //  print(mantraName+" "+mantraId+" "+jaapCount);
                               //  context.read<JaapPageBloc>().add(
                               //    const JaapPageEvent.completeReset(),
                               //  );
                               // BlocProvider.of<JaapPageBloc>(context).add(CreateSameJaapSession(jaapCount,mantraId));
                             },
                             child: Text(context.l10n.startNextJaap),
                           ),
                         ),
                       ],
                     ),),
                      const SizedBox(height: 75),
                    ],
                  ),
                )
            ),

            Positioned(
              left: -10000,
              top: 0,
              // left: 0,
              // right: 0,
              // top: 0,
              // bottom: 0,
              child: RepaintBoundary(
                key: _shareKey,
                child: Material(
                  color: Colors.white,
                  child: JaapCompletionCardMedium(state: state),
                ),
              ),

            ),
          ],
        );
      },
    );
  }

  Future<void> _shareScreenshot(BuildContext context) async {
    try {
      /// Ensure widget rendered
      await Future.delayed(const Duration(milliseconds: 100));

      final boundary =
      _shareKey.currentContext!.findRenderObject() as RenderRepaintBoundary;

      final image = await boundary.toImage(pixelRatio: 3);

      final byteData = await image.toByteData(format: ImageByteFormat.png);

      if (byteData == null) return;

      final pngBytes = byteData.buffer.asUint8List();

      /// Save file
      final tempDir = await getTemporaryDirectory();
      final filePath =
          '${tempDir.path}/jaap_${DateTime.now().millisecondsSinceEpoch}.png';

      final file = File(filePath);
      await file.writeAsBytes(pngBytes);
      final String androidUrl =
          "https://play.google.com/store/apps/details?id=com.seoily.mobilemandir";

      final String iosUrl =
          "https://apps.apple.com/us/app/mobile-mandir/id6757151198";

      var a =
          "Making small yet meaningful steps toward devotion. " +
          context.l10n.myJaapCountShareText + "\n\n" +
          "Download now\n\n" +
          "Android: $androidUrl\n\n" +
          "iOS: $iosUrl";

      /// Share
      await Share.shareXFiles(
        [XFile(file.path)],
        text: "$a",
        sharePositionOrigin: const Rect.fromLTWH(0, 0, 1, 1),
      );
    } catch (e) {
    }
  }

  Future<void> _shareScreenshotToWhatsApp(BuildContext context) async {
    try {
      await Future.delayed(const Duration(milliseconds: 100));

      final boundary =
      _shareKey.currentContext!.findRenderObject() as RenderRepaintBoundary;

      final image = await boundary.toImage(pixelRatio: 3);
      final byteData = await image.toByteData(format: ImageByteFormat.png);

      if (byteData == null) return;

      final pngBytes = byteData.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final filePath =
          '${tempDir.path}/jaap_${DateTime.now().millisecondsSinceEpoch}.png';

      final file = File(filePath);
      await file.writeAsBytes(pngBytes);

      final String androidUrl =
          "https://play.google.com/store/apps/details?id=com.seoily.mobilemandir";

      final String iosUrl =
          "https://apps.apple.com/us/app/mobile-mandir/id6757151198";

      var a =
          "Making small yet meaningful steps toward devotion. " +
          context.l10n.myJaapCountShareText + "\n\n" +
          "Download now\n\n" +
          "Android: $androidUrl\n\n" +
          "iOS: $iosUrl";

      /// 👉 WhatsApp targeted share
      await Share.shareXFiles(
        [XFile(file.path)],
        text: "$a",
        sharePositionOrigin: const Rect.fromLTWH(0, 0, 1, 1),
      );
    } catch (e) {
    }
  }

  String formatTime(DateTime time) {
    return DateFormat('h:mm:ss a').format(time);
  }

  String formatDate(DateTime time) {
    return DateFormat('MMM d, yyyy').format(time);
  }

  String formatDuration(BuildContext context, int seconds) {
    final min = seconds ~/ 60;
    final sec = seconds % 60;
    return "$min ${context.l10n.mins} $sec ${context.l10n.sec}";
  }
}
