import 'package:flutter/widgets.dart';
import 'package:mandirapp/l10n/l10n.dart';

/// Extension on BuildContext to allow short and clean localization syntax:
/// `context.l10n.keyName` instead of `context.l10n.keyName`.
extension LocalizedBuildContext on BuildContext {
  L10n get l10n => L10n.of(this)!;
}
