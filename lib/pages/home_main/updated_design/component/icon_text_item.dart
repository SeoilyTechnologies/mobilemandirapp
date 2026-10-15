import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';

class IconTextItem extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconTextItem({required this.icon, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
       Padding(padding: EdgeInsets.all(0.0),
       child:  Container(
         padding: const EdgeInsets.all(12), // space inside the circle
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10.0),
           shape: BoxShape.rectangle,
          // border: Border.all(color: Color(0xFF8A001F), width: 1), // 👈 white border
           border: Border.all(color: Colors.white, width: 1), // 👈 white border
           color: Colors.white, // 👈 background color (optional)
         ),
         child: Column(
           spacing: 6,
           mainAxisSize: MainAxisSize.min,
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             Icon(icon, color: Color(0xFF8A001F), size: 24),
             Text(
               text,
               style: AppTextStyle.semiBold(18,color:Color(0xFF8A001F)),
             ),
           ],
         ),
       ),),


      ],
    );

  }
}
