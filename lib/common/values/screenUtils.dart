import 'package:flutter/material.dart';

extension ScreenUtilsExtension on BuildContext {
  double get _width => MediaQuery.of(this).size.width;
  double get _height => MediaQuery.of(this).size.height;

  Orientation get orientation => MediaQuery.of(this).orientation;

  bool get isPortrait => orientation == Orientation.portrait;
  bool get isLandscape => orientation == Orientation.landscape;

  bool get isSmallScreen => _width < 600;
  bool get isMediumScreen => _width >= 600 && _width < 1024;
  bool get isLargeScreen => _width >= 1024;

  bool get isSmallFont => MediaQuery.of(this).textScaleFactor < 1.0;

  double get screenHeight => _height;
  double get screenWidth => _width;

  /// Figma scaled width (default base width 375.0)
  double w(double figmaWidth, [double baseWidth = 375.0]) =>
      (figmaWidth / baseWidth) * screenWidth;

  /// Figma scaled height (default base height 812.0)
  double h(double figmaHeight, [double baseHeight = 812.0]) =>
      (figmaHeight / baseHeight) * screenHeight;

  /// Figma scaled font size (default base width 375.0)
  double sp(double fontSize, [double baseWidth = 375.0]) =>
      (fontSize / baseWidth) * screenWidth;
}