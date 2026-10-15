import 'dart:async';
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../common/component/skeleton_loader.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/global_search/presentation/ui/temple_grid_view.dart';

import '../../../../common/values/fonts.dart';
import '../../../aarti_chalisa_list/presentation/ui/component/mobile_mandir_appbar.dart';
import '../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../application/presentatioin/ui/voice_listening_dialog.dart';
import '../../../mobile_mandir_home/data/global_search/gloable_search_api_response.dart';
import '../../../mobile_mandir_home/presentation/ui/component/for_you/home_for_you_item_builder.dart';
import '../bloc/global_search_bloc.dart';
import '../bloc/global_search_event.dart';
import '../bloc/global_search_state.dart';
import 'aarti_bhajan_katha_grivd_view.dart';
import 'god_grivd_view.dart';

class GloableSearchPage extends StatelessWidget {
  const GloableSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GlobalSearchBloc(),
      child: const _GloableSearchPageView(),
    );
  }
}


class _GloableSearchPageView extends StatelessWidget {
  const _GloableSearchPageView({super.key});


  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      //  print("CODE IS RUNNING HERE HERE ======");
      return _GloableSearchPageViewSmall();
    } else if (context.isMediumScreen) {
      return _GloableSearchPageViewMedium();
    } else {
      return _GloableSearchPageViewMedium();
    }
  }
}



class _GloableSearchPageViewMedium extends StatefulWidget {
  const _GloableSearchPageViewMedium();

  @override
  State<_GloableSearchPageViewMedium> createState() => _GloableSearchPageViewStateMedium();
}


class _GloableSearchPageViewStateMedium extends State<_GloableSearchPageViewMedium> {
  final TextEditingController _controller = TextEditingController();
  Timer? _debounceTimer;

  void _onSearchChanged(String value) {
    _debounceTimer?.cancel();
    final trimmed = value.trim();
    if (trimmed.isEmpty) {
      context.read<GlobalSearchBloc>().add(const GlobalSearchEvent.clear());
      return;
    }
    if (trimmed.length < 3) {
      context.read<GlobalSearchBloc>().add(
        GlobalSearchEvent.search(query: value),
      );
      return;
    }
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      if (!mounted) return;
      context.read<GlobalSearchBloc>().add(
        GlobalSearchEvent.search(query: value),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => _handleRouteArgs());
  }

