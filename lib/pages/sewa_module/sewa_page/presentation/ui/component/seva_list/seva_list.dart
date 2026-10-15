import 'package:mandirapp/l10n/l10n.dart';
import '../../../../../../../common/routes/exports.dart';
import '../../../../../../../common/values/screenUtils.dart';
import '../gaushala_card/gaushala_card.dart';

class SevaList extends StatelessWidget {
  const SevaList({super.key});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
        height: context.screenHeight * 0.3,
        child:  ListView.builder(
            itemCount: 10,
            padding: EdgeInsets.all(0),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return  Padding( padding: const EdgeInsets.only(right: 12),
                child: GauShalaCard(
                  image: "assets/background_image/gaushala_image.png",
                  title: "Shri Gau Shala",
                  location: "Mohali, Punjab",
                  sevaCount: "500 Sevas",
                  rating: "4.9",
                ),);
            }));
  }
}
