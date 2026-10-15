import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:table_calendar/table_calendar.dart';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../common/routes/exports.dart';
import '../../../../mobile_mandir_home/data/entity/calendaevent/calendar_day_model.dart';
import '../../../../mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../../../mobile_mandir_home/presentation/bloc/mobile_home_state.dart';

class CustomCalendar extends StatefulWidget {
  final CalendarResponse calendarResponse;

  const CustomCalendar({super.key, required this.calendarResponse});

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  CalendarDayModel? getDayData(DateTime day) {
    try {
      return widget.calendarResponse.data.firstWhere((e) {
        final date = DateTime.parse(e.date);

        return date.year == day.year &&
            date.month == day.month &&
            date.day == day.day;
      });
    } catch (_) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        final selectedDay = state.selectedDate ?? DateTime.now();
        final focusedDay = state.focusedDate ?? DateTime.now();

        return SizedBox(
          width: context.screenWidth,
          child: Container(
            padding: const EdgeInsets.fromLTRB(18, 18, 18, 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                /// HEADER
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        final newFocusedDay = DateTime(
                          focusedDay.year,
                          focusedDay.month - 1,
                          1,
                        );

                        final firstOfNewMonth = DateTime(
                          newFocusedDay.year,
                          newFocusedDay.month,
                          1,
                        );

                        context.read<MobileHomeBloc>().add(
                          MobileHomeEvent.selectDate(
                            selectedDate: firstOfNewMonth,
                            focusedDate: newFocusedDay,
                          ),
                        );

                        context.read<MobileHomeBloc>().add(
                          MobileHomeEvent.getCalendarEvent(
                            month: newFocusedDay.month,
                            year: newFocusedDay.year,
                          ),
                        );
                      },
                      child: navButton(Icons.chevron_left),
                    ),

                    const Spacer(),

                    Column(
                      children: [
                        Text(
                          DateFormat("MMMM yyyy", Localizations.localeOf(context).languageCode).format(focusedDay),
                          style: AppTextStyle.gilroyBold(
                            context.screenWidth * 0.0426,
                            color: AppColor.fullBlack,
                          ),
                        ),

                        const SizedBox(height: 6),

                        Text(
                          state.selectedCalendarDay.tithi,
                          style: AppTextStyle.gilroyMedium(
                            context.screenWidth * 0.026,
                            color: AppColor.appNewBlackColordsdsds,
                          ),
                        ),
                      ],
                    ),

                    const Spacer(),

                    GestureDetector(
                      onTap: () {
                        final newFocusedDay = DateTime(
                          focusedDay.year,
                          focusedDay.month + 1,
                          1,
                        );

                        final firstOfNewMonth = DateTime(
                          newFocusedDay.year,
                          newFocusedDay.month,
                          1,
                        );

                        context.read<MobileHomeBloc>().add(
                          MobileHomeEvent.selectDate(
                            selectedDate: firstOfNewMonth,
                            focusedDate: newFocusedDay,
                          ),
                        );

                        context.read<MobileHomeBloc>().add(
                          MobileHomeEvent.getCalendarEvent(
                            month: newFocusedDay.month,
                            year: newFocusedDay.year,
                          ),
                        );
                      },
                      child: navButton(Icons.chevron_right),
                    ),
                  ],
                ),

                const SizedBox(height: 22),

                /// CALENDAR
                SizedBox(
                  width: context.screenWidth,
                  child: TableCalendar(
                    sixWeekMonthsEnforced: false,
                    shouldFillViewport: false,

                    firstDay: DateTime.utc(2020),
                    lastDay: DateTime.utc(2035),

                    focusedDay: focusedDay,

                    selectedDayPredicate: (day) {
                      return isSameDay(selectedDay, day);
                    },

                    headerVisible: false,
                    rowHeight: 68,
                    daysOfWeekHeight: 34,
                    currentDay: null,
                    weekNumbersVisible: false,
                    availableGestures: AvailableGestures.none,
                    calendarFormat: CalendarFormat.month,
                    startingDayOfWeek: StartingDayOfWeek.sunday,

                    calendarStyle: const CalendarStyle(
                      outsideDaysVisible: false,
                      isTodayHighlighted: false,
                      cellMargin: EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                    ),

                    onDaySelected: (selected, focused) {
                      final dayData = getDayData(selected);
                      context.read<MobileHomeBloc>().add(
                        MobileHomeEvent.selectDate(
                          selectedDate: selected,
                          focusedDate: focused,
                        ),
                      );

                      if (dayData != null) {
                        context.read<MobileHomeBloc>().add(
                          MobileHomeEvent.selectCalendarDay(day: dayData),
                        );
                      }
                    },

                    calendarBuilders: CalendarBuilders(
                      defaultBuilder: (context, day, focusedDay) {
                        return buildCell(day, context);
                      },

                      selectedBuilder: (context, day, focusedDay) {
                        return buildCell(day, context, selected: true);
                      },
                    ),
                  ),
                ),

