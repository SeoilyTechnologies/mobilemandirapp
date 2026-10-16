import 'package:flutter/material.dart';

import '../../data/entity/dynamic_tab_models.dart';
import 'sections/card_sections.dart';
import 'sections/grid_sections.dart';
import 'sections/jaap_wishes_sections.dart';
import 'widgets/dynamic_banner.dart';
import 'widgets/dynamic_style.dart';
import 'widgets/section_title.dart';

/// Renders a page's sections in order with the Figma rhythm
/// (≈30px before a section title, ≈14px between title and content).
/// Unknown section types (newer server) are skipped.
class DynamicSections extends StatelessWidget {
  final List<DynamicSectionModel> sections;
  final double? bottomPadding;

  const DynamicSections({super.key, required this.sections, this.bottomPadding});

  static const Set<String> _titleInside = {'expandable_text', 'banner'};

  static Widget? buildContent(DynamicSectionModel s) {
    switch (s.type) {
      case 'grid_3col':
        return s.items.isEmpty ? null : Grid3ColSection(section: s);
      case 'gradient_cards':
        return s.items.isEmpty ? null : GradientCardsSection(section: s);
      case 'content_carousel':
        return s.items.isEmpty ? null : ContentCarouselSection(section: s);
      case 'info_card':
        return s.items.isEmpty ? null : InfoCardSection(section: s);
      case 'temple_strip':
        return s.items.isEmpty ? null : TempleStripSection(section: s);
      case 'expandable_text':
        return ExpandableTextSection(section: s);
      case 'muhurat':
        return MuhuratSection(section: s);
      case 'naam_jaap':
        return NaamJaapSection(section: s);
      case 'wishes_cta':
        return WishesCtaSection(section: s);
      case 'banner':
        return s.banner == null ? null : DynamicBanner(banner: s.banner!);
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];
    for (final s in sections) {
      Widget? content;
      try {
        content = buildContent(s);
      } catch (e) {
        debugPrint('DynamicSections: skipped ${s.type}: $e');
      }
      if (content == null) continue;

      final hasTitle = s.title.trim().isNotEmpty && !_titleInside.contains(s.type);
      children.add(SizedBox(height: context.dp(s.type == 'banner' ? 16 : 28)));
      if (hasTitle) {
        children.add(DynamicSectionTitle(title: s.title, showOrnament: s.showOrnament));
        children.add(SizedBox(height: context.dp(14)));
      }
      children.add(content);
    }
    children.add(SizedBox(height: bottomPadding ?? context.dp(32)));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: children,
    );
  }
}
