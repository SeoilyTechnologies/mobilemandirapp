import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/utils/date_time_helper.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';

import '../../../../../common/routes/exports.dart';
import '../../../../mobile_mandir_home/data/entity/calendaevent/calendar_day_model.dart';
import '../../../../mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../../../mobile_mandir_home/presentation/bloc/mobile_home_state.dart';

class PanchangHeader extends StatelessWidget {
const  PanchangHeader({super.key});


  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return PanchangHeaderSmall();
    } else if (context.isMediumScreen) {
      return PanchangHeaderMedium();
    } else {
      return PanchangHeaderMedium();
    }
  }
}

class PanchangHeaderSmall extends StatelessWidget {
  const PanchangHeaderSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final CalendarDayModel? selectedDay =
        state.selectedCalendarDay.date.isNotEmpty
            ? state.selectedCalendarDay
            : (state.calendarResponse.data.isNotEmpty
            ? state.calendarResponse.data.firstWhere((e) {
          try {
            final parsedDate = DateTime.parse(e.date);
            final now = DateTime.now();
            return parsedDate.year == now.year &&
                parsedDate.month == now.month &&
                parsedDate.day == now.day;
          } catch (_) {
            return false;
          }
        }, orElse: () => state.calendarResponse.data.first)
            : null);

        final date = selectedDay != null && selectedDay.date.isNotEmpty
            ? DateTime.parse(selectedDay.date)
            : DateTime.now();

        final hindiDays = {
          'Monday': 'Somvar',
          'Tuesday': 'Mangalvar',
          'Wednesday': 'Budhvar',
          'Thursday': 'Guruvar',
          'Friday': 'Shukravar',
          'Saturday': 'Shanivar',
          'Sunday': 'Ravivar',
        };

        final isHindi = Localizations.localeOf(context).languageCode == 'hi';
        final englishDay = DateFormat('EEEE', 'en').format(date);
        final hindiDay = hindiDays[englishDay] ?? englishDay;