                Divider(color: Colors.grey.shade300, thickness: 1),

                const SizedBox(height: 14),

                const CalendarLegend(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildCell(
    DateTime day,
    BuildContext context, {
    bool selected = false,
  }) {
    final CalendarDayModel? data = getDayData(day);

    final bool isSelected = selected;
    final bool isEkadashi = data?.isEkadashi ?? false;
    final bool isFestival = data?.festivals.isNotEmpty ?? false;

    final bool isMajorFestival =
        (data?.isPurnima ?? false) ||
        (data?.isAmavasya ?? false) ||
        (data?.isGrahan ?? false);

    final String tithi = data?.tithi ?? "";

    Color dayColor = const Color(0xFF2A1607);
    Color tithiColor = const Color(0xFF9B7546);
    Color dotColor = const Color(0xFFD59B25);

    Color? borderColor;
    Color backgroundColor = Colors.transparent;

    if (isSelected) {
      dayColor = const Color(0xFF16992B);
      tithiColor = const Color(0xFF16992B);
      dotColor = const Color(0xFF16992B);

      borderColor = const Color(0xFF16992B);
      backgroundColor = const Color(0xFFEAF7E8);
    } else if (isEkadashi) {
      tithiColor = const Color(0xFF16992B);
      dotColor = const Color(0xFF16992B);
    } else if (isMajorFestival) {
      dayColor = const Color(0xFF8B5E34);
      tithiColor = const Color(0xFF8B5E34);
      dotColor = const Color(0xFF8B5E34);
      borderColor = const Color(0xFF8B5E34);
    } else if (isFestival) {
      dayColor = const Color(0xFFD59B25);
      tithiColor = const Color(0xFFD59B25);
      dotColor = const Color(0xFFD59B25);
      borderColor = const Color(0xFFD59B25);
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
        border: borderColor != null
            ? Border.all(color: borderColor, width: 0.8)
            : null,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${day.day}",
              style: TextStyle(
                fontFamily: AppFont.gilroyBold,
                fontSize: 12,
                height: 1,
                color: dayColor,
              ),
            ),

            const SizedBox(height: 3),

            SizedBox(
              width: 44,
              child: Text(
                tithi,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: AppFont.gilroyMedium,
                  fontSize: 8,
                  height: 1,
                  color: tithiColor,
                ),
              ),
            ),

            const SizedBox(height: 4),

            Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: dotColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget navButton(IconData icon) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xFFF8F0E2),
        border: Border.all(color: const Color(0xFFE8D3AA)),
      ),
      child: Icon(icon, size: 18, color: const Color(0xFFD6A028)),
    );
  }
}

class CalendarLegend extends StatelessWidget {
  const CalendarLegend({super.key});

  Widget item(Color color, String text, BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        ),

        const SizedBox(width: 8),

        Text(
          text,
          style: AppTextStyle.gilroySemiBold(
            context.screenWidth * 0.026,
            color: AppColor.appNewBlackColordsdsds,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 3,
      runSpacing: 4,
      alignment: WrapAlignment.center,
      children: [
        item(const Color(0xFFD04134), context.l10n.majorFestival, context),
        item(const Color(0xFFD49A24), context.l10n.minorFestival, context),
        item(const Color(0xFF1D7D3A), context.l10n.ekadashiVrat, context),
        item(const Color(0xFF7B3F00), context.l10n.selected, context),
      ],
    );
  }
}
