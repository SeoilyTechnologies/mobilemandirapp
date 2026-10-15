import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'dart:io';

import 'package:mandirapp/common/utils/utils.dart';

import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/values/screenUtils.dart';
import '../../../../../../common/values/values_exports.dart';
import '../../../bloc/mobile_home_event.dart';
import '../../../bloc/mobile_home_state.dart';
import 'dart:isolate';


class PenchangBanner extends StatelessWidget {
  PenchangBanner({super.key});


  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return PenchangBannerSmall();
    } else if (context.isMediumScreen) {
      return PenchangBannerMedium();
    } else {
      return PenchangBannerMedium();
    }
  }
}


class PenchangBannerSmall extends StatelessWidget {
  const PenchangBannerSmall({super.key});

  @override
  Widget build(BuildContext context) {
    void calculate(Map<String, dynamic> data) {
      SendPort sendPort = data['sendPort'];
      int no = data['number'];
      int sum = 0;
      for (int i = 0; i <= no; i++) {
        sum = sum + i;
        //  print(sum);
      }
      // print(sum);
      sendPort.send(sum);
    }

    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          margin: EdgeInsets.only(left: 16, right: 16, top: 12),
          width: context.screenWidth,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/background/today_penchang_banner_background.png",
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(context.l10n.today,
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.037,
                      color: AppColor.lightYellow,
                    ),
                  ),

                  Text(
                    "${state.panchangBanner?.panchang!.hinduMonth ?? ""}",
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.037,
                      color: AppColor.lightYellow,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      Utils.formatDate(
                        "${state.panchangBanner?.panchang!.input!.date ?? ""}",
                      ),
                      style: AppTextStyle.gilroyBold(
                        context.screenWidth * 0.0373,
                        color: AppColor.appWhiteColor,
                      ),
                    ),
                  ),

                  Expanded(
                    child: Text(
                      "${state.panchangBanner?.panchang!.header!.samvatLine ?? ""}",
                      textAlign: TextAlign.end,
                      style: AppTextStyle.gilroyBold(
                        context.screenWidth * 0.0373,
                        color: AppColor.appWhiteColor,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    spacing: 8,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.asset(
                        "assets/icons/sun_icon.png",
                        width: 40,
                        height: 40,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "${state.panchangBanner?.panchang!.tithi!.name ?? ""}",
                            style: AppTextStyle.gilroyBold(
                              context.screenWidth * 0.0373,
                              color: AppColor.appWhiteColor,
                            ),
                          ),

                          Text(
                            "${state.panchangBanner?.panchang!.tithi!.paksha ?? ""}",
                            style: AppTextStyle.gilroyBold(
                              context.screenWidth * 0.0373,
                              color: AppColor.appWhiteColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      // ReceivePort receivePort = ReceivePort();
                      //
                      // Isolate.spawn(calculate, {
                      //   'sendPort': receivePort.sendPort,
                      //   'number': 4,
                      // });
                      // receivePort.listen((message) {
                      //   print("Result = $message");
                      // });
                      final now = DateTime.now();
                      context.read<MobileHomeBloc>().add(
                        MobileHomeEvent.selectDate(
                          selectedDate: now,
                          focusedDate: now,
                        ),
                      );

                      BlocProvider.of<MobileHomeBloc>(context).add(
                        MobileHomeEvent.getCalendarEvent(
                          month: now.month,
                          year: now.year,
                        ),
                      );
                      Navigator.pushNamed(context, AppRoutes.NEW_CALENDAR_PAGE);

                    },
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 12,
                        right: 12,
                        top: 8,
                        bottom: 8,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.appWhiteColor,
                        borderRadius: BorderRadius.circular(4),
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            context.l10n.viewFullCalendar,
                            // style: AppTextStyle.gilroySemiBold(
                            //   context.screenWidth * 0.026,
                            //   color: AppColor.goldDark,
                            // ),
                            style: TextStyle(
                              fontSize: Platform.isIOS
                                  ? context.screenWidth * 0.034
                                  : context.screenWidth * 0.034,
                              fontFamily: AppFont.gilroyBold,
                              color: AppColor.goldDark,
                            ),
                          ),
                          SizedBox(width: 5),
                          Image.asset(
                            "assets/icons/rightarrow.png",
                            width: 12,
                            height: 12,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14),
            ],
          ),
        );
      },
    );
  }
}