        return Container(
          height: context.screenHeight * 0.44,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background/home_header_all.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                children: [
                  const SizedBox(height: 8),

                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.6),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            size: 14,
                            color: AppColor.newsecondaruy,
                          ),
                        ),
                      ),

                      const Spacer(),

                      Text(
                        context.l10n.panchangCalendar,
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.0426,
                          color: AppColor.appWhiteColor,
                        ),
                      ),

                      const Spacer(),
                    ],
                  ),

                  const SizedBox(height: 18),

                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/background/card_background.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "${date.day}",
                                      style: AppTextStyle.gilroyBold(
                                        context.screenWidth * 0.136,
                                        color: AppColor.appWhiteColor,
                                      ),
                                    ),

                                    const SizedBox(width: 8),

                                    Padding(
                                      padding: EdgeInsets.only(top: 18),
                                      child: Text(
                                        DateFormat.MMMM(Localizations.localeOf(context).languageCode).format(date),
                                        style: AppTextStyle.gilroyMedium(
                                          context.screenWidth * 0.053,
                                          color: AppColor.appyellowlightjj,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "${selectedDay?.paksha ?? ""} ${selectedDay?.tithi ?? ""}"
                                          .trim()
                                          .toUpperCase(),
                                      textAlign: TextAlign.end,
                                      style: AppTextStyle.gilroySemiBold(
                                        context.screenWidth * 0.026,
                                        color: AppColor.appyellowlightjj,
                                      ),
                                    ),

                                    SizedBox(height: 8),

                                    Text(
                                      selectedDay?.festivals.isNotEmpty == true
                                          ? selectedDay!.festivals.join(", ")
                                          : "",
                                      textAlign: TextAlign.end,
                                      style: AppTextStyle.gilroyBold(
                                        context.screenWidth * 0.0426,
                                        color: AppColor.appWhiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          //   const SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "$hindiDay\n($englishDay)",
                                style: AppTextStyle.gilroyBold(
                                  context.screenWidth * 0.032,
                                  color: AppColor.appWhiteColor,
                                ),
                              ),

                              const Spacer(),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "${context.l10n.sunrise}:- ${DateTimeHelper.formatToTime12Hourr(selectedDay!.sunrise.toString())}",
                                    style: AppTextStyle.medium(
                                      context.screenWidth * 0.036,
                                      color: AppColor.appWhiteColor,
                                    ),
                                  ),
                                  Text(
                                    "${context.l10n.sunset}:- ${DateTimeHelper.formatToTime12Hourr(selectedDay!.sunset.toString())}",
                                    style: AppTextStyle.medium(
                                      context.screenWidth * 0.036,
                                      color: AppColor.appWhiteColor,
                                    ),
                                  ),
                                ],
                              ),
                              // chip(
                              //   text: "Vrat",
                              //   image: "assets/new_design/icon/moon_varat.png",
                              //   bgColor: const Color(0x33D96D7E),
                              //   borderColor: const Color(0x66FF8A98),
                              //   textColor: const Color(0xFFFFB7C0),
                              //   context: context,
                              // ),
                              // const SizedBox(width: 6),
                              // chip(
                              //   text: "Vrat",
                              //   image: "assets/new_design/icon/moon_varat.png",
                              //   bgColor: const Color(0x33D96D7E),
                              //   borderColor: const Color(0x66FF8A98),
                              //   textColor: const Color(0xFFFFB7C0),
                              //   context: context,
                              // ),
                              // const SizedBox(width: 6),
                              // chip(
                              //   text: "Vrat",
                              //   image: "assets/new_design/icon/moon_varat.png",
                              //   bgColor: const Color(0x33D96D7E),
                              //   borderColor: const Color(0x66FF8A98),
                              //   textColor: const Color(0xFFFFB7C0),
                              //   context: context,
                              // ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Divider(color: Colors.white.withOpacity(0.99)),
                          SizedBox(height: 4),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              item(
                                context.l10n.nakshatra.toUpperCase(),
                                selectedDay?.nakshatra ?? "",
                                context,
                              ),

                              SizedBox(
                                height: 30,
                                child: VerticalDivider(
                                  thickness: 1,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                              ),
                              item(context.l10n.yoga.toUpperCase(), selectedDay?.yog ?? "", context),
                              SizedBox(
                                height: 30,
                                child: VerticalDivider(
                                  thickness: 1,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                              ),
                              item(context.l10n.karan.toUpperCase(), selectedDay?.karan ?? "", context),
                              SizedBox(
                                height: 30,
                                child: VerticalDivider(
                                  thickness: 1,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                              ),
                              item(
                                context.l10n.paksha.toUpperCase(),
                                selectedDay?.paksha ?? "",
                                context,
                              ),
                              SizedBox(
                                height: 30,
                                child: VerticalDivider(
                                  thickness: 1,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                              ),
                              item(context.l10n.tithi.replaceAll(':', '').toUpperCase(), selectedDay?.tithi ?? "", context),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static Widget chip({
    required String text,
    required String image,
    required Color bgColor,
    required Color borderColor,
    required Color textColor,
    required BuildContext context,
  }) {
    return Container(
      height: 24,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(26),
        border: Border.all(color: borderColor, width: 1.6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(image, width: 12, height: 12, fit: BoxFit.contain),

          const SizedBox(width: 8),

          Text(
            text,
            style: AppTextStyle.gilroyBold(
              context.screenWidth * 0.026,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  static Widget item(String title, String value, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppTextStyle.gilroyMedium(
            context.screenWidth * 0.024,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 4),

        Text(
          value,
          style: AppTextStyle.gilroyBold(
            context.screenWidth * 0.026,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class PanchangHeaderMedium extends StatelessWidget {
  const PanchangHeaderMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final CalendarDayModel? selectedDay =
        state.selectedCalendarDay.date.isNotEmpty
            ? state.selectedCalendarDay
            : (state.calendarResponse.data.isNotEmpty
            ? state.calendarResponse.data.firstWhere((e) {
          try {
            final parsedDate = DateTime.parse(e.date);
            final now = DateTime.now();
            return parsedDate.year == now.year &&
                parsedDate.month == now.month &&
                parsedDate.day == now.day;
          } catch (_) {
            return false;
          }
        }, orElse: () => state.calendarResponse.data.first)
            : null);

        final date = selectedDay != null && selectedDay.date.isNotEmpty
            ? DateTime.parse(selectedDay.date)
            : DateTime.now();

        final hindiDays = {
          'Monday': 'Somvar',
          'Tuesday': 'Mangalvar',
          'Wednesday': 'Budhvar',
          'Thursday': 'Guruvar',
          'Friday': 'Shukravar',
          'Saturday': 'Shanivar',
          'Sunday': 'Ravivar',
        };

        final isHindi = Localizations.localeOf(context).languageCode == 'hi';
        final englishDay = DateFormat('EEEE', 'en').format(date);
        final hindiDay = hindiDays[englishDay] ?? englishDay;

        return Container(
          height: context.screenHeight * 0.45,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background/home_header_all.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                children: [
                  const SizedBox(height: 8),

                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.6),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            size: 14,
                            color: AppColor.newsecondaruy,
                          ),
                        ),
                      ),

                      const Spacer(),

                      Text(
                        context.l10n.panchangCalendar,
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.0426,
                          color: AppColor.appWhiteColor,
                        ),
                      ),

                      const Spacer(),
                    ],
                  ),

                  const SizedBox(height: 18),

                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/background/card_background.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "${date.day}",
                                      style: AppTextStyle.gilroyBold(
                                        context.screenWidth * 0.136,
                                        color: AppColor.appWhiteColor,
                                      ),
                                    ),

                                    const SizedBox(width: 8),

                                    Padding(
                                      padding: EdgeInsets.only(top: 18),
                                      child: Text(
                                        DateFormat.MMMM(Localizations.localeOf(context).languageCode).format(date),
                                        style: AppTextStyle.gilroyMedium(
                                          context.screenWidth * 0.053,
                                          color: AppColor.appyellowlightjj,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "${selectedDay?.paksha ?? ""} ${selectedDay?.tithi ?? ""}"
                                          .trim()
                                          .toUpperCase(),
                                      textAlign: TextAlign.end,
                                      style: AppTextStyle.gilroySemiBold(
                                        context.screenWidth * 0.026,
                                        color: AppColor.appyellowlightjj,
                                      ),
                                    ),

                                    SizedBox(height: 8),

                                    Text(
                                      selectedDay?.festivals.isNotEmpty == true
                                          ? selectedDay!.festivals.join(", ")
                                          : "",
                                      textAlign: TextAlign.end,
                                      style: AppTextStyle.gilroyBold(
                                        context.screenWidth * 0.0426,
                                        color: AppColor.appWhiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          //   const SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "$hindiDay\n($englishDay)",
                                style: AppTextStyle.gilroyBold(
                                  context.screenWidth * 0.032,
                                  color: AppColor.appWhiteColor,
                                ),
                              ),

                              const Spacer(),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "${context.l10n.sunrise}:- ${DateTimeHelper.formatToTime12Hourr(selectedDay!.sunrise.toString())}",
                                    style: AppTextStyle.medium(
                                      context.screenWidth * 0.036,
                                      color: AppColor.appWhiteColor,
                                    ),
                                  ),
                                  Text(
                                    "${context.l10n.sunset}:- ${DateTimeHelper.formatToTime12Hourr(selectedDay!.sunset.toString())}",
                                    style: AppTextStyle.medium(
                                      context.screenWidth * 0.036,
                                      color: AppColor.appWhiteColor,
                                    ),
                                  ),
                                ],
                              ),
                              // chip(
                              //   text: "Vrat",
                              //   image: "assets/new_design/icon/moon_varat.png",
                              //   bgColor: const Color(0x33D96D7E),
                              //   borderColor: const Color(0x66FF8A98),
                              //   textColor: const Color(0xFFFFB7C0),
                              //   context: context,
                              // ),
                              // const SizedBox(width: 6),
                              // chip(
                              //   text: "Vrat",
                              //   image: "assets/new_design/icon/moon_varat.png",
                              //   bgColor: const Color(0x33D96D7E),
                              //   borderColor: const Color(0x66FF8A98),
                              //   textColor: const Color(0xFFFFB7C0),
                              //   context: context,
                              // ),
                              // const SizedBox(width: 6),
                              // chip(
                              //   text: "Vrat",
                              //   image: "assets/new_design/icon/moon_varat.png",
                              //   bgColor: const Color(0x33D96D7E),
                              //   borderColor: const Color(0x66FF8A98),
                              //   textColor: const Color(0xFFFFB7C0),
                              //   context: context,
                              // ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Divider(color: Colors.white.withOpacity(0.99)),
                          SizedBox(height: 8),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              item(
                                context.l10n.nakshatra.toUpperCase(),
                                selectedDay?.nakshatra ?? "",
                                context,
                              ),

                              SizedBox(
                                height: 30,
                                child: VerticalDivider(
                                  thickness: 1,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                              ),
                              item(context.l10n.yoga.toUpperCase(), selectedDay?.yog ?? "", context),
                              SizedBox(
                                height: 30,
                                child: VerticalDivider(
                                  thickness: 1,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                              ),
                              item(context.l10n.karan.toUpperCase(), selectedDay?.karan ?? "", context),
                              SizedBox(
                                height: 30,
                                child: VerticalDivider(
                                  thickness: 1,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                              ),
                              item(
                                context.l10n.paksha.toUpperCase(),
                                selectedDay?.paksha ?? "",
                                context,
                              ),
                              SizedBox(
                                height: 30,
                                child: VerticalDivider(
                                  thickness: 1,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                              ),
                              item(context.l10n.tithi.replaceAll(':', '').toUpperCase(), selectedDay?.tithi ?? "", context),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static Widget chip({
    required String text,
    required String image,
    required Color bgColor,
    required Color borderColor,
    required Color textColor,
    required BuildContext context,
  }) {
    return Container(
      height: 24,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(26),
        border: Border.all(color: borderColor, width: 1.6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(image, width: 12, height: 12, fit: BoxFit.contain),

          const SizedBox(width: 8),

          Text(
            text,
            style: AppTextStyle.gilroyBold(
              context.screenWidth * 0.026,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  static Widget item(String title, String value, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppTextStyle.gilroyMedium(
            context.screenWidth * 0.024,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 4),

        Text(
          value,
          style: AppTextStyle.gilroyBold(
            context.screenWidth * 0.026,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
