import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/fonts.dart';

import '../../../../../../common/component/search_bar.dart';
import '../../../../../../common/routes/exports.dart';
import '../../../../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../bloc/jaap_bloc.dart';
import '../../bloc/jaap_event.dart';
import '../../bloc/jaap_state.dart';

class SearchGodField extends StatelessWidget {
  const SearchGodField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JaapBloc, JaapState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return       Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 10,
            bottom: 22,
          ),

      child:    Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 0,
              bottom: 0,
            ),
            child: SearchBarWidgett(
              hintText: context.l10n.searchMantra,
              onChanged: (value) {
                context.read<JaapBloc>().add(
                JaapEvent.getGodData(searchQuery: value),
              );
              },
            ),
          ),
        );

      },
    );
  }
}

class SearchGodFieldMedium extends StatelessWidget {
  const SearchGodFieldMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JaapBloc, JaapState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 12,
            bottom: 24,
          ),
          child: SearchBarWidgett(
            hintText: context.l10n.searchMantra,
            onChanged: (value) {
              context.read<JaapBloc>().add(
                JaapEvent.getGodData(
                  searchQuery: value,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
// class SearchGodFieldMedium extends StatelessWidget {
//   const SearchGodFieldMedium({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<JaapBloc, JaapState>(
//       listener: (context, state) {
//         // TODO: implement listener
//       },
//       builder: (context, state) {
//         return Padding(
//           padding: EdgeInsets.all(12),
//           child: Container(
//             width: double.infinity,
//             height: 62,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               border: Border.all(color: Colors.white),
//             ),
//             child: TextField(
//               onChanged: (value) {
//                 context.read<JaapBloc>().add(
//                   JaapEvent.getGodData(searchQuery: value),
//                 );
//                 if (value.isEmpty) {
//                   BlocProvider.of<JaapBloc>(
//                     context,
//                   ).add(JaapEvent.getMantra(""));
//                 }
//               },
//               style: TextStyle(
//                 color: Colors.black,
//                 fontFamily: AppFont.gilroyMedium,
//                 fontSize: 22,
//               ),
//               decoration: InputDecoration(
//                 hintStyle: AppTextStyle.gilroyMedium(
//                   14,
//                   color: AppColor.appBlack,
//                 ),
//                 isDense: true,
//                 contentPadding: EdgeInsets.only(top: 12),
//                 hintText: context.l10n.searchGod,
//                 prefixIcon: const Icon(Icons.search, size: 32),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(2),
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
