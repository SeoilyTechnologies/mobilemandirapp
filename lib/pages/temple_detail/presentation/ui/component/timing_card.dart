import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import '../../../../../common/routes/exports.dart';
import '../../bloc/templ_detail_new/temple_detail_new_bloc.dart';
import '../../bloc/templ_detail_new/temple_detail_new_state.dart';
import 'timing_row.dart';

import 'package:flutter/material.dart';
import '../../../../../common/routes/exports.dart';
import '../../bloc/templ_detail_new/temple_detail_new_bloc.dart';
import '../../bloc/templ_detail_new/temple_detail_new_state.dart';
import 'timing_row.dart';

class TimingCard extends StatelessWidget {
  const TimingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TempleDetailNewBloc, TempleDetailNewState>(
      builder: (context, state) {
        final timings = state
            .templeDetailApiResponse
            .data
            .aartiAndTempleTiming;

        if (timings.isEmpty) {
          return const SizedBox.shrink();
        }

        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: const Color(0xFFE4D7C8),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.03),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(timings.length, (sectionIndex) {
                final section = timings[sectionIndex];

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      section.title,
                      style: AppTextStyle.gilroyBold(context.screenWidth*0.04,color: AppColor.fullBlack)
                    ),

                    const SizedBox(height: 14),

                    ...List.generate(section.rows.length, (rowIndex) {
                      final row = section.rows[rowIndex];

                      return Padding(
                        padding: EdgeInsets.only(
                          bottom:
                          rowIndex == section.rows.length - 1 ? 0 : 10,
                        ),
                        child: TimingRow(
                          title: row.title,
                          time: "${row.open} – ${row.close}",
                        ),
                      );
                    }),

                    if (sectionIndex != timings.length - 1) ...[
                      const SizedBox(height: 18),

                      const Divider(
                        color: Color(0xFFE5DED6),
                        thickness: 1,
                      ),

                      const SizedBox(height: 18),
                    ],
                  ],
                );
              }),
            ],
          ),
        );
      },
    );
  }
}