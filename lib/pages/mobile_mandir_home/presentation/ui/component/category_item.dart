import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String imagePath;

  final String title;
  final Color iconColor;
  final Color bgColor;
  final VoidCallback? onTap; // optional

  const CategoryItem({
    super.key,
    required this.icon,
    required this.imagePath,
    required this.title,
    required this.iconColor,
    required this.bgColor,
    this.onTap, // optional
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // can be null — safe
      child: SizedBox(
       // width: 120,
        child:  Column(
            children: [
              const SizedBox(height: 12),
              CircleAvatar(
                radius: 28,
               // backgroundColor: Colors.grey.shade200,
              //  child: Icon(icon, color: iconColor, size: 28),
                child: Image.asset("$imagePath"),
              ),
              const SizedBox(height: 12),
              Text(
                title,
                textAlign: TextAlign.center,
                style: AppTextStyle.semiBold(context.screenWidth*0.029,color: Colors.black),
              ),
            ],
          ),

      ),
    );
  }
}
