import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/utils/seva_date_helper.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/pages/language/bloc/language_bloc.dart';
import 'package:mandirapp/pages/seva_history/data/entity/seva_subscription_detail_response.dart';
import 'package:mandirapp/pages/sewa_module/seva_status/bloc/seva_status_bloc.dart';
import 'package:mandirapp/pages/sewa_module/seva_status/bloc/seva_status_event.dart';

class SubscriptionScheduleCard extends StatefulWidget {
  final List<SubscriptionOccurrenceItem> occurrences;

  const SubscriptionScheduleCard({
    super.key,
    required this.occurrences,
  });

  @override
  State<SubscriptionScheduleCard> createState() => _SubscriptionScheduleCardState();
}

class _SubscriptionScheduleCardState extends State<SubscriptionScheduleCard> {
  bool _isExpanded = false;

  static const int _initialDisplayCount = 5;

  String _formatOccurrenceDate(String rawDate, {bool isHindi = false}) {
    if (rawDate.trim().isEmpty) {
      return isHindi ? 'बुध, 26 अगस्त 2026' : 'Wed, 26 Aug 2026';
    }
    return SevaDateHelper.formatOccurrenceDate(rawDate, isHindi: isHindi);
  }

  void _onItemTap(BuildContext context, String targetId) {
    if (targetId.isNotEmpty) {
      final statusBloc = BlocProvider.of<SevaStatusBloc>(context);
      statusBloc.reset();
      statusBloc.add(GetStatus(id: targetId));
      Navigator.pushNamed(
        context,
        AppRoutes.SEWA_STATUS_PAGE,
        arguments: {
          'orderId': targetId,
          'id': targetId,
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    context.watch<LanguageBloc>();
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final allItems = widget.occurrences;
    final displayItems = _isExpanded
        ? allItems
        : allItems.take(_initialDisplayCount).toList();

    return Container(
      width: 0.9253 * screenWidth,
      margin: EdgeInsets.symmetric(horizontal: 0.04 * screenWidth),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0.0133 * screenWidth),
        boxShadow: const [
          BoxShadow(
            color: Color(0x3F9E9E9E),
            blurRadius: 15,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 0.0347 * screenWidth,
        vertical: 0.0197 * screenHeight,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header: Icon + Title "Seva Schedule"
          Row(
            children: [
              SvgPicture.asset(
                'assets/new_design/icon/calendar_12326637 1.svg',
                width: 0.0507 * screenWidth,
                height: 0.0507 * screenWidth,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 0.024 * screenWidth),
              Text(
                context.l10n.sevaSchedule,
                style: AppTextStyle.gilroyBold(
                  0.0373 * screenWidth,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 0.0172 * screenHeight),

          /// Occurrences List with Timeline
          if (allItems.isEmpty)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0.0246 * screenHeight),
              child: Center(
                child: Text(
                  context.l10n.noScheduleAvailable,
                  style: AppTextStyle.gilroyMedium(
                    0.032 * screenWidth,
                    color: Colors.grey,
                  ),
                ),
              ),
            )
          else
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: displayItems.length,
              itemBuilder: (context, index) {
                final item = displayItems[index];
                final isLast = index == displayItems.length - 1;
                return _buildScheduleItemRow(
                  item: item,
                  isLast: isLast,
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                );
              },
            ),

          /// View Full Schedule / View Less Button
          if (allItems.length > _initialDisplayCount) ...[
            SizedBox(height: 0.0148 * screenHeight),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Container(
                width: double.infinity,
                height: 0.0517 * screenHeight,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0.0133 * screenWidth),
                  border: Border.all(
                    width: 1.30,
                    color: const Color(0xFF793C01),
                  ),
                ),
                child: Text(
                  _isExpanded ? context.l10n.viewLessSchedule : context.l10n.viewFullSchedule,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.gilroyMedium(
                    0.0427 * screenWidth,
                    color: const Color(0xFF793C01),
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildScheduleItemRow({
    required SubscriptionOccurrenceItem item,
    required bool isLast,
    required double screenWidth,
    required double screenHeight,
  }) {
    final status = item.status.toLowerCase().trim();

    final String targetId = (item.sevaRequestId != null && item.sevaRequestId!.trim().isNotEmpty)
        ? item.sevaRequestId!.trim()
        : item.id.trim();

    // Upcoming pe click nahi hoga, baki sab pe click hoga
    final bool isUpcoming = status == 'upcoming' || status == 'scheduled';
    final bool isClickable = !isUpcoming && targetId.isNotEmpty;

    final Color statusTextColor;
    final Color statusBgColor;
    final Color boxBgColor;
    final Color borderColor;
    final String statusLabel;
    final String iconPath;

    if (status == 'done' || status == 'completed' || status == 'success') {
      // Done -> Green
      statusTextColor = const Color(0xFF0A9F00);
      statusBgColor = const Color(0xFFBCFFB7);
      boxBgColor = const Color(0xFFF4FFE4);
      borderColor = const Color(0xFF0A9F00);
      statusLabel = context.l10n.completed;
      iconPath = 'assets/new_design/icon/gren_tick.png';
    } else if (status == 'assigned') {
      // Assigned -> NOT green, Brown / cream (Pending)
      statusTextColor = const Color(0xFF793C01);
      statusBgColor = const Color(0xFFFFEAD6);
      boxBgColor = const Color(0xFFFFF8F0);
      borderColor = const Color(0xFF793C01);
      statusLabel = context.l10n.pending;
      iconPath = 'assets/new_design/icon/coming_day_icon.png';
    } else if (status == 'missed' || status == 'cancelled' || status == 'failed') {
      // Missed / Cancelled -> Red / pink
      statusTextColor = const Color(0xFFB50000);
      statusBgColor = const Color(0xFFFFD8D8);
      boxBgColor = const Color(0xFFFFF1F1);
      borderColor = const Color(0xFFB50000);
      statusLabel = context.l10n.cancelled;
      iconPath = 'assets/new_design/icon/red_cross.png';
    } else {
      // Upcoming / Scheduled (baaki sab) -> Yellow (Upcoming pe click nahi hoga)
      statusTextColor = const Color(0xFFD79E0C);
      statusBgColor = const Color(0xFFFFE9B3);
      boxBgColor = const Color(0xFFFFF5DE);
      borderColor = const Color(0xFFD69D0B);
      statusLabel = context.l10n.upcoming;
      iconPath = 'assets/new_design/icon/coming_day_icon.png';
    }

    final isHindi = Localizations.localeOf(context).languageCode == 'hi';
    final dateText = _formatOccurrenceDate(item.date, isHindi: isHindi);

    final rowContent = IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Left column: Circular status icon + vertical connecting line
          Column(
            children: [
              Container(
                width: 0.0747 * screenWidth,
                height: 0.0747 * screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 0.70,
                    color: borderColor,
                  ),
                ),
                alignment: Alignment.center,
                child: Image.asset(
                  iconPath,
                  width: 0.0453 * screenWidth,
                  height: 0.0453 * screenWidth,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => Icon(
                    status == 'done' || status == 'completed' || status == 'success'
                        ? Icons.check
                        : (status == 'missed' || status == 'cancelled' || status == 'failed'
                            ? Icons.close
                            : Icons.access_time),
                    size: 0.04 * screenWidth,
                    color: statusTextColor,
                  ),
                ),
              ),
              if (!isLast)
                Expanded(
                  child: Container(
                    width: 1.2,
                    color: const Color(0xFF793C01),
                  ),
                ),
            ],
          ),
          SizedBox(width: 0.0187 * screenWidth),

          /// Right box: Date text + Status pill badge + (optional Arrow if clickable)
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: isLast ? 0 : 0.0209 * screenHeight),
              height: 0.0345 * screenHeight,
              padding: EdgeInsets.symmetric(horizontal: 0.0293 * screenWidth),
              decoration: BoxDecoration(
                color: boxBgColor,
                borderRadius: BorderRadius.circular(0.0133 * screenWidth),
                border: Border.all(
                  width: 0.70,
                  color: borderColor,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dateText,
                    style: AppTextStyle.gilroyMedium(
                      0.032 * screenWidth,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 0.1573 * screenWidth,
                        height: 0.0204 * screenHeight,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: statusBgColor,
                          borderRadius: BorderRadius.circular(0.0221 * screenWidth),
                        ),
                        child: Text(
                          statusLabel,
                          textAlign: TextAlign.center,
                          style: AppTextStyle.gilroyMedium(
                            0.0246 * screenWidth,
                            color: statusTextColor,
                          ),
                        ),
                      ),
                      if (isClickable) ...[
                        SizedBox(width: 0.0107 * screenWidth),
                        Icon(
                          Icons.chevron_right,
                          size: 0.0373 * screenWidth,
                          color: statusTextColor,
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    if (isClickable) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => _onItemTap(context, targetId),
        child: rowContent,
      );
    }
    return rowContent;
  }
}
