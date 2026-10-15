import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:mandirapp/common/values/fonts.dart';

class LyricsHtmlHelper {
  /// Clean and format raw HTML lyrics:
  /// - <br> tags ko chhedna nahi hai, jaisa tha waise hi rahega.
  /// - Sirf extra carriage returns aur inline line-height ko normalize karte hain.
  static String formatLyrics(String rawHtml) {
    if (rawHtml.trim().isEmpty) return rawHtml;

    String cleaned = rawHtml.replaceAll('\r\n', '\n').replaceAll('\r', '\n');

    // Override inline line-height to 1.35 taaki readable rahe
    cleaned = cleaned.replaceAll(
      RegExp(r'line-height\s*:\s*[^;]+;?', caseSensitive: false),
      'line-height: 1.35;',
    );

    return cleaned;
  }

  /// Lyrics styling:
  /// - p ka space kam (Margins.zero) taaki lines ke beech ka blank space hat jaye
  /// - br tags as-it-is render honge
  static Map<String, Style> getLyricsStyle({
    required String selectedLanguage,
    double fontSize = 16.5,
  }) {
    return {
      "h1": Style(
        fontFamily: AppFont.gilroyBold,
        lineHeight: const LineHeight(1.2),
      ),
      "html": Style(
        fontFamily: AppFont.gilroyMedium,
        fontSize: FontSize(fontSize),
        lineHeight: const LineHeight(1.35),
      ),
      "body": Style(
        fontFamily: AppFont.gilroySemiBold,
        fontSize: FontSize(fontSize),
        lineHeight: const LineHeight(1.35),
        margin: Margins.zero,
        padding: HtmlPaddings.zero,
        textAlign: TextAlign.center,
      ),
      "div": Style(
        fontFamily: AppFont.gilroySemiBold,
        textAlign: TextAlign.center,
        lineHeight: const LineHeight(1.35),
        fontWeight: FontWeight.w600,
        margin: Margins.zero,
        padding: HtmlPaddings.zero,
      ),
      // p ka space kam (Margins.zero)
      "p": Style(
        fontFamily: AppFont.gilroySemiBold,
        fontSize: FontSize(fontSize),
        textAlign: TextAlign.center,
        lineHeight: const LineHeight(1.35),
        fontWeight: FontWeight.w600,
        margin: Margins.zero,
        padding: HtmlPaddings.zero,
      ),
      "strong": Style(
        fontFamily: AppFont.gilroyBold,
        fontWeight: FontWeight.w700,
      ),
      "span": Style(
        fontFamily: AppFont.gilroySemiBold,
        lineHeight: const LineHeight(1.35),
      ),
    };
  }
}