  void _handleRouteArgs() {
    if (!mounted) return;

    final args = ModalRoute.of(context)?.settings.arguments;
    if (args is! Map) return;

    final bloc = context.read<GlobalSearchBloc>();

    if (args['searchQuery'] != null) {
      final query = args['searchQuery'] as String;
      _controller.text = query;
      bloc.add(GlobalSearchEvent.search(query: query));
      return;
    }

    if (args['prefetchQuery'] != null) {
      bloc.add(
        GlobalSearchEvent.search(
          apiQuery: args['prefetchQuery'] as String,
        ),
      );
    }
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F7),
      appBar: MandirAppBar(
        title: context.l10n.searchAnything,
        onBackTap: () {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          } else {
            BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
          }
        },
      ),
      body: Column(
        children: [
          SizedBox(height: 25,),
          _buildSearchBar(context),
          Expanded(
            child: BlocBuilder<GlobalSearchBloc, GlobalSearchState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const SkeletonListView();
                }

                if (state.errorMessage.isNotEmpty) {
                  return Center(
                    child: Text(
                      state.errorMessage,
                      style: TextStyle(
                        fontFamily: AppFont.gilroyMedium,
                        fontSize: 15,
                        color: Colors.red.shade400,
                      ),
                    ),
                  );
                }

                final data = state.globalSearchResponse.data;
                final hasResults =
                    data.god.isNotEmpty ||
                        data.sant.isNotEmpty ||
                        data.temple.isNotEmpty ||
                        data.aartichalisa.isNotEmpty;

                if (state.query.isEmpty && !hasResults) {
                  return Center(
                    child: Text(
                      context.l10n.typeAboveToSearch,
                      style: TextStyle(
                        fontFamily: AppFont.gilroyMedium,
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  );
                }

                if (state.query.isNotEmpty && state.query.trim().length < 3) {
                  return Center(
                    child: Text(
                      Localizations.localeOf(context).languageCode == 'hi'
                          ? 'खोजने के लिए कम से कम 3 अक्षर दर्ज करें'
                          : 'Type at least 3 characters to search',
                      style: TextStyle(
                        fontFamily: AppFont.gilroyMedium,
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  );
                }

                if (!hasResults) {
                  return Center(
                    child: Text(
                      state.query.isEmpty
                          ? context.l10n.noResultsFound
                          : '${context.l10n.noResultsFoundFor} "${state.query}"',
                      style: TextStyle(
                        fontFamily: AppFont.gilroyMedium,
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  );
                }

                return SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GodGrivdView(),
                      AartiBhajanKathaGrivdView(),
                      TempleGridView()
                      // _buildSection(context, title: context.l10n.god, items: data.god),
                      // _buildSection(context, title: context.l10n.sant, items: data.sant),
                      // _buildSection(
                      //   context,
                      //   title: 'Temple',
                      //   items: data.temple,
                      // ),
                      // _buildSection(
                      //   context,
                      //   title: 'Aarti, Chalisa & Bhajan',
                      //   items: data.aartichalisa,
                      // ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    final hasText = _controller.text.isNotEmpty;

    return Transform.translate(
      offset: const Offset(0, -10),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          //   colors: [
          //     AppColor.gold.withValues(alpha: 0.18),
          //     const Color(0xFFF6F7FB),
          //   ],
          //   stops: const [0.0, 1.0],
          // ),
        ),
        child: Container(
          height: 52,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: AppColor.newsecondaruy.withValues(alpha: 0.35),
              width: 1.2,
            ),
            // boxShadow: [
            //   BoxShadow(
            //     color: AppColor.newsecondaruy.withValues(alpha: 0.14),
            //     blurRadius: 14,
            //     offset: const Offset(0, 5),
            //   ),
            // ],
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/new_design/icon/Search.png',
                width: 20,
                height: 20,
                color: AppColor.newsecondaruy,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  textAlign: TextAlign.start,
                  controller: _controller,
                  autofocus: _controller.text.isEmpty,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.03,
                    color: AppColor.fullBlack,
                  ),
                  onChanged: _onSearchChanged,
                  onSubmitted: (value) {
                    _debounceTimer?.cancel();
                    FocusScope.of(context).unfocus();
                    final trimmed = value.trim();
                    if (trimmed.length >= 3) {
                      final currentQuery = context.read<GlobalSearchBloc>().state.query.trim();
                      if (currentQuery != trimmed) {
                        context.read<GlobalSearchBloc>().add(
                          GlobalSearchEvent.search(query: value),
                        );
                      }
                    }
                  },
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: context.l10n.searchAllHint,
                    hintStyle: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.03,
                      color: AppColor.newGreyy,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.only(top: 0,bottom: 0),
                  ),
                ),
              ),
              Container(
                width: 1.2,
                height: 26,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                color: AppColor.goldDark.withValues(alpha: 0.7),
              ),
              GestureDetector(
                onTap: () {
                  if (hasText) {
                    _debounceTimer?.cancel();
                    _controller.clear();
                    context.read<GlobalSearchBloc>().add(
                      const GlobalSearchEvent.clear(),
                    );
                  } else {
                    showVoiceListeningDialog(context).then((spokenText) {
                      if (!mounted) return;
                      if (spokenText != null &&
                          spokenText.trim().isNotEmpty) {
                        _debounceTimer?.cancel();
                        _controller.text = spokenText.trim();
                        context.read<GlobalSearchBloc>().add(
                          GlobalSearchEvent.search(
                            query: spokenText.trim(),
                          ),
                        );
                      }
                    });
                  }
                },
                child: Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    color: hasText
                        ? AppColor.appGreyyy
                        : AppColor.appLigthYellow,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: hasText
                      ? Icon(
                    Icons.close_rounded,
                    size: 18,
                    color: AppColor.newsecondaruy,
                  )
                      : Image.asset(
                    'assets/new_design/icon/icon-park-solid_voice.png',
                    width: 18,
                    height: 18,
                    color: AppColor.newsecondaruy,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(
      BuildContext context, {
        required String title,
        required List<GlobalSearchItem> items,
      }) {
    if (items.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Row(
              spacing: 10,
              children: [
                Text(
                  title,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.048,
                    color: AppColor.newsecondaruy,
                  ),
                ),
                Image.asset(
                  'assets/new_design/icon/line_with_circle.png',
                  width: context.screenWidth * 0.2,
                ),
              ],
            ),
          ),
          GodGrivdView(),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return HomeForYouItemBuilderTab.build(
                context,
                items[index].toHomeForYouItem(),
                onToggleWishlist: ({required itemId, required itemModel}) {
                  context.read<GlobalSearchBloc>().add(
                    GlobalSearchEvent.toggleWishlist(
                      itemId: itemId,
                      itemModel: itemModel,
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}















class _GloableSearchPageViewSmall extends StatefulWidget {
  const _GloableSearchPageViewSmall();

  @override
  State<_GloableSearchPageViewSmall> createState() => _GloableSearchPageViewState();
}


class _GloableSearchPageViewState extends State<_GloableSearchPageViewSmall> {
  final TextEditingController _controller = TextEditingController();
  Timer? _debounceTimer;

  void _onSearchChanged(String value) {
    _debounceTimer?.cancel();
    final trimmed = value.trim();
    if (trimmed.isEmpty) {
      context.read<GlobalSearchBloc>().add(const GlobalSearchEvent.clear());
      return;
    }
    if (trimmed.length < 3) {
      context.read<GlobalSearchBloc>().add(
        GlobalSearchEvent.search(query: value),
      );
      return;
    }
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      if (!mounted) return;
      context.read<GlobalSearchBloc>().add(
        GlobalSearchEvent.search(query: value),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => _handleRouteArgs());
  }

  void _handleRouteArgs() {
    if (!mounted) return;

    final args = ModalRoute.of(context)?.settings.arguments;
    if (args is! Map) return;

    final bloc = context.read<GlobalSearchBloc>();

    if (args['searchQuery'] != null) {
      final query = args['searchQuery'] as String;
      _controller.text = query;
      bloc.add(GlobalSearchEvent.search(query: query));
      return;
    }

    if (args['prefetchQuery'] != null) {
      bloc.add(
        GlobalSearchEvent.search(
          apiQuery: args['prefetchQuery'] as String,
        ),
      );
    }
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F7),
      appBar: MandirAppBar(
        title: context.l10n.searchAnything,
        onBackTap: () {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          } else {
            BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
          }
        },
      ),
      body: Column(
        children: [
          SizedBox(height: 25,),
          _buildSearchBar(context),
          Expanded(
            child: BlocBuilder<GlobalSearchBloc, GlobalSearchState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const SkeletonListView();
                }

                if (state.errorMessage.isNotEmpty) {
                  return Center(
                    child: Text(
                      state.errorMessage,
                      style: TextStyle(
                        fontFamily: AppFont.gilroyMedium,
                        fontSize: 15,
                        color: Colors.red.shade400,
                      ),
                    ),
                  );
                }

                final data = state.globalSearchResponse.data;
                final hasResults =
                    data.god.isNotEmpty ||
                    data.sant.isNotEmpty ||
                    data.temple.isNotEmpty ||
                    data.aartichalisa.isNotEmpty;

                if (state.query.isEmpty && !hasResults) {
                  return Center(
                    child: Text(
                      context.l10n.typeAboveToSearch,
                      style: TextStyle(
                        fontFamily: AppFont.gilroyMedium,
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  );
                }

                if (state.query.isNotEmpty && state.query.trim().length < 3) {
                  return Center(
                    child: Text(
                      Localizations.localeOf(context).languageCode == 'hi'
                          ? 'खोजने के लिए कम से कम 3 अक्षर दर्ज करें'
                          : 'Type at least 3 characters to search',
                      style: TextStyle(
                        fontFamily: AppFont.gilroyMedium,
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  );
                }

                if (!hasResults) {
                  return Center(
                    child: Text(
                      state.query.isEmpty
                          ? context.l10n.noResultsFound
                          : '${context.l10n.noResultsFoundFor} "${state.query}"',
                      style: TextStyle(
                        fontFamily: AppFont.gilroyMedium,
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  );
                }

                return SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GodGrivdView(),
                      AartiBhajanKathaGrivdView(),
                      TempleGridView()
                      // _buildSection(context, title: context.l10n.god, items: data.god),
                      // _buildSection(context, title: context.l10n.sant, items: data.sant),
                      // _buildSection(
                      //   context,
                      //   title: 'Temple',
                      //   items: data.temple,
                      // ),
                      // _buildSection(
                      //   context,
                      //   title: 'Aarti, Chalisa & Bhajan',
                      //   items: data.aartichalisa,
                      // ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    final hasText = _controller.text.isNotEmpty;

    return Transform.translate(
      offset: const Offset(0, -10),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          //   colors: [
          //     AppColor.gold.withValues(alpha: 0.18),
          //     const Color(0xFFF6F7FB),
          //   ],
          //   stops: const [0.0, 1.0],
          // ),
        ),
        child: Container(
          height: 52,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              color: AppColor.newsecondaruy.withValues(alpha: 0.35),
              width: 1.2,
            ),
            // boxShadow: [
            //   BoxShadow(
            //     color: AppColor.newsecondaruy.withValues(alpha: 0.14),
            //     blurRadius: 14,
            //     offset: const Offset(0, 5),
            //   ),
            // ],
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/new_design/icon/Search.png',
                width: 20,
                height: 20,
                color: AppColor.newsecondaruy,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  controller: _controller,
                  autofocus: _controller.text.isEmpty,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.038,
                    color: AppColor.fullBlack,
                  ),
                  onChanged: _onSearchChanged,
                  onSubmitted: (value) {
                    _debounceTimer?.cancel();
                    FocusScope.of(context).unfocus();
                    final trimmed = value.trim();
                    if (trimmed.length >= 3) {
                      final currentQuery = context.read<GlobalSearchBloc>().state.query.trim();
                      if (currentQuery != trimmed) {
                        context.read<GlobalSearchBloc>().add(
                          GlobalSearchEvent.search(query: value),
                        );
                      }
                    }
                  },
                  decoration: InputDecoration(
                    hintText: context.l10n.searchAllHint,
                    hintStyle: AppTextStyle.gilroyMedium(
                      context.screenWidth * 0.035,
                      color: AppColor.newGreyy,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ),
              Container(
                width: 1.2,
                height: 26,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                color: AppColor.goldDark.withValues(alpha: 0.7),
              ),
              GestureDetector(
                onTap: () {
                  if (hasText) {
                    _debounceTimer?.cancel();
                    _controller.clear();
                    context.read<GlobalSearchBloc>().add(
                      const GlobalSearchEvent.clear(),
                    );
                  } else {
                    showVoiceListeningDialog(context).then((spokenText) {
                      if (!mounted) return;
                      if (spokenText != null &&
                          spokenText.trim().isNotEmpty) {
                        _debounceTimer?.cancel();
                        _controller.text = spokenText.trim();
                        context.read<GlobalSearchBloc>().add(
                          GlobalSearchEvent.search(
                            query: spokenText.trim(),
                          ),
                        );
                      }
                    });
                  }
                },
                child: Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    color: hasText
                        ? AppColor.appGreyyy
                        : AppColor.appLigthYellow,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: hasText
                      ? Icon(
                          Icons.close_rounded,
                          size: 18,
                          color: AppColor.newsecondaruy,
                        )
                      : Image.asset(
                          'assets/new_design/icon/icon-park-solid_voice.png',
                          width: 18,
                          height: 18,
                          color: AppColor.newsecondaruy,
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required List<GlobalSearchItem> items,
  }) {
    if (items.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Row(
              spacing: 10,
              children: [
                Text(
                  title,
                  style: AppTextStyle.gilroyBold(
                    context.screenWidth * 0.048,
                    color: AppColor.newsecondaruy,
                  ),
                ),
                Image.asset(
                  'assets/new_design/icon/line_with_circle.png',
                  width: context.screenWidth * 0.2,
                ),
              ],
            ),
          ),
          GodGrivdView(),
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return HomeForYouItemBuilderTab.build(
                context,
                items[index].toHomeForYouItem(),
                onToggleWishlist: ({required itemId, required itemModel}) {
                  context.read<GlobalSearchBloc>().add(
                    GlobalSearchEvent.toggleWishlist(
                      itemId: itemId,
                      itemModel: itemModel,
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}




