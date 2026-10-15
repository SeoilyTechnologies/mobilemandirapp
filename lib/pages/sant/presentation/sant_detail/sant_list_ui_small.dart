import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/pages/aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import 'package:mandirapp/pages/sant/presentation/bloc/sant_bloc.dart';
import 'package:mandirapp/pages/sant/presentation/sant_detail/sant_detail_ui.dart';


import '../../../../common/component/app_text_style.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/values/app_color.dart';
import '../../../../common/values/screenUtils.dart';
import '../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../application/presentatioin/bloc/app_state.dart';
import '../../../application/presentatioin/ui/application/mini_music_player.dart';
import '../../../mobile_mandir_home/data/entity/sant/sant_detail/sant_detail_response.dart';
import 'guru_card.dart';
class SantDetailUiSmall extends StatelessWidget {
  const SantDetailUiSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SantBloc, SantState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
            appBar: MandirAppBar(
              title: context.l10n.santDetail,
              onBackTap: () {
                Navigator.pop(context);
              },
            ),



            body: SizedBox(
              width: double.infinity,
              height: context.screenHeight,
              child: Stack(
                children: <Widget>[
                  SingleChildScrollView(
                    child:  Column(
                      children: <Widget>[

                        GuruCard(
                          location: state.santDetailResponse.data.location,
                          imageUrl: state.santDetailResponse.data.image,
                          name: state.santDetailResponse.data.name,
                          tags: state.santDetailResponse.data.designation,
                          onWatchTap: () {
                            final url = state.santDetailResponse.data.socialLinks.youtube;

                            if (url.isNotEmpty) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => InAppWebViewScreen(
                                    url: url,
                                    title: context.l10n.watchVideo,
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                        sandData(context, state.santDetailResponse),
                        SizedBox(height: 18),
                        about(context, state.santDetailResponse),
                        SizedBox(height: 14),


                        SizedBox(height: 14),
                      ],
                    ),
                  ),
                  BlocBuilder<AppBloc, AppState>(
                    builder: (context, state) {
                      if (!state.isShowMusicAction) return const SizedBox();

                      return AnimatedPositioned(
                        duration: Duration(milliseconds: 300),
                        left: 12,
                        right: 12,
                        bottom: state.isShowMusicAction ? 50 : -100,
                        child: MiniMusicPlayer(),
                      );
                    },
                  ),
                ],
              ),
            )
        );
      },
    );
  }


  Widget sandData(BuildContext context, SantDetailResponse goddata) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent, // removes internal divider
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 12, right: 12),
        child: Material(
          color: Colors.white, // removes material stroke
          child: ExpansionTile(
            initiallyExpanded: true,
            tilePadding: const EdgeInsets.symmetric(horizontal: 12),
            childrenPadding: const EdgeInsets.all(12),

            // 🔒 remove default border completely
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
            collapsedShape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),

            title: Text(
              context.l10n.keyInformation,
              style: AppTextStyle.gilroyMedium(
                context.screenWidth * 0.042,
                color: AppColor.fullBlack,
              ),
            ),
            children: [
              infoRow("DOP", "${goddata.data.dobPlace}", context),
              infoRow(context.l10n.specialist, "${goddata.data.specialist}", context),
              infoRow(context.l10n.guru, "${goddata.data.guru}", context),
              //infoRow("Wife", "${commaSeparated(goddata.wife)}",context),
              //infoRow("Vehicle", "${goddata.f![0]}",context),
              infoRow(context.l10n.educationLabel, goddata.data.education, context),
              //  infoRow("Tithi", "${commaSeparated(goddata.relatedTithi)}",context),
              //infoRow("Festivals", "${commaSeparated(goddata.relatedFestival)}",context),
            ],
          ),
        ),
      ),
    );
  }

  Widget about(BuildContext context, SantDetailResponse goddata) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent, // removes internal divider
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 12, right: 12),
        child: Material(
          color: Colors.white, // removes material stroke
          child: ExpansionTile(
            tilePadding: const EdgeInsets.symmetric(horizontal: 12),
            childrenPadding: const EdgeInsets.all(12),

            // 🔒 remove default border completely
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
            collapsedShape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),

            title: Text(
              context.l10n.aboutSection,
              style: AppTextStyle.gilroyMedium(
                context.screenWidth * 0.042,
                color: AppColor.fullBlack,
              ),
            ),
            children: [
              infoRow1("", "${goddata.data.about}", context),
              // infoRow(context.l10n.specialist, "${goddata.data.specialist}",context),
              // infoRow(context.l10n.guru, "${goddata.data.guru}",context),
              // //infoRow("Wife", "${commaSeparated(goddata.wife)}",context),
              // //infoRow("Vehicle", "${goddata.f![0]}",context),
              // infoRow(context.l10n.educationLabel, goddata.data.education ,context),
              //  infoRow("Tithi", "${commaSeparated(goddata.relatedTithi)}",context),
              //infoRow("Festivals", "${commaSeparated(goddata.relatedFestival)}",context),
            ],
          ),
        ),
      ),
    );
  }

  String commaSeparated(List<String>? items) {
    if (items == null || items.isEmpty) return "";
    return items.join(", ");
  }

  Widget infoRow1(String title, String value, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Expanded(
            child: Text(
              value,
              style: AppTextStyle.gilroyRegular(
                context.screenWidth * 0.036,
                color: AppColor.fullBlack,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget infoRow(String title, String value, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: context.screenWidth*0.25,
            child: Text(
              "$title:",
              style: AppTextStyle.gilroyMedium(
                context.screenWidth * 0.036,
                color: AppColor.fullBlack,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: AppTextStyle.gilroyRegular(
                context.screenWidth * 0.036,
                color: AppColor.fullBlack,
              ),
            ),
          ),
        ],
      ),
    );
  }
}