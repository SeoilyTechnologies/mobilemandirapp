import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:intl/intl.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/mobile_mandir_home/presentation/ui/component/panchang_info.dart';


import '../../../../../common/routes/exports.dart';
import '../../../../../common/routes/routes.dart';
import '../../bloc/mobile_home_bloc.dart';
import '../../bloc/mobile_home_state.dart';

class PanchangCard extends StatelessWidget {
  const PanchangCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          // height: context.screenHeight*0.34,
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              //mai chahta hu ye wali halka left side se dikhe bs. orange container ke nich
              // Positioned(
              //   right: 24,
              //
              //   child: Padding(
              //     padding: EdgeInsets.only(top: 4, bottom: 0),
              //     child: Container(
              //       width: MediaQuery.of(context).size.width - 48,
              //       height: context.screenHeight*0.33,
              //       decoration: BoxDecoration(
              //         color: Colors.orange,
              //         borderRadius: BorderRadius.circular(22),
              //         boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(left: 0),
                child: Container(
                  width: double.infinity,
                  //height: context.screenHeight*0.4,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 6),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.only(top: 8,bottom: 8),
                                child: Image.asset(
                                  "assets/new_design/icon/tabler_sun.png",
                                  width: 18,
                                  height: 18,
                                ),
                              ),
                              Text(
                                " Sun & Moon Timings",
                                style: AppTextStyle.gilroyBold(
                                  context.screenWidth * 0.0373,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "",
                            //formatDate('${state.selectedPanchangDay.date}'),
                            style: AppTextStyle.gilroySemiBold(
                              context.screenWidth * 0.03073,
                              color: AppColor.newGreyy,
                            ),
                          ),
                        ],
                      ),
                      // const SizedBox(height: 8),
                      //  Text(
                      //      '${state.penchangResponse.data.data.place}',
                      //   style: AppTextStyle.regular(context.screenWidth*0.028,color: Colors.black)
                      // ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PanchangInfo(
                            title: context.l10n.paksha,
                            value:formatWord('${state.selectedPanchangDay.paksha}') ,
                            icon: Image.asset(
                              "assets/new_figma_icons/penchang_star.png",
                              width: 18,
                              height: 18,
                            ),
                          ),
                          Spacer(),
                          PanchangInfo(
                            title: context.l10n.nakshatra,
                            value: '${state.selectedPanchangDay.nakshatra}',
                            icon: Image.asset(
                              "assets/new_figma_icons/penchang_star.png",
                              width: 18,
                              height: 18,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PanchangInfo(
                            title: context.l10n.sunrise,
                            value: '${state.selectedPanchangDay.sunrise}',
                            icon: Image.asset(
                              "assets/new_figma_icons/devotion_sunrise.png",
                              width: 34,
                              height: 34,
                            ),
                          ),
                          Spacer(),
                          PanchangInfo(
                            title: 'Sunset      ',
                            value: '${state.selectedPanchangDay.sunset}',
                            icon: Image.asset(
                              "assets/new_figma_icons/devotion_sunset.png",
                              width: 34,
                              height: 34,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      // Center(
                      //   child: GestureDetector(
                      //     onTap: (){
                      //       Navigator.pushNamed(context, AppRoutes.PENCHANG);
                      //     },
                      //     child: Container(
                      //       width: double.infinity,
                      //       padding: const EdgeInsets.symmetric(
                      //         vertical: 12,
                      //         horizontal: 24,
                      //       ),
                      //       decoration: BoxDecoration(
                      //         border: Border.all(color: Colors.grey.shade300),
                      //         borderRadius: BorderRadius.circular(12),
                      //       ),
                      //       child:  Center(child: Text('View Full Panchang',style:AppTextStyle.semiBold(context.screenWidth*0.034,color: Colors.black))),
                      //     ),
                      //   )
                      // ),
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
  String formatDate(String isoDate) {
    DateTime dateTime = DateTime.parse(isoDate).toLocal();
    return DateFormat('dd MMM yyyy').format(dateTime);
  }

  String formatWord(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1).toLowerCase();
  }

}
