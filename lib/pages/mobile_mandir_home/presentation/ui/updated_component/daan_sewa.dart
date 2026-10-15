import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/fonts.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../common/values/app_color.dart';
class DaanSewa extends StatelessWidget {
  final String image;
  final String title;
  final double rating;
  final int price;
  final int oldPrice;
  final String discountText;
  final VoidCallback onFavorite;
  final VoidCallback onAddToCart;
  DaanSewa({
    super.key,
    required this.image,
    required this.title,
    required this.rating,
    required this.price,
    required this.oldPrice,
    required this.discountText,
    required this.onFavorite,
    required this.onAddToCart,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: 180,
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    height: 170,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 1,
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 25,
                    ),
                    onPressed: onFavorite,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      title,
                      style: AppTextStyle.gilroySemiBold(
                        context.screenWidth * 0.024,
                        color: AppColor.appBlack,
                      )
                  ),
                  SizedBox(height: 2),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '₹$price',
                        style: AppTextStyle.gilroySemiBold(
                          context.screenWidth * 0.029,
                          color: AppColor.newsecondaruy,
                        ),
                      ),
                      SizedBox(width: 10),


                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    height: 36,
                    child: ElevatedButton(
                      onPressed: onAddToCart,

                      child: Text(
                        'Donate',
                        style: AppTextStyle.gilroySemiBold(
                          context.screenWidth * 0.033,
                          color: AppColor.appWhiteColor,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF793C01),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}