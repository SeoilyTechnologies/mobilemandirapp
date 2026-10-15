import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/values_exports.dart';

import '../../../../../common/routes/exports.dart';

class PanchangInfo extends StatelessWidget {
  final String title;
  final String value;
  final Widget icon;

  const PanchangInfo({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
       Padding(padding: EdgeInsets.only(top: 0),child: icon,),
        SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(title=="Sunset"?"$title  ":title, style:AppTextStyle.gilroySemiBold(context.screenWidth*0.034,color: Colors.black),textAlign: TextAlign.start,),
            const SizedBox(height: 4),
            Text(value, style: AppTextStyle.gilroyMedium(context.screenWidth*0.032,color: Colors.black),textAlign: TextAlign.start,),
          ],
        ),
      ],
    );
  }
}
