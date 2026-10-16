import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/component/app_text_style.dart';
import '../bloc/dynamic_page_bloc.dart';
import '../bloc/dynamic_page_event.dart';
import '../bloc/dynamic_page_state.dart';
import 'dynamic_page_view.dart';
import 'dynamic_section_builder.dart';
import 'widgets/dynamic_banner.dart';
import 'widgets/dynamic_style.dart';
import 'widgets/section_title.dart';

/// Inner page (Figma "Maa Shailaputri" / "Diwali"): gradient header with back
/// button, title, ornament and banner, then the admin sections.
/// Route: AppRoutes.DYNAMIC_PAGE with arguments {'slug': '...'}.
class DynamicPageScreen extends StatelessWidget {
  const DynamicPageScreen({super.key});

  String _slugFrom(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args is Map) return '${args['slug'] ?? ''}'.trim();
    if (args is String) return args.trim();
    return '';
  }

  @override
  Widget build(BuildContext context) {
    final slug = _slugFrom(context);
    return BlocProvider(
      create: (_) => DynamicPageBloc()..add(DynamicPageEvent.load(slug)),
      child: BlocBuilder<DynamicPageBloc, DynamicPageState>(
        builder: (context, state) {
          final page = state.page;
          final palette = DynamicPalette.of(page?.theme);
          final s = context.dp(1);
          final top = MediaQuery.paddingOf(context).top;

          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: DynamicPaletteScope(
              palette: palette,
              child: Scaffold(
                backgroundColor: palette.pageBg,
                body: RefreshIndicator(
                  color: palette.primary,
                  onRefresh: () async =>
                      context.read<DynamicPageBloc>().add(DynamicPageEvent.load(slug)),
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Figma: 213px gradient from #510006 (top) to #DC8D00 (bottom).
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [palette.gradientStart, palette.gradientEnd],
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: top + 8 * s),
                              SizedBox(
                                height: context.fs(DynamicFont.pageTitle) * 1.3 + 4 * s,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 19 * s,
                                      child: GestureDetector(
                                        onTap: () => Navigator.maybePop(context),
                                        child: Container(
                                          width: 24 * s,
                                          height: 24 * s,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withValues(alpha: 0.7),
                                            borderRadius: BorderRadius.circular(13.655 * s),
                                          ),
                                          // Figma flips the "right" icon to point left.
                                          child: Transform.flip(
                                            flipX: true,
                                            child: SvgPicture.asset(
                                              'assets/dynamic/back_arrow.svg',
                                              width: 14.069 * s,
                                              height: 14.069 * s,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 52 * s),
                                        child: Text(
                                          page?.title ?? '',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: AppTextStyle.gilroyBold(context.fs(DynamicFont.pageTitle), color: Colors.white, height: 1.1),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 2 * s),
                              const DynamicDividerOrnament(),
                              SizedBox(height: 7 * s),
                              if (page?.banner != null)
                                DynamicBanner(banner: page!.banner!)
                              else
                                SizedBox(height: 101 * s),
                            ],
                          ),
                        ),
                        if (page != null)
                          DynamicSections(sections: page.sections)
                        else if (state.isLoading || state.error.isEmpty)
                          const DynamicPageSkeleton()
                        else
                          DynamicPageError(
                            onRetry: () =>
                                context.read<DynamicPageBloc>().add(DynamicPageEvent.load(slug)),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
