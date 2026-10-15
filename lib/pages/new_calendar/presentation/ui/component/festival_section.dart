import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';

import '../../../../mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../../../mobile_mandir_home/presentation/bloc/mobile_home_state.dart';
import 'mooon_phase_weidget.dart';

class FestivalSection extends StatelessWidget {
  const FestivalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MobileHomeBloc, MobileHomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        /// Flatten festival list
        final List<FestivalItem> festivalList = [];

        for (final day in state.calendarResponse.data) {
          if (day.festivals.isNotEmpty) {
            for (final festival in day.festivals) {
              festivalList.add(
                FestivalItem(
                  festival: festival,
                  date: day.date,
                  tithi: day.tithi,
                  moonPhase: day.moonPhase!,
                  moonPhasePercent: day.moonPhasePercent
                ),
              );
            }
          }
        }

        if (festivalList.isEmpty) {
          return Center(child: Text(context.l10n.noFestivalsFound));
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text("🎉", style: TextStyle(fontSize: 18)),
                const SizedBox(width: 6),
                Text(
                  context.l10n.currentMonthFestivals,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.048,
                    color: AppColor.fullBlack,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 18),

            ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: festivalList.length,
              itemBuilder: (context, index) {
                final item = festivalList[index];

                return festivalCard(
                  item,
                  context: context,
                  title: item.festival,
                  subtitle: formatDate(item.date, context),
                  badge: item.tithi,
                  dayLabel: getDayLabel(context, item.date),

                );
              },
            ),
          ],
        );
      },
    );
  }

  static String formatDate(String date, BuildContext context) {
    final dateTime = DateTime.parse(date).toLocal();

    return DateFormat(
      "dd MMMM yyyy • EEEE",
      Localizations.localeOf(context).languageCode,
    ).format(dateTime);
  }

  static String getDayLabel(BuildContext context, String date) {
    final target = DateTime.parse(date).toLocal();

    final now = DateTime.now();

    final today = DateTime(
      now.year,
      now.month,
      now.day,
    );

    final targetDate = DateTime(
      target.year,
      target.month,
      target.day,
    );

    final diff = targetDate.difference(today).inDays;

    if (diff == 0) return context.l10n.today;
    if (diff == 1) return context.l10n.tomorrow;
    if (diff == -1) return context.l10n.yesterday;
    if (diff > 1) return "$diff ${context.l10n.daysLater}";

    return "${diff.abs()} ${context.l10n.daysAgo}";
  }
  static Widget festivalCard(FestivalItem item, {
    required String title,
    required String subtitle,
    required String badge,
    required String dayLabel,
    required BuildContext context,

  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          image: AssetImage(
            "assets/new_design/background/current_month_fes_background.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              color: const Color(0xFFFBE5E2),
              borderRadius: BorderRadius.circular(12),
            ),
            // child: MoonPhaseWidget(
            //   percent:item.moonPhasePercent.toDouble(),
            // ),
            child: MoonPhaseWidget(
              illumination: item.moonPhasePercent.toDouble(),
              phase: item.moonPhase.toDouble(),
              size: 44,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyle.gilroyBold(context.screenWidth * 0.037),
                ),
                const SizedBox(height: 6),
                Text(
                  subtitle,
                  style: AppTextStyle.gilroySemiBold(
                    context.screenWidth * 0.033,
                    color: AppColor.newsecondaruy,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFC8922A).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  dayLabel,
                  style: AppTextStyle.gilroyMedium(
                    context.screenWidth * 0.026,
                    color: AppColor.newsecondaruy,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A6B3A).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  badge,
                  style: AppTextStyle.gilroyMedium(
                    context.screenWidth * 0.026,
                    color: AppColor.newsecondaruycc,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FestivalItem {
  final String festival;
  final String date;
  final String tithi;
  final int moonPhasePercent;
  final double moonPhase;

  FestivalItem({
    required this.festival,
    required this.date,
    required this.tithi,
    required this.moonPhasePercent,
    required this.moonPhase
  });
}


// class MoonPhaseWidget extends StatelessWidget {
//   final double percent;
//
//   const MoonPhaseWidget({
//     super.key,
//     required this.percent,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       size: const Size(60, 60),
//       painter: MoonPainter(percent),
//     );
//   }
// }
//
// class MoonPainter extends CustomPainter {
//   final double percent;
//
//   MoonPainter(this.percent);
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final center = Offset(size.width / 2, size.height / 2);
//
//     final radius = size.width / 2;
//
//     /// White Moon
//     canvas.drawCircle(
//       center,
//       radius,
//       Paint()..color = Colors.white,
//     );
//
//     /// Shadow
//     final shadowPaint = Paint()..color = Colors.black;
//
//     double p = percent.clamp(0, 100);
//
//     double shadowWidth = size.width * (1 - p / 100);
//
//     Rect rect = Rect.fromLTWH(
//       0,
//       0,
//       shadowWidth,
//       size.height,
//     );
//
//     canvas.drawOval(rect, shadowPaint);
//
//     /// Border
//     canvas.drawCircle(
//       center,
//       radius,
//       Paint()
//         ..style = PaintingStyle.stroke
//         ..strokeWidth = 1
//         ..color = Colors.grey,
//     );
//   }
//
//   @override
//   bool shouldRepaint(covariant MoonPainter oldDelegate) {
//     return oldDelegate.percent != percent;
//   }
// }