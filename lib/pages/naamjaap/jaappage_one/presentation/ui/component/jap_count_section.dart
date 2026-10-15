import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../../common/values/app_color.dart';
import '../../../../../../common/values/screenUtils.dart';
import '../../bloc/jaap_bloc.dart';
import '../../bloc/jaap_event.dart';
import '../../bloc/jaap_state.dart';

class JapCountSection extends StatelessWidget {
  const JapCountSection({super.key});

  @override
  Widget build(BuildContext context) {
    final counts = ["21", "31", "51", "108",];

    return BlocBuilder<JaapBloc, JaapState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.l10n.jaapCount,
                style: AppTextStyle.gilroyBold(
                  context.screenWidth * 0.042,
                ),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  ...counts.map(
                        (e) => _chip(
                      e,
                      context,
                      selected: state.selectedJapCount == e,
                      onTap: () {
                        context.read<JaapBloc>().add(
                          JaapEvent.selectJapCount(e),
                        );
                      },
                    ),
                  ),
                  // _chip(
                  //   "Custom No.",
                  //   context,
                  //   selected: state.selectedJapCount == "custom",
                  //   onTap: () {
                  //     context.read<JaapBloc>().add(
                  //       const JaapEvent.selectJapCount("custom"),
                  //     );
                  //   },
                  // ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _chip(
      String text,
      BuildContext context, {
        bool selected = false,
        VoidCallback? onTap,
      }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 8),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: selected ? AppColor.newsecondaruy : Colors.white,
          borderRadius: BorderRadius.circular(2),
          border: Border.all(
            color: selected ? AppColor.newsecondaruy : Colors.white,
          ),
        ),
        child: Text(
          text,
          style: selected
              ? AppTextStyle.gilroySemiBold(context.screenWidth*0.042)
              .copyWith(color: Colors.white)
              : AppTextStyle.gilroyMedium(
            context.screenWidth*0.042,
            color: AppColor.fullBlack,
          ),
        ),
      ),
    );
  }
}


class JapCountSectionMedium extends StatelessWidget {
  const JapCountSectionMedium({super.key});

  @override
  Widget build(BuildContext context) {
    final counts = ["21", "31", "51", "108"];

    return BlocBuilder<JaapBloc, JaapState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.l10n.jaapCount,
                style: AppTextStyle.gilroyBold(
                  context.screenWidth * 0.028,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  ...counts.map(
                        (e) => _chip(
                      e,
                      context,
                      selected: state.selectedJapCount == e,
                      onTap: () {
                        context.read<JaapBloc>().add(
                          JaapEvent.selectJapCount(e),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _chip(
      String text,
      BuildContext context, {
        bool selected = false,
        VoidCallback? onTap,
      }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: selected ? AppColor.newsecondaruy : Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: selected
                ? AppColor.newsecondaruy
                : Colors.white,
          ),
        ),
        child: Text(
          text,
          style: selected
              ? AppTextStyle.gilroySemiBold(
            context.screenWidth * 0.028,
          ).copyWith(
            color: Colors.white,
          )
              : AppTextStyle.gilroyMedium(
            context.screenWidth * 0.028,
            color: AppColor.fullBlack,
          ),
        ),
      ),
    );
  }
}

// class JapCountSectionMedium extends StatelessWidget {
//   const JapCountSectionMedium({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final counts = ["21", "31", "51", "108",];
//
//     return BlocBuilder<JaapBloc, JaapState>(
//       builder: (context, state) {
//         return Padding(
//           padding: EdgeInsets.symmetric(horizontal: 16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 context.l10n.jaapCount,
//                 style: AppTextStyle.gilroyBold(
//                   context.screenWidth * 0.042,
//                 ),
//               ),
//               SizedBox(height: 12),
//               Row(
//                 children: [
//                   ...counts.map(
//                         (e) => _chip(
//                       e,
//                       context,
//                       selected: state.selectedJapCount == e,
//                       onTap: () {
//                         context.read<JaapBloc>().add(
//                           JaapEvent.selectJapCount(e),
//                         );
//                       },
//                     ),
//                   ),
//
//                 ],
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//   Widget _chip(
//       String text,
//       BuildContext context, {
//         bool selected = false,
//         VoidCallback? onTap,
//       }) {
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//         width: 60,              // 👈 pehle 33 tha
//         height: 45,             // 👈 height add ki
//         alignment: Alignment.center,
//         margin: EdgeInsets.only(right: 12),
//         decoration: BoxDecoration(
//           color: selected ? AppColor.newsecondaruy : Colors.white,
//           borderRadius: BorderRadius.circular(6),  // thoda smooth
//           border: Border.all(
//             color: selected ? AppColor.newsecondaruy : Colors.grey.shade300,
//           ),
//         ),
//         child: Text(
//           text,
//           style: selected
//               ? AppTextStyle.gilroyMedium(22)
//               .copyWith(color: Colors.white)
//               : AppTextStyle.gilroyRegular(
//             22,
//             color: AppColor.fullBlack,
//           ),
//         ),
//       ),
//     );
//   }
// }
