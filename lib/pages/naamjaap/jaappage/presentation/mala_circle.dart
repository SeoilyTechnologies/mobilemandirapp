
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'dart:math';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../common/component/app_text_style.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/values/app_color.dart';
import 'bloc/jaap_page_bloc.dart';
import 'bloc/jaap_page_state.dart';

class MalaCircle extends StatelessWidget {
  final int total;
  final int current;

  const MalaCircle({super.key, required this.total, required this.current});

  @override
  Widget build(BuildContext context) {
    if (total == 0) return const SizedBox.shrink();

    final double radius = _radiusFor(total);
    final double beadRadius = _beadSizeFor(total);

    return BlocConsumer<JaapPageBloc, JaapPageState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SizedBox(
          width: radius * 2 + 20,
          height: radius * 2 + 20,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              ...List.generate(total, (index) {
                final angle = (2 * pi / total) * index - pi / 2;
                final isActive = index < current;

                return Transform.translate(
                  offset: Offset(radius * cos(angle), radius * sin(angle)),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 150),
                    width: beadRadius * 2,
                    height: beadRadius * (total == 108 ? 1 : 2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isActive
                          ? AppColor.newsecondaruy
                          : Colors.brown.shade300,
                    ),
                  ),
                );
              }),
              Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "${state.currentCount}/${state.totalCount}",
                      style: AppTextStyle.gilroyBold(
                        22,
                      ).copyWith(color: AppColor.newsecondaruy),
                    ),
                    Text(
                      context.l10n.tapOnScreen,
                      style: AppTextStyle.gilroyMedium(
                        14,
                      ).copyWith(color: AppColor.newsecondaruy),
                    ),
                  ],
                ),
              ),

              /// Mala head
              Positioned(
                top: -20,
                child: Image.asset(
                  "assets/new_design/icon/mala_judi.png",
                  width: 32,
                  height: 32,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // ================= TUNED VALUES =================

  double _radiusFor(int total) {
    if (total <= 21) return 85;
    if (total <= 31) return 100;
    if (total <= 51) return 125;
    return 165; // 🔥 bigger circle for 108
  }

  double _beadSizeFor(int total) {
    if (total <= 21) return 7;
    if (total <= 31) return 6.5;
    if (total <= 51) return 6;
    return 5.5; // 🔥 minimum readable size
  }
}

class MalaCircleMedium extends StatelessWidget {
  final int total;
  final int current;

  const MalaCircleMedium({
    super.key,
    required this.total,
    required this.current,
  });

  @override
  Widget build(BuildContext context) {
    if (total == 0) return const SizedBox.shrink();

    final screenWidth = MediaQuery.of(context).size.width;

    /// 🔥 tablet scale factor
    final scale = screenWidth / 800; // 800 = base tablet width

    final double radius = _radiusFor(total) * scale;
    final double beadRadius = _beadSizeFor(total) * scale;

    return SizedBox(
      width: radius * 2 + 80,
      height: radius * 2 + 80,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ...List.generate(total, (index) {
            final angle = (2 * pi / total) * index - pi / 2;
            final isActive = index < current;

            return Transform.translate(
              offset: Offset(radius * cos(angle), radius * sin(angle)),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                width: beadRadius * 2,
                height: beadRadius * 2,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isActive
                      ? AppColor.newsecondaruy
                      : Colors.brown.shade300,
                ),
              ),
            );
          }),

          /// 🔢 center count
          Text(
            "$current/$total",
            style: AppTextStyle.gilroyBold(
              28 * scale,
            ).copyWith(color: AppColor.newsecondaruy),
          ),

          /// 🧿 Mala head
          Positioned(
            top: 4,
            child: Image.asset(
              "assets/new_design/icon/mala_judi.png",
              width: 40 * scale,
              height: 40 * scale,
            ),
          ),
        ],
      ),
    );
  }

  // ================= TABLET VALUES =================

  double _radiusFor(int total) {
    if (total <= 21) return 120;
    if (total <= 31) return 140;
    if (total <= 51) return 170;
    return 210; // 108
  }

  double _beadSizeFor(int total) {
    if (total <= 21) return 10;
    if (total <= 31) return 9;
    if (total <= 51) return 8.5;
    return 8;
  }
}

class MalaCircleForGodPage extends StatelessWidget {
  final int total;
  final int current;
  final String godName;

  const MalaCircleForGodPage({
    super.key,
    required this.total,
    required this.current,
    required this.godName,
  });

  @override
  Widget build(BuildContext context) {
    if (total == 0) return const SizedBox.shrink();

    final double radius = _radiusFor(total);
    final double beadRadius = _beadSizeFor(total);

    return BlocConsumer<JaapPageBloc, JaapPageState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SizedBox(
          width: radius * 2 + 20,
          height: radius * 2 + 20,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              ...List.generate(total, (index) {
                final angle = (2 * pi / total) * index - pi / 2;
                final isActive = index < current;

                return Transform.translate(
                  offset: Offset(radius * cos(angle), radius * sin(angle)),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 150),
                    width: beadRadius * 4,
                    height: beadRadius * (total == 108 ? 1 : 3.3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isActive
                          ? AppColor.newsecondaruy
                          : AppColor.pinkBackground,
                    ),
                  ),
                );
              }),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: Text(
                          "$godName",
                          textAlign: TextAlign.center,
                          style: AppTextStyle.gilroyBold(
                            22,
                          ).copyWith(color: AppColor.newsecondaruy),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /// Mala head
              Positioned(
                top: -26,
                child: Image.asset(
                  "assets/new_design/icon/mala_judi.png",
                  width: 32,
                  height: 32,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // ================= TUNED VALUES =================

  double _radiusFor(int total) {
    if (total <= 21) return 85;
    if (total <= 31) return 100;
    if (total <= 51) return 125;
    return 165; // 🔥 bigger circle for 108
  }

  double _beadSizeFor(int total) {
    if (total <= 21) return 7;
    if (total <= 31) return 6.5;
    if (total <= 51) return 6;
    return 5.5; // 🔥 minimum readable size
  }
}
