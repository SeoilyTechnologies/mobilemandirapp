enum SankalpOptionType { ekBaar, sankalp }

class SankalpOptionModel {
  final SankalpOptionType type;
  final String optionLabel;
  final String title;
  final String subtitle;
  final int basePrice;
  final bool isRecommended;

  const SankalpOptionModel({
    required this.type,
    required this.optionLabel,
    required this.title,
    required this.subtitle,
    required this.basePrice,
    this.isRecommended = false,
  });
}
