class ChadavaOfferingModel {
  final String id;
  final String title;
  final String subtitle;
  final int price;
  final String iconAsset;
  final bool isSelected;

  const ChadavaOfferingModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.iconAsset,
    this.isSelected = false,
  });

  ChadavaOfferingModel copyWith({
    String? id,
    String? title,
    String? subtitle,
    int? price,
    String? iconAsset,
    bool? isSelected,
  }) {
    return ChadavaOfferingModel(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      price: price ?? this.price,
      iconAsset: iconAsset ?? this.iconAsset,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
