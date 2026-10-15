import '../../../../l10n/l10n.dart';

class OnboardingItem {
  final String image;
  final String Function(L10n l10n) title;
  final String Function(L10n l10n) subtitle;

  OnboardingItem({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}
