import 'chadava_offering_model.dart';

class ChadavaDetailModel {
  final String itemId;
  final String itemTitle;
  final String kyunKareinTitle;
  final String kyunKareinDescription;
  final String imageAsset;
  final List<ChadavaOfferingModel> offerings;

  const ChadavaDetailModel({
    required this.itemId,
    required this.itemTitle,
    required this.kyunKareinTitle,
    required this.kyunKareinDescription,
    required this.imageAsset,
    required this.offerings,
  });
}
