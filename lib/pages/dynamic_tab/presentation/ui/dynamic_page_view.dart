import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../common/component/app_text_style.dart';
import '../../data/entity/dynamic_tab_models.dart';
import '../bloc/dynamic_page_bloc.dart';
import '../bloc/dynamic_page_event.dart';
import '../bloc/dynamic_page_state.dart';
import 'dynamic_section_builder.dart';
import 'widgets/dynamic_style.dart';

/// Body of a dynamic home tab (header + banner are drawn by the home screen).
class DynamicPageView extends StatelessWidget {
  final String slug;
  final DynamicTheme? theme;

  const DynamicPageView({super.key, required this.slug, this.theme});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      key: ValueKey('dynamic-tab-$slug'),
      create: (_) => DynamicPageBloc()..add(DynamicPageEvent.load(slug)),
      child: BlocBuilder<DynamicPageBloc, DynamicPageState>(
        builder: (context, state) {
          final palette = DynamicPalette.of(state.page?.theme ?? theme);
          return DynamicPaletteScope(
            palette: palette,
            child: Container(
              color: palette.pageBg,
              child: _body(context, state),
            ),
          );
        },
      ),
    );
  }

  Widget _body(BuildContext context, DynamicPageState state) {
    final page = state.page;
    // Same bottom space as built-in tabs (floating bottom nav).
    if (page != null) {
      return DynamicSections(
        sections: page.sections,
        bottomPadding: MediaQuery.sizeOf(context).height * 0.12,
      );
    }
    if (state.isLoading || state.error.isEmpty) return const DynamicPageSkeleton();
    return DynamicPageError(onRetry: () => context.read<DynamicPageBloc>().add(DynamicPageEvent.load(slug)));
  }
}

class DynamicPageSkeleton extends StatelessWidget {
  const DynamicPageSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final s = context.dp(1);
    Widget box(double h) => Container(
          height: h,
          margin: EdgeInsets.fromLTRB(19 * s, 24 * s, 19 * s, 0),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8 * s)),
        );
    return Shimmer.fromColors(
      baseColor: const Color(0xFFF3E6D6),
      highlightColor: const Color(0xFFFFF6EE),
      child: Column(children: [box(133 * s), box(133 * s), box(137 * s), SizedBox(height: 40 * s)]),
    );
  }
}

class DynamicPageError extends StatelessWidget {
  final VoidCallback onRetry;

  const DynamicPageError({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    final primary = DynamicPaletteScope.of(context).primary;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.dp(48)),
      child: Column(
        children: [
          Text(
            'Could not load this page',
            style: AppTextStyle.gilroySemiBold(context.fs(DynamicFont.body), color: Colors.black87),
          ),
          SizedBox(height: context.dp(12)),
          OutlinedButton(
            onPressed: onRetry,
            style: OutlinedButton.styleFrom(foregroundColor: primary, side: BorderSide(color: primary)),
            child: Text('Retry', style: AppTextStyle.gilroyBold(context.fs(DynamicFont.body), color: primary)),
          ),
        ],
      ),
    );
  }
}
