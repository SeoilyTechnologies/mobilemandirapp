import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../data/entity/calendaevent/calendar_day_model.dart';
import '../../bloc/mobile_home_bloc.dart';
import '../../bloc/mobile_home_event.dart';

class PanchangMonthCalendar extends StatefulWidget {
  final CalendarResponse calendarResponse;

  const PanchangMonthCalendar({super.key, required this.calendarResponse});

  @override
  State<PanchangMonthCalendar> createState() => _PanchangMonthCalendarState();
}

class _PanchangMonthCalendarState extends State<PanchangMonthCalendar> {
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;

  late Map<DateTime, CalendarDayModel> _cachedMap;

  final int _currentYear = DateTime.now().year;

  // ================= INIT =================

  @override
  void initState() {
    super.initState();
    selectedDay = DateTime.now(); // 🔥 THIS LINE ADD
    focusedDay = DateTime.now();
    _cachedMap = _buildPanchangMapFromEvents();
  }

  @override
  void didUpdateWidget(covariant PanchangMonthCalendar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.calendarResponse != widget.calendarResponse) {
      _cachedMap = _buildPanchangMapFromEvents();
    }
  }

  // ================= UTILS =================

  DateTime _normalize(DateTime d) {
    final local = d.toLocal();
    return DateTime(local.year, local.month, local.day);
  }

  DateTime? _parseDate(String dateStr) {
    try {
      return DateTime.parse(dateStr);
    } catch (_) {
      return null;
    }
  }

  // ================= MAIN =================

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(left: 14, right: 14),
        child: Container(
          //margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildHeader(),
              const SizedBox(height: 12),
              _buildTithiBar(),
              const SizedBox(height: 14),
              _buildCalendar(context),
              const SizedBox(height: 18),
              _buildLegend(),
            ],
          ),
        ),
      ),
    );
  }

  // ================= HEADER =================

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // InkWell(
        //   borderRadius: BorderRadius.circular(20),
        //   onTap: (),
        //   child: const Icon(Icons.chevron_left, size: 28),
        // ),
        Text(
          "${_monthName(focusedDay.month)} ${focusedDay.year}",
          style: TextStyle(
            fontSize: 18,
            fontFamily: AppFont.gilroyBold,
            //  fontWeighaat: FontWeight.w600,
          ),
        ),
        // InkWell(
        //   borderRadius: BorderRadius.circular(20),
        //   onTap: _goToNextMonth,
        //   child: const Icon(Icons.chevron_right, size: 28),
        // ),
      ],
    );
  }

  // ================= TITHI BAR =================

  Widget _buildTithiBar() {
    if (selectedDay == null) {
      return _brownBar("कृपया कोई तिथि चुनें", "");
    }

    final dayKey = _normalize(selectedDay!);
    final data = _cachedMap[dayKey];

    if (data == null) {
      return _brownBar("डेटा उपलब्ध नहीं है", _formatDate(selectedDay!));
    }

    final List<String> parts = [];

    // 1️⃣ TITHI – always show (🗓️ icon added)
    // if (data.tithiHi.isNotEmpty) {
    //   parts.add("🗓️ ${data.tithiHi}");
    // } else if (data.tithiEn.isNotEmpty) {
    //   parts.add("🗓️ ${data.tithiEn}");
    // }

    // 2️⃣ Purnima / Amavasya / Grahan (already have icons)
    if (data.isPurnima) parts.add("🌕 पूर्णिमा");
    if (data.isAmavasya) parts.add("🌑 अमावस्या");
    if (data.isGrahan) parts.add("🌞 ग्रहण");

    // 3️⃣ Festivals (already 🪔 icon)
    // if (data.festivals.isNotEmpty) {
    //   for (final f in data.festivals) {
    //     if (f.titleHi.isNotEmpty) {
    //       parts.add("🪔 ${f.titleHi}");
    //     } else if (f.titleEn.isNotEmpty) {
    //       parts.add("🪔 ${f.titleEn}");
    //     }
    //   }
    // }

    final title = parts.join("  •  ");
    final subTitle = _formatDate(selectedDay!);

    return _brownBar(title, subTitle);
  }

  // Widget _buildTithiBar() {
  //   if (selectedDay == null) {
  //     return _brownBar("कृपया कोई तिथि चुनें", "");
  //   }
  //
  //   final dayKey = _normalize(selectedDay!);
  //   final data = _cachedMap[dayKey];
  //
  //   if (data == null) {
  //     return _brownBar("डेटा उपलब्ध नहीं है", _formatDate(selectedDay!));
  //   }
  //
  //   final List<String> parts = [];
  //
  //   // 1️⃣ TITHI – always show
  //   if (data.tithiHi.isNotEmpty) {
  //     parts.add(data.tithiHi);
  //   } else if (data.tithiEn.isNotEmpty) {
  //     parts.add(data.tithiEn);
  //   }
  //
  //   // 2️⃣ Purnima / Amavasya / Grahan
  //   if (data.isPurnima) parts.add("🌕 पूर्णिमा");
  //   if (data.isAmavasya) parts.add("🌑 अमावस्या");
  //   if (data.isGrahan) parts.add("🌞 ग्रहण");
  //
  //   // 3️⃣ Festivals
  //   if (data.festivals.isNotEmpty) {
  //     for (final f in data.festivals) {
  //       if (f.titleHi.isNotEmpty) {
  //         parts.add("🪔 ${f.titleHi}");
  //       } else if (f.titleEn.isNotEmpty) {
  //         parts.add("🪔 ${f.titleEn}");
  //       }
  //     }
  //   }
  //
  //   final title = parts.join("  •  ");
  //   final subTitle = _formatDate(selectedDay!);
  //
  //   return _brownBar(title, subTitle);
  // }

  Widget _brownBar(String title, String subTitle) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: AppColor.greycolor11,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            fontFamily: AppFont.gilroyMedium
            ),
          ),
          if (subTitle.isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(
              subTitle,
              style: const TextStyle(color: Colors.white70,
                  fontFamily: AppFont.gilroyRegular,
                  fontSize: 12),
            ),
          ],
        ],
      ),
    );
  }

  // ================= CALENDAR =================

  Widget _buildCalendar(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime(2026, 1, 1),
      lastDay: DateTime(2026, 3, 10),
      focusedDay: focusedDay,

      headerStyle: HeaderStyle(
        titleTextStyle: AppTextStyle.gilroyMedium(
          context.screenWidth * 0.03,
          color: AppColor.appBlack,
        ),
      ),
      calendarStyle: CalendarStyle(
        holidayTextStyle: AppTextStyle.gilroyMedium(
          context.screenWidth * 0.03,
          color: AppColor.appBlack,
        ),
        defaultTextStyle: AppTextStyle.gilroyMedium(
          context.screenWidth * 0.03,
          color: AppColor.appBlack,
        ),
        selectedTextStyle: AppTextStyle.gilroyMedium(
          context.screenWidth * 0.03,
          color: AppColor.red,
        ),
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: AppTextStyle.gilroyMedium(
          context.screenWidth * 0.03,
          color: AppColor.appBlack,
        ),
      ),
      headerVisible: false,
      availableGestures: AvailableGestures.none,
      calendarFormat: CalendarFormat.month,
      rowHeight: 64,
      pageJumpingEnabled: false,
      onPageChanged: (newFocusedDay) {
        setState(() {
          focusedDay = newFocusedDay;
        });
      },

      selectedDayPredicate: (day) => isSameDay(day, selectedDay),

      onDaySelected: (selected, focused) {
        setState(() {
          selectedDay = selected;
          focusedDay = focused;
        });
      },

      calendarBuilders: CalendarBuilders(
        defaultBuilder: (_, day, __) => _buildDayCell(day),
        selectedBuilder: (_, day, __) => _buildDayCell(day, selected: true),
        todayBuilder: (_, day, __) => _buildDayCell(day, today: true),
      ),
    );
  }

  // ================= DAY CELL =================

  Widget _buildDayCell(
    DateTime day, {
    bool selected = false,
    bool today = false,
  }) {
    final data = _cachedMap[_normalize(day)];

    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 6),
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: selected ? const Color(0xFF7A3E00) : Colors.transparent,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Text(
            "${day.day}",
            style: TextStyle(
              //  fontWeight: FontWeight.w600,
              fontFamily: AppFont.gilroyRegular,
              color: selected ? Colors.white : Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (data?.festivals.isNotEmpty == true)
              Text("🪔", style: TextStyle(fontSize: 12)),
            if (data?.isGrahan == true)
              const Padding(
                padding: EdgeInsets.only(left: 2),
                child: Text("🌞", style: TextStyle(fontSize: 12)),
              ),
            if (data?.isAmavasya == true)
              const Padding(
                padding: EdgeInsets.only(left: 2),
                child: Text("🌑", style: TextStyle(fontSize: 12)),
              ),
            if (data?.isPurnima == true)
              const Padding(
                padding: EdgeInsets.only(left: 2),
                child: Text("🌕", style: TextStyle(fontSize: 12)),
              ),
          ],
        ),
      ],
    );
  }

  // ================= DATA MAPPER =================

  Map<DateTime, CalendarDayModel> _buildPanchangMapFromEvents() {
    final Map<DateTime, CalendarDayModel> map = {};

    for (final event in widget.calendarResponse.data) {
      final parsedDate = _parseDate(event.date);
      if (parsedDate == null) continue;

      final dateKey = _normalize(parsedDate);
      map[dateKey] = event;
    }

    return map;
  }

  // ================= MONTH NAVIGATION =================

  void _goToPreviousMonth() {
    final newDate = DateTime(focusedDay.year, focusedDay.month - 1, 1);

    setState(() {
      focusedDay = newDate;
    });

    BlocProvider.of<MobileHomeBloc>(context).add(
      MobileHomeEvent.getCalendarEvent(
        month: newDate.month,
        year: newDate.year,
      ),
    );
  }

  void _goToNextMonth() {
    final newDate = DateTime(focusedDay.year, focusedDay.month + 1, 1);

    if (newDate.year > _currentYear) return;

    setState(() {
      focusedDay = newDate;
    });

    BlocProvider.of<MobileHomeBloc>(context).add(
      MobileHomeEvent.getCalendarEvent(
        month: newDate.month,
        year: newDate.year,
      ),
    );
  }

  // ================= HELPERS =================

  String _monthName(int month) {
    const months = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December",
    ];
    return months[month - 1];
  }

  String _formatDate(DateTime d) {
    return "${d.day} ${_monthName(d.month)}, ${d.year}";
  }

  // ================= LEGEND =================

  Widget _buildLegend() {
    Widget item(String icon, String text) {
      return Row(
        children: [
          Text(icon, style: const TextStyle(fontSize: 12)),
          const SizedBox(width: 6),
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: AppFont.gilroyMedium,
            ),
          ),
        ],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        item("🌞", "Grahan"),
        item("🌑", "Amavasya"),
        item("🌕", "Purnima"),
        item("🪔", "Festivals"),
      ],
    );
  }
}