class PenchangBannerMedium extends StatelessWidget {
  const PenchangBannerMedium({super.key});

  @override
  Widget build(BuildContext context) {
    void calculate(Map<String, dynamic> data) {
      SendPort sendPort = data['sendPort'];
      int no = data['number'];
      int sum = 0;
      for (int i = 0; i <= no; i++) {
        sum = sum + i;
        //  print(sum);
      }
      // print(sum);
      sendPort.send(sum);
    }

    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          margin: EdgeInsets.only(left: 16, right: 16, top: 12),
          width: context.screenWidth,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/background/today_penchang_banner_background.png",
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(context.l10n.today,
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.037,
                      color: AppColor.lightYellow,
                    ),
                  ),

                  Text(
                    "${state.panchangBanner?.panchang!.hinduMonth ?? ""}",
                    style: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.037,
                      color: AppColor.lightYellow,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      Utils.formatDate(
                        "${state.panchangBanner?.panchang!.input!.date ?? ""}",
                      ),
                      style: AppTextStyle.gilroyBold(
                        context.screenWidth * 0.0373,
                        color: AppColor.appWhiteColor,
                      ),
                    ),
                  ),

                  Expanded(
                    child: Text(
                      "${state.panchangBanner?.panchang!.header!.samvatLine ?? ""}",
                      textAlign: TextAlign.end,
                      style: AppTextStyle.gilroyBold(
                        context.screenWidth * 0.0373,
                        color: AppColor.appWhiteColor,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    spacing: 8,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.asset(
                        "assets/icons/sun_icon.png",
                        width: 40,
                        height: 40,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "${state.panchangBanner?.panchang!.tithi!.name ?? ""}",
                            style: AppTextStyle.gilroyBold(
                              context.screenWidth * 0.0373,
                              color: AppColor.appWhiteColor,
                            ),
                          ),

                          Text(
                            "${state.panchangBanner?.panchang!.tithi!.paksha ?? ""}",
                            style: AppTextStyle.gilroyBold(
                              context.screenWidth * 0.0373,
                              color: AppColor.appWhiteColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      // ReceivePort receivePort = ReceivePort();
                      //
                      // Isolate.spawn(calculate, {
                      //   'sendPort': receivePort.sendPort,
                      //   'number': 4,
                      // });
                      // receivePort.listen((message) {
                      //   print("Result = $message");
                      // });
                      final now = DateTime.now();
                      context.read<MobileHomeBloc>().add(
                        MobileHomeEvent.selectDate(
                          selectedDate: now,
                          focusedDate: now,
                        ),
                      );

                      BlocProvider.of<MobileHomeBloc>(context).add(
                        MobileHomeEvent.getCalendarEvent(
                          month: now.month,
                          year: now.year,
                        ),
                      );
                      Navigator.pushNamed(context, AppRoutes.NEW_CALENDAR_PAGE);

                    },
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 12,
                        right: 12,
                        top: 8,
                        bottom: 8,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.appWhiteColor,
                        borderRadius: BorderRadius.circular(4),
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            context.l10n.viewFullCalendar,
                            // style: AppTextStyle.gilroySemiBold(
                            //   context.screenWidth * 0.026,
                            //   color: AppColor.goldDark,
                            // ),
                            style: TextStyle(
                              fontSize: Platform.isIOS
                                  ? context.screenWidth * 0.034
                                  : context.screenWidth * 0.034,
                              fontFamily: AppFont.gilroyBold,
                              color: AppColor.goldDark,
                            ),
                          ),
                          SizedBox(width: 5),
                          Image.asset(
                            "assets/icons/rightarrow.png",
                            width: 24,
                            height: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14),
            ],
          ),
        );
      },
    );
  }
}
