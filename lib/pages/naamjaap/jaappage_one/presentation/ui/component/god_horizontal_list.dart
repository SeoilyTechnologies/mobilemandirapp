import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/common/network/app_constant.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/naamjaap/jaappage_one/presentation/bloc/jaap_event.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../../../common/component/app_text_style.dart';
import '../../../../../../common/component/skeleton_loader.dart';
import '../../../../../../common/routes/exports.dart';
import '../../bloc/jaap_bloc.dart';
import '../../bloc/jaap_state.dart';

class GodHorizontalList extends StatefulWidget {
  final bool fromNotification;

  const GodHorizontalList({super.key, this.fromNotification = false});

  @override
  State<GodHorizontalList> createState() => _GodHorizontalListState();
}

class _GodHorizontalListState extends State<GodHorizontalList> {
  final ItemScrollController _scrollController = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JaapBloc, JaapState>(
      listener: (context, state) {
        if (!widget.fromNotification) return;

        if (state.selectedGodId.isEmpty) return;

        final index = state.godResponse.data.gods.indexWhere(
          (e) => e.id == state.selectedGodId,
        );

        if (index == -1) return;

        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (_scrollController.isAttached) {
            _scrollController.scrollTo(
              index: index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          }
        });
      },
      builder: (context, state) {
        final gods = state.godResponse.data.gods;

        if (gods.isEmpty) {
          if (state.isLoading) {
            return const SkeletonHorizontalList();
          }
          return const SizedBox();
        }

        return SizedBox(
          height: 135,
          child: ScrollablePositionedList.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemScrollController: _scrollController,
            scrollDirection: Axis.horizontal,
            itemCount: gods.length,
            itemBuilder: (_, index) {
              final data = gods[index];

              final isSelected = state.selectedGodId.isEmpty
                  ? index == 0
                  : state.selectedGodId == data.id;

              return GestureDetector(
                onTap: () {
                  context.read<JaapBloc>().add(GetMantra(data.id));

                  context.read<JaapBloc>().add(
                    JaapEvent.selectMantra("", "", ""),
                  );
                },
                child: Container(
                  width: 100,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.orange.shade50 : Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: isSelected
                          ? AppColor.newsecondaruy
                          : Colors.transparent,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.network(
                          data.thumbnailUrl.isNotEmpty
                              ? AppConstant.fileBaseUrl + data.thumbnailUrl
                              : AppConstant.fileBaseUrl +
                                    "uploads/No_Image_Available.jpg",
                          height: 80,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        addNewLineAfterFirstWord(data.name),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: AppTextStyle.gilroySemiBold(
                          context.screenWidth * 0.034,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  String addNewLineAfterFirstWord(String text) {
    final words = text.split(' ');

    if (words.length > 1) {
      return "${words.first}\n${words.sublist(1).join(' ')}";
    }

    return text;
  }
}

class GodHorizontalListMedium extends StatefulWidget {
  final bool fromNotification;

  const GodHorizontalListMedium({super.key, this.fromNotification = false});

  @override
  State<GodHorizontalListMedium> createState() =>
      _GodHorizontalListMediumState();
}

class _GodHorizontalListMediumState extends State<GodHorizontalListMedium> {
  final ItemScrollController _scrollController = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    final fromNotification = args?["fromNotification"] ?? false;
    return BlocConsumer<JaapBloc, JaapState>(
      listener: (context, state) {
        if (!widget.fromNotification) return;

        if (state.selectedGodId.isEmpty) return;

        final index = state.godResponse.data.gods.indexWhere(
          (e) => e.id == state.selectedGodId,
        );

        if (index == -1) return;

        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (_scrollController.isAttached) {
            _scrollController.scrollTo(
              index: index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          }
        });
      },
      builder: (context, state) {
        final gods = state.godResponse.data.gods;

        if (gods.isEmpty) {
          return SizedBox(
            height: 180,
            child: Center(
              child: Text(
                context.l10n.noDataAvailable,
                style: AppTextStyle.gilroySemiBold(context.screenWidth * 0.025),
              ),
            ),
          );
        }

        return SizedBox(
          height: 180,
          child: ScrollablePositionedList.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemScrollController: _scrollController,
            scrollDirection: Axis.horizontal,
            itemCount: gods.length,
            itemBuilder: (_, index) {
              final data = gods[index];

              final isSelected = state.selectedGodId.isEmpty
                  ? index == 0
                  : state.selectedGodId == data.id;

              return GestureDetector(
                onTap: () {
                  context.read<JaapBloc>().add(GetMantra(data.id));

                  context.read<JaapBloc>().add(
                    const JaapEvent.selectMantra("", "", ""),
                  );
                },
                child: Container(
                  width: 130,
                  margin: const EdgeInsets.only(right: 14),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.orange.shade50 : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: isSelected
                          ? AppColor.newsecondaruy
                          : Colors.transparent,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          data.thumbnailUrl.isNotEmpty
                              ? AppConstant.fileBaseUrl + data.thumbnailUrl
                              : AppConstant.fileBaseUrl +
                                    "uploads/No_Image_Available.jpg",
                          height: 110,
                          width: 130,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        addNewLineAfterFirstWord(data.name),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: AppTextStyle.gilroySemiBold(
                          context.screenWidth * 0.022,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  String addNewLineAfterFirstWord(String text) {
    final words = text.split(' ');

    if (words.length > 1) {
      return "${words.first}\n${words.sublist(1).join(' ')}";
    }

    return text;
  }
}
