import 'package:flutter_html/flutter_html.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/utils/utils.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/common/values/snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../../common/component/network_image.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/utils/download_service.dart';
import '../../../../../../common/utils/share_helper.dart';
import '../../../../../../common/utils/share_service.dart';
import '../../../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import '../../../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../../../lyrics/bloc/aartiplayer_bloc.dart';
import '../../../../../lyrics/bloc/aartiplayer_event.dart';
import '../../../../../lyrics/bloc/aartiplayer_state.dart';
import '../../../../../naamjaap/jaappage_one/presentation/ui/component/jap_bottom_buttons.dart';
import '../../../../../naamjaap/jaappage_one/presentation/ui/component/jap_count_section.dart';
import 'aarti_music_card.dart';
import 'lyrics_html_helper.dart';

class AartiChalisaHtmlViewrSmall extends StatelessWidget {
  AartiChalisaHtmlViewrSmall({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    String? title = arguments?['title'];
    String? htmltext = arguments?['html_text'];
    String? testLyricsEn = arguments?['testLyrics_en'] ?? arguments?['enHtmlText'];
    String? testLyricsHi = arguments?['testLyrics_hi'] ?? arguments?['hiHtmlText'];
    String? youtubeVideoLink = arguments?['youtubeVideoLink'];
    String? lyricsImage = arguments?['lyricsImage'];
    bool? ismpavilable = arguments?['ismpavilable'] ?? false;

    return BlocConsumer<AartiPlayerBloc, AartiPlayerState>(
      listener: (context, state) {
        context.read<AppBloc>().add(
          HideShowMusciActionButtons(state.isPlaying),
        );
      },
      builder: (context, state) {
        String htmlData = state.track?.htmlText ?? htmltext ?? "";

        if (state.selectedLanguage == "en") {
          if (state.track?.enHtmlText != null &&
              state.track!.enHtmlText!.trim().isNotEmpty) {
            htmlData = state.track!.enHtmlText!;
          } else if (testLyricsEn != null && testLyricsEn.trim().isNotEmpty) {
            htmlData = testLyricsEn;
          } else if (state.track?.htmlText != null &&
              state.track!.htmlText.trim().isNotEmpty) {
            htmlData = state.track!.htmlText;
          } else if (htmltext != null && htmltext.trim().isNotEmpty) {
            htmlData = htmltext;
          }
        }

        if (state.selectedLanguage == "hi") {
          if (state.track?.hiHtmLText != null &&
              state.track!.hiHtmLText!.trim().isNotEmpty) {
            htmlData = state.track!.hiHtmLText!;
          } else if (testLyricsHi != null && testLyricsHi.trim().isNotEmpty) {
            htmlData = testLyricsHi;
          } else if (state.track?.htmlText != null &&
              state.track!.htmlText.trim().isNotEmpty) {
            htmlData = state.track!.htmlText;
          } else if (htmltext != null && htmltext.trim().isNotEmpty) {
            htmlData = htmltext;
          }
        }
        var data = """$htmlData""";

        return Scaffold(
          backgroundColor: AppColor.greyBackgroundddddddsss,
          appBar: MandirAppBar(
            title: context.l10n.lyrics,
            onBackTap: () {
              Navigator.pop(context);
            },
          ),

          body: Stack(
            children: <Widget>[
             SizedBox(
               width: double.infinity,
               child:  SingleChildScrollView(
                 physics: const BouncingScrollPhysics(),
                 child: Column(
                   children: <Widget>[
                     SizedBox(height: 12),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Text("                "),
                     Expanded(child:     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                        Expanded(child:  Text(
                          "${state.track!.title!}",
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: AppTextStyle.gilroyBold(
                            context.screenWidth * 0.048,
                            color: AppColor.newsecondaruy,
                          ),
                        ),)
                       ],
                     ),),

                         Padding(
                           padding: EdgeInsets.only(right: 14),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             spacing: 8,
                             children: <Widget>[
                               lyricsImage!.isEmpty
                                   ? SizedBox()
                                   : GestureDetector(
                                 onTap: () async {
                                   await ShareHelper.shareAarti(
                                     title: state.track?.title ?? "",
                                     slugUrl: state.track?.slugUrl,
                                     lyricsImageUrl: state.track?.lyircsImage,
                                   );
                                 },
                                 child: Image.asset(
                                   "assets/new_design/icon/ic_share.png",
                                   width: 28,
                                   height: 28,
                                 ),
                               ),
                               lyricsImage!.isEmpty
                                   ? SizedBox()
                                   : GestureDetector(
                                 onTap: () async {
                                   // yaha pe download krna hai
                                   final success =
                                   await DownloadService.saveImageFromUrl(
                                     AppConstant.fileBaseUrl +
                                         state.track!.lyircsImage!,
                                   );

                                   if (success) {
                                     context.showCustomSnackbar(
                                       context.l10n.imageSavedToGallery,
                                       backgroundColor: AppColor.appcolor,
                                     );
                                   }
                                 },
                                 child: Image.asset(
                                   "assets/new_design/icon/ic_download.png",
                                   width: 28,
                                   height: 28,
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ],
                     ),

                     Padding(
                       padding: const EdgeInsets.fromLTRB(16, 12, 12, 4),
                       child: NetworkImageWidget(
                         imageUrl: state.track!.bannerImage!,
                         imageHeight: context.screenHeight * 0.2,
                         imageWidth: double.infinity,
                         radiusAll: 8,
                         fullimage: false,
                       ),
                     ),

                     //  Text(state.track!.audioAsset),
                     if (state.track!.isMpfileAvilable!)
                       const Center(child: AartiMusicCard()),
                     //Text(htmlData),
                     Padding(
                       padding: const EdgeInsets.only(
                         left: 20,
                         right: 20,
                         top: 24,
                         bottom: 24,
                       ),
                       // child: Html(
                       //   shrinkWrap: true,
                       //   data: data
                       //
                       //   //   shrinkWrap: false,
                       // ),
                      child: Html(
                        key: ValueKey("${state.selectedLanguage}_${LyricsHtmlHelper.formatLyrics(htmlData).hashCode}"),
                        data: LyricsHtmlHelper.formatLyrics(htmlData),
                        style: LyricsHtmlHelper.getLyricsStyle(
                          selectedLanguage: state.selectedLanguage,
                        ),
                      ),
                     ),

                     state.track!.type == "mantra"
                         ? Column(
                       children: <Widget>[

                         JapCountSection(),
                         JapBottomButtonsAartiPage(),
                       ],
                     )
                         : SizedBox(),

                     SizedBox(
                       height: context.screenHeight * 0.2,
                       width: double.infinity,
                       child: Stack(
                         children: <Widget>[
                           Padding(
                             padding: const EdgeInsets.fromLTRB(16, 4, 12, 4),
                             child: NetworkImageWidget(
                               imageUrl: state.track!.bannerImage!,
                               imageHeight: context.screenHeight * 0.2,
                               imageWidth: double.infinity,
                               radiusAll: 2,
                               fullimage: false,
                             ),
                           ),
                           state.track!.youtubeVideoLink != null
                               ? Padding(
                             padding: const EdgeInsets.fromLTRB(
                               16,
                               4,
                               12,
                               4,
                             ),
                             child: GestureDetector(
                               onTap: () {
                                 if (state
                                     .track!
                                     .youtubeVideoLink!
                                     .isNotEmpty) {
                                   _launchUrl(
                                     Uri.parse(
                                       state.track!.youtubeVideoLink!,
                                     ),
                                   );
                                 } else {
                                   context.showCustomSnackbar(
                                     "No Link Available For This",
                                   );
                                 }
                               },
                               child: Container(
                                 height: context.screenHeight * 0.2,
                                 width: double.infinity,
                                 decoration: BoxDecoration(
                                   color: AppColor.fullBlack.withOpacity(
                                     0.9,
                                   ),
                                 ),
                                 child: Center(
                                   child: Image.asset(
                                     "assets/new_design/icon/logos_youtube-icon.png",
                                     width: 34,
                                     height: 34,
                                   ),
                                 ),
                               ),
                             ),
                           )
                               : SizedBox(),
                         ],
                       ),
                     ),
                     SizedBox(height: 54),
                   ],
                 ),
               ),
             ),
              Positioned(
                right: 10,
                top: 270,

                child: Container(
                  width: 34,

                  decoration: BoxDecoration(
                    color: Colors.white,

                    borderRadius: BorderRadius.circular(8),

                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 4),
                    ],
                  ),

                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.read<AartiPlayerBloc>().add(
                            const ChangeLyricsLanguage("en"),
                          );
                        },

                        child: Container(
                          height: 34,

                          decoration: BoxDecoration(
                            color: state.selectedLanguage == "en"
                                ? const Color(0xff8B4A00)
                                : Colors.white,

                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),

                              topRight: Radius.circular(8),
                            ),
                          ),

                          child: Center(
                            child: Text(
                              "EN",

                              style: TextStyle(
                                fontSize: 16,

                                fontFamily: AppFont.gilroySemiBold,

                                color: state.selectedLanguage == "en"
                                    ? Colors.white
                                    : Colors.brown,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Divider(height: 1),

                      GestureDetector(
                        onTap: () {
                          context.read<AartiPlayerBloc>().add(
                            const ChangeLyricsLanguage("hi"),
                          );
                        },

                        child: Container(
                          height: 34,

                          decoration: BoxDecoration(
                            color: state.selectedLanguage == "hi"
                                ? const Color(0xff8B4A00)
                                : Colors.white,

                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(8),

                              bottomRight: Radius.circular(8),
                            ),
                          ),

                          child: Center(
                            child: Text(
                              "हि",

                              style: TextStyle(
                                fontSize: 16,

                                fontFamily: AppFont.gilroySemiBold,
                                color: state.selectedLanguage == "hi"
                                    ? Colors.white
                                    : Colors.brown,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _launchUrl(_url) async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
