import '../routes/exports.dart';
import '../values/screenUtils.dart';

class FavouriteIconDetail extends StatelessWidget {
  final bool isFavorite;

  const FavouriteIconDetail({
    super.key,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      isFavorite
          ? "assets/new_design/icon/newfillheart.png"
          : "assets/new_design/icon/fill_heart_with_circle.png",
      width: 34,
      height: 34,
    );
  }
}