import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/values/screenUtils.dart';
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

  final Set<String> shownTags = {};

  // ================= INIT =================

  // @override
  // void initState() {
  //   super.initState();
  //   _cachedMap = _buildPanchangMapFromEvents();
  // }
  @override
  void initState() {
    super.initState();

    final today = DateTime.now();

    focusedDay = today;
    selectedDay = today;

    _cachedMap = _buildPanchangMapFromEvents();
  }

  @override
  void didUpdateWidget(covariant PanchangMonthCalendar oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.calendarResponse != widget.calendarResponse) {
      _cachedMap = _buildPanchangMapFromEvents();

      selectedDay ??= DateTime.now();
    }
  }

  // @override
  // void didUpdateWidget(covariant PanchangMonthCalendar oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   if (oldWidget.calendarResponse != widget.calendarResponse) {
  //     _cachedMap = _buildPanchangMapFromEvents();
  //   }
  // }

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
      child: Container(
        margin: const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 4),
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
            const SizedBox(height: 10),
            _buildCalendar(),
            const SizedBox(height: 18),
            _buildLegend(),
          ],
        ),
      ),
    );
  }

  // ================= HEADER =================

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: _goToPreviousMonth,
          child: const Icon(Icons.chevron_left, size: 28),
        ),
        Text(
          "${_monthName(focusedDay.month)} ${focusedDay.year}",
          style: AppTextStyle.gilroyBold(
            context.screenWidth * 0.0373,
            color: Colors.black,
          ),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: _goToNextMonth,
          child: const Icon(Icons.chevron_right, size: 28),
        ),
      ],
    );
  }

  // ================= TITHI BAR =================
  String _formatTag(String tag) {
    final t = tag.trim().toUpperCase();

    if (t.startsWith("NAVRATI")) {
      final parts = t.split(" ");
      if (parts.length > 1) {
        return "🌺 Navratri Day ${parts[1]}";
      }
    }

    return tag;
  }

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

    // // 1️⃣ TITHI – always show
    // if (data.tithiHi.isNotEmpty) {
    //   parts.add("🗓 " + data.tithiHi);
    // } else if (data.tithiEn.isNotEmpty) {
    //   parts.add("🗓 " + data.tithiEn);
    // }

    // 2️⃣ Purnima / Amavasya / Grahan
    if (data.isPurnima) parts.add("🌕 पूर्णिमा");
    if (data.isAmavasya) parts.add("🌑 अमावस्या");
    if (data.isGrahan) parts.add("🌞 ग्रहण");

    // 3️⃣ Festivals
    if (data.festivals.isNotEmpty) {
      // 3️⃣ Festivals
      if (data.festivals.isNotEmpty) {
        final Set<String> shownTags = {};

        // for (final f in data.festivals) {
        //   // TAG SHOW
        //   if (f.tag.trim().isNotEmpty && !shownTags.contains(f.tag)) {
        //     shownTags.add(f.tag);
        //     parts.add(_formatTag(f.tag));
        //   }
        //
        //   // FESTIVAL NAME
        //   if (f.titleHi.isNotEmpty) {
        //     parts.add("🪔 ${f.titleHi}");
        //   } else if (f.titleEn.isNotEmpty) {
        //     parts.add("🪔 ${f.titleEn}");
        //   }
        // }
      }
      // for (final f in data.festivals) {
      //
      //   // TAG SHOW
      //   if (f.tag.trim().isNotEmpty && !shownTags.contains(f.tag)) {
      //     shownTags.add(f.tag);
      //     parts.add(_formatTag(f.tag));
      //   }
      //
      //
      //   if (f.titleHi.isNotEmpty) {
      //     parts.add("🪔 ${f.titleHi}");
      //   } else if (f.titleEn.isNotEmpty) {
      //     parts.add("🪔 ${f.titleEn}");
      //   }
      // }
    }

    final title = parts.join("  •  ");
    final subTitle = _formatDate(selectedDay!);

    return _brownBar(title, subTitle);
  }

  Widget _brownBar(String title, String subTitle) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF7A3E00),
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
              fontWeight: FontWeight.w600,
            ),
          ),
          if (subTitle.isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(
              subTitle,
              style: const TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
        ],
      ),
    );
  }

  // ================= CALENDAR =================

  Widget _buildCalendar() {
    return TableCalendar(
      firstDay: DateTime(1984, 1, 1),
      lastDay: DateTime(2100, 12, 31),
      focusedDay: focusedDay,
      headerVisible: false,
      calendarFormat: CalendarFormat.month,
      rowHeight: 64,
      availableGestures: AvailableGestures.horizontalSwipe,

      onPageChanged: (newFocusedDay) {
        setState(() {
          focusedDay = newFocusedDay;

          BlocProvider.of<MobileHomeBloc>(context).add(
            MobileHomeEvent.getCalendarEvent(
              month: newFocusedDay.month,
              year: newFocusedDay.year,
            ),
          );
        });
      },
      daysOfWeekHeight: 25,
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: TextStyle(
          color: Colors.black,
          fontFamily: AppFont.gilroySemiBold,
        ),
        weekendStyle: TextStyle(
          color: Colors.black,
          fontFamily: AppFont.gilroySemiBold,
        ),
      ),
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
        outsideBuilder: (_, day, __) => _buildDayCelll(day),
      ),
    );
  }

  bool _hasTag(CalendarDayModel? data) {
    if (data == null) return false;

    for (final f in data.festivals) {
      // if (f.tag.trim().isNotEmpty) {
      //   return true;
      // }
    }
    return false;
  }

  // ================= DAY CELL =================

  Widget _buildDayCelll(
    DateTime day, {
    bool selected = false,
    bool today = false,
  }) {
    final data = _cachedMap[_normalize(day)];

    return Column(
      children: [
        Container(
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
              fontWeight: FontWeight.w600,
              color: selected ? Colors.white : Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_hasTag(data))
              const Padding(
                padding: EdgeInsets.only(right: 2),
                child: Text("🏷️", style: TextStyle(fontSize: 12)),
              ),

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

  Widget _buildDayCell1(
    DateTime day, {
    bool selected = false,
    bool today = false,
  }) {
    final now = DateTime.now();
    final todayDate = DateTime(now.year, now.month, now.day);

    final isPastDay = day.isBefore(todayDate);

    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: selected
            ? AppColor.newsecondaruy
            : today
            ? AppColor.newsecondaruy.withOpacity(0.2)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        "${day.day}",
        style: TextStyle(
          fontSize: 12,
          fontFamily: AppFont.gilroyBold,
          color: isPastDay
              ? Colors
                    .grey
                    .shade400 // past dates light
              : Colors.black,
        ),
      ),
    );
  }

  Widget _buildDayCell(
    DateTime day, {
    bool selected = false,
    bool today = false,
  }) {
    final data = _cachedMap[_normalize(day)];
    final now = DateTime.now();
    final todayDate = DateTime(now.year, now.month, now.day);

    final isPastDay = day.isBefore(todayDate);
    return Column(
      children: [
        Container(
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
              fontWeight: FontWeight.w600,
              color: isPastDay
                  ? selected
                        ? Colors.white
                        : Colors
                              .black54 // past dates light
                  : selected
                  ? Colors.white
                  : Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_hasTag(data))
              const Padding(
                padding: EdgeInsets.only(right: 2),
                child: Text("🌺", style: TextStyle(fontSize: 10)),
              ),
            if (data?.festivals.isNotEmpty == true)
              Text("🪔", style: TextStyle(fontSize: 10)),
            if (data?.isGrahan == true)
              const Padding(
                padding: EdgeInsets.only(left: 2),
                child: Text("🌞", style: TextStyle(fontSize: 10)),
              ),
            if (data?.isAmavasya == true)
              const Padding(
                padding: EdgeInsets.only(left: 2),
                child: Text("🌑", style: TextStyle(fontSize: 10)),
              ),
            if (data?.isPurnima == true)
              const Padding(
                padding: EdgeInsets.only(left: 2),
                child: Text("🌕", style: TextStyle(fontSize: 10)),
              ),
          ],
        ),
      ],
    );
  }

  ///================= DATA MAPPER =================

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
      // print("Month: ${newFocusedDay.month}  Year: ${newFocusedDay.year}");
      BlocProvider.of<MobileHomeBloc>(context).add(
        MobileHomeEvent.getCalendarEvent(
          month: focusedDay.month,
          year: focusedDay.year,
        ),
      );
    });

    // BlocProvider.of<MobileHomeBloc>(context).add(
    //   MobileHomeEvent.getCalendarEvent(
    //     month: newDate.month,
    //     year: newDate.year,
    //   ),
    // );
  }

  void _goToNextMonth() {
    final newDate = DateTime(focusedDay.year, focusedDay.month + 1, 1);

    if (newDate.year > _currentYear) return;

    setState(() {
      focusedDay = newDate;
      BlocProvider.of<MobileHomeBloc>(context).add(
        MobileHomeEvent.getCalendarEvent(
          month: newDate.month,
          year: newDate.year,
        ),
      );
    });
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
        spacing: 2,
        children: [
          Text(
            icon,
            style: TextStyle(fontSize: 14, fontFamily: AppFont.gilroyMedium),
          ),
          // const SizedBox(width: 4),
          // const SizedBox(width: 4),
          Text(
            text,
            style: TextStyle(fontSize: 10, fontFamily: AppFont.gilroyMedium),
          ),
        ],
      );
    }

    return Column(
      spacing: 3,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            item("🌞", "Grahan"),
            item("🌑", "Amavasya"),
            item("🌕", "Purnima"),
            item("🪔", "Festivals"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [item("🌺", "Navratri")],
        ),
      ],
    );
  }
}

