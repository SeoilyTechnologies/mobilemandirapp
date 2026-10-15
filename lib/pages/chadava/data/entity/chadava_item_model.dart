class ChadavaItemModel {
  final String id;
  final String title;
  final String imageAsset;
  final String category; // 'god_seva' or 'vanspati_seva'
  final bool isSelected;

  const ChadavaItemModel({
    required this.id,
    required this.title,
    required this.imageAsset,
    required this.category,
    this.isSelected = false,
  });

  ChadavaItemModel copyWith({
    String? id,
    String? title,
    String? imageAsset,
    String? category,
    bool? isSelected,
  }) {
    return ChadavaItemModel(
      id: id ?? this.id,
      title: title ?? this.title,
      imageAsset: imageAsset ?? this.imageAsset,
      category: category ?? this.category,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
