import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../../../common/values/screenUtils.dart';
import '../../../data/entity/dynamic_tab_models.dart';

/// Figma frames for these screens are 393 px wide.
const double kDynamicDesignWidth = 393;

extension DynamicScaleX on BuildContext {
  /// Figma px → device px (393 design width).
  double dp(double figmaPx) => w(figmaPx, kDynamicDesignWidth);

  /// Font size on the app-wide scale (`screenWidth * k`, as the other home /
  /// detail screens do). Width capped so tablets don't get huge text.
  double fs(double k) => math.min(screenWidth, 480) * k;
}

/// The `screenWidth * k` factors used across the app (see e.g.
/// title_with_see_allbutton.dart, temple_name_component.dart, seva_card_small.dart).
class DynamicFont {
  DynamicFont._();

  /// Home section headings ("Quick Sevas", "Categories").
  static const double heading = 0.053;

  /// Inner-page header title.
  static const double pageTitle = 0.053;

  /// Heading inside a card (Pooja Kab Karein, Naam Jaap card, Wishes card).
  static const double cardHeading = 0.042;

  /// Card / tile titles (temple, god, aarti tiles).
  static const double cardTitle = 0.038;

  /// Seva card title ("Gau Seva").
  static const double sevaTitle = 0.036;

  /// Body text, buttons, chips.
  static const double body = 0.034;

  /// Titles under small grid images (god grid item).
  static const double gridTitle = 0.0323;

  /// Locations, descriptions, small buttons.
  static const double secondary = 0.029;

  /// Badges, tiny labels.
  static const double tiny = 0.026;
}

/// "#RRGGBB" / "#AARRGGBB" → Color, or [fallback] when empty / invalid.
Color parseHexColor(String? hex, Color fallback) {
  var v = (hex ?? '').trim().replaceAll('#', '');
  if (v.length == 3) v = v.split('').map((c) => '$c$c').join();
  if (v.length == 6) v = 'FF$v';
  if (v.length != 8) return fallback;
  final parsed = int.tryParse(v, radix: 16);
  return parsed == null ? fallback : Color(parsed);
}

/// CSS `linear-gradient(<angle>deg, a, b)` as a Flutter gradient.
LinearGradient cssLinearGradient(double angleDeg, List<Color> colors, [List<double>? stops]) {
  final rad = angleDeg * math.pi / 180;
  final end = Alignment(math.sin(rad), -math.cos(rad));
  return LinearGradient(begin: -end, end: end, colors: colors, stops: stops);
}

/// Colours of a dynamic page with the Figma defaults.
class DynamicPalette {
  final Color gradientStart;
  final Color gradientEnd;
  final double gradientAngle;
  final Color pageBg;
  final Color primary;
  final Color secondary;

  const DynamicPalette({
    required this.gradientStart,
    required this.gradientEnd,
    required this.gradientAngle,
    required this.pageBg,
    required this.primary,
    required this.secondary,
  });

  static const Color figmaPrimary = Color(0xFF793C01);
  static const Color figmaSecondary = Color(0xFFE4AE23);
  static const Color figmaPageBg = Color(0xFFFFF6EE);
  static const Color figmaGradientStart = Color(0xFF510006);
  static const Color figmaGradientEnd = Color(0xFFDC8D00);

  factory DynamicPalette.of(DynamicTheme? t) => DynamicPalette(
        gradientStart: parseHexColor(t?.gradientStart, figmaGradientStart),
        gradientEnd: parseHexColor(t?.gradientEnd, figmaGradientEnd),
        gradientAngle: t?.gradientAngle ?? 161.5,
        pageBg: parseHexColor(t?.pageBgColor, figmaPageBg),
        primary: parseHexColor(t?.primaryColor, figmaPrimary),
        secondary: parseHexColor(t?.secondaryColor, figmaSecondary),
      );

  /// True when the admin set a header gradient (otherwise keep app assets).
  static bool hasGradient(DynamicTheme? t) =>
      (t?.gradientStart ?? '').isNotEmpty || (t?.gradientEnd ?? '').isNotEmpty;

  LinearGradient get headerGradient =>
      cssLinearGradient(gradientAngle, [gradientStart, gradientEnd], const [0.128, 0.889]);
}

/// Provides the palette of the page being rendered to all its sections.
class DynamicPaletteScope extends InheritedWidget {
  final DynamicPalette palette;

  const DynamicPaletteScope({super.key, required this.palette, required super.child});

  static DynamicPalette of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<DynamicPaletteScope>()?.palette ??
      DynamicPalette.of(null);

  @override
  bool updateShouldNotify(DynamicPaletteScope oldWidget) => oldWidget.palette != palette;
}

/// Shared Figma card shadow: 0 1 10 rgba(209,209,209,.25).
const List<BoxShadow> kDynamicCardShadow = [
  BoxShadow(color: Color(0x40D1D1D1), blurRadius: 10.3, offset: Offset(0, 1)),
];
