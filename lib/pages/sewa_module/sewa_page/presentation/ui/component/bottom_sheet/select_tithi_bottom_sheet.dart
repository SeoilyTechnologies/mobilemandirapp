import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';

import '../../../bloc/seva_page_bloc.dart';
import '../../../bloc/seva_page_event.dart';
import '../../../bloc/seva_page_state.dart';

class SelectTithiBottomSheet extends StatelessWidget {
  const SelectTithiBottomSheet({super.key});

  static const List<String> _tithis = [
    'Ekadashi',
    'Purnima',
    'Amavasya',
    'Pradosh',
    'Sankashti Chaturthi',
    'Shivratri',
  ];

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (modalContext) {
        return BlocProvider.value(
          value: context.read<SevaPageBloc>(),
          child: const SelectTithiBottomSheet(),
        );
      },
    ).then((_) {
      if (context.mounted) {
        final bloc = context.read<SevaPageBloc>();
        if (bloc.state.selectedTithis.isNotEmpty) {
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
                    context.l10n.selectTithi,
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

            /// TITHIS LIST WITH CHECKBOXES (DYNAMIC FROM API)
            Flexible(
              child: BlocBuilder<SevaPageBloc, SevaPageState>(
                builder: (context, state) {
                  final apiTithis = state.sewaPageApiResponse.data.tithis;

                  if (apiTithis.isEmpty) {
                    return ListView.separated(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: _tithis.length,
                      separatorBuilder: (context, index) => const Divider(
                        height: 1,
                        thickness: 0.8,
                        color: Color(0xFFE8E8E8),
                      ),
                      itemBuilder: (context, index) {
                        final tithi = _tithis[index];
                        final isSelected = state.selectedTithis.contains(tithi);

                        return InkWell(
                          onTap: () {
                            context.read<SevaPageBloc>().add(
                              ToggleTithi(tithi: tithi),
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
                                  tithi,
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
                  }

                  return ListView.separated(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: apiTithis.length,
                    separatorBuilder: (context, index) => const Divider(
                      height: 1,
                      thickness: 0.8,
                      color: Color(0xFFE8E8E8),
                    ),
                    itemBuilder: (context, index) {
                      final item = apiTithis[index];
                      final displayName = isHindi && item.nameHi.isNotEmpty
                          ? item.nameHi
                          : (item.nameEn.isNotEmpty
                              ? item.nameEn
                              : (item.name.isNotEmpty ? item.name : item.nameEn));

                      final tithiId = item.id.isNotEmpty
                          ? item.id
                          : (item.code.isNotEmpty ? item.code : item.name);

                      final isSelected = state.selectedTithis.contains(tithiId) ||
                          state.selectedTithis.contains(item.id) ||
                          state.selectedTithis.contains(item.code) ||
                          state.selectedTithis.contains(item.name) ||
                          state.selectedTithis.contains(displayName);

                      return InkWell(
                        onTap: () {
                          context.read<SevaPageBloc>().add(
                            ToggleTithi(tithi: tithiId),
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