class PanchangMonthCalendarMedium extends StatefulWidget {
  final CalendarResponse calendarResponse;

  const PanchangMonthCalendarMedium({
    super.key,
    required this.calendarResponse,
  });

  @override
  State<PanchangMonthCalendarMedium> createState() =>
      _PanchangMonthCalendarStateMedium();
}

class _PanchangMonthCalendarStateMedium
    extends State<PanchangMonthCalendarMedium> {
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;

  late Map<DateTime, CalendarDayModel> _cachedMap;

  final int _currentYear = DateTime.now().year;

  // ================= INIT =================

  @override
  void initState() {
    super.initState();
    _cachedMap = _buildPanchangMapFromEvents();
  }

  @override
  void didUpdateWidget(covariant PanchangMonthCalendarMedium oldWidget) {
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
      child: Container(
        margin: const EdgeInsets.all(16),
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
            const SizedBox(height: 10),
            _buildCalendar(),
            const SizedBox(height: 18),
            _buildLegend(),
          ],
        ),
      ),
    );
  }

  // ================= HEADER =================

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: _goToPreviousMonth,
          child: const Icon(Icons.chevron_left, size: 28),
        ),
        Text(
          "${_monthName(focusedDay.month)} ${focusedDay.year}",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: _goToNextMonth,
          child: const Icon(Icons.chevron_right, size: 28),
        ),
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

    // // 1️⃣ TITHI – always show
    // if (data.tithiHi.isNotEmpty) {
    //   parts.add("🗓" + data.tithiHi);
    // } else if (data.tithiEn.isNotEmpty) {
    //   parts.add("🗓" + data.tithiEn);
    // }

    // 2️⃣ Purnima / Amavasya / Grahan
    if (data.isPurnima) parts.add("🌕 पूर्णिमा");
    if (data.isAmavasya) parts.add("🌑 अमावस्या");
    if (data.isGrahan) parts.add("🌞 ग्रहण");

    // 3️⃣ Festivals
    if (data.festivals.isNotEmpty) {
      // for (final f in data.festivals) {
      //   if (f.titleHi.isNotEmpty) {
      //     parts.add("🪔 ${f.titleHi}");
      //   } else if (f.titleEn.isNotEmpty) {
      //     parts.add("🪔 ${f.titleEn}");
      //   }
      // }
    }

    final title = parts.join("  •  ");
    final subTitle = _formatDate(selectedDay!);

    return _brownBar(title, subTitle);
  }

  Widget _brownBar(String title, String subTitle) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF7A3E00),
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
              fontWeight: FontWeight.w600,
            ),
          ),
          if (subTitle.isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(
              subTitle,
              style: const TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
        ],
      ),
    );
  }

  // ================= CALENDAR =================

  Widget _buildCalendar() {
    return TableCalendar(
      firstDay: DateTime(1984, 1, 1),
      lastDay: DateTime(2100, 12, 31),
      focusedDay: focusedDay,
      headerVisible: false,
      calendarFormat: CalendarFormat.month,
      rowHeight: 64,

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
              fontWeight: FontWeight.w600,
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
          Text(text),
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
