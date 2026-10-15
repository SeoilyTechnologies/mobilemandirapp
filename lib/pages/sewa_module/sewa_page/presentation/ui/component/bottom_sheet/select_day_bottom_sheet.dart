import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';

import '../../../bloc/seva_page_bloc.dart';
import '../../../bloc/seva_page_event.dart';
import '../../../bloc/seva_page_state.dart';

class DayItem {
  final String code; // 'mon', 'tue', etc.
  final String displayEn; // 'Monday', 'Tuesday', etc.
  final String displayHi; // 'सोमवार', 'मंगलवार', etc.

  const DayItem({
    required this.code,
    required this.displayEn,
    required this.displayHi,
  });
}

class SelectDayBottomSheet extends StatelessWidget {
  const SelectDayBottomSheet({super.key});

  static const List<DayItem> _days = [
    DayItem(code: 'mon', displayEn: 'Monday', displayHi: 'सोमवार'),
    DayItem(code: 'tue', displayEn: 'Tuesday', displayHi: 'मंगलवार'),
    DayItem(code: 'wed', displayEn: 'Wednesday', displayHi: 'बुधवार'),
    DayItem(code: 'thu', displayEn: 'Thursday', displayHi: 'गुरुवार'),
    DayItem(code: 'fri', displayEn: 'Friday', displayHi: 'शुक्रवार'),
    DayItem(code: 'sat', displayEn: 'Saturday', displayHi: 'शनिवार'),
    DayItem(code: 'sun', displayEn: 'Sunday', displayHi: 'रविवार'),
  ];

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (modalContext) {
        return BlocProvider.value(
          value: context.read<SevaPageBloc>(),
          child: const SelectDayBottomSheet(),
        );
      },
    ).then((_) {
      if (context.mounted) {
        final bloc = context.read<SevaPageBloc>();
        if (bloc.state.selectedDays.isNotEmpty) {
          bloc.add(const FetchSchedulePreview());
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final isHindi = Localizations.localeOf(context).languageCode == 'hi';

    return Container(
      constraints: BoxConstraints(
        maxHeight: context.screenHeight * 0.7,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// BROWN HEADER
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: const BoxDecoration(
                color: Color(0xFF793C01),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.l10n.selectDay,
                    style: AppTextStyle.gilroyBold(
                      context.screenWidth * 0.045,
                      color: AppColor.appWhiteColor,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        color: Colors.white24,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            /// DAYS LIST WITH CHECKBOXES
            Flexible(
              child: BlocBuilder<SevaPageBloc, SevaPageState>(
                builder: (context, state) {
                  return ListView.separated(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: _days.length,
                    separatorBuilder: (context, index) => const Divider(
                      height: 1,
                      thickness: 0.8,
                      color: Color(0xFFE8E8E8),
                    ),
                    itemBuilder: (context, index) {
                      final dayItem = _days[index];
                      final displayName = isHindi ? dayItem.displayHi : dayItem.displayEn;

                      final isSelected = state.selectedDays.any(
                        (d) => d.toLowerCase() == dayItem.code.toLowerCase() ||
                               d.toLowerCase() == dayItem.displayEn.toLowerCase(),
                      );

                      return InkWell(
                        onTap: () {
                          context.read<SevaPageBloc>().add(
                            ToggleDay(day: dayItem.code),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 14,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                displayName,
                                style: AppTextStyle.gilroyMedium(
                                  context.screenWidth * 0.04,
                                  color: AppColor.fullBlack,
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? const Color(0xFF793C01)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(
                                    color: isSelected
                                        ? const Color(0xFF793C01)
                                        : const Color(0xFF989898),
                                    width: 1.2,
                                  ),
                                ),
                                child: isSelected
                                    ? const Icon(
                                        Icons.check,
                                        size: 14,
                                        color: Colors.white,
                                      )
                                    : null,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
