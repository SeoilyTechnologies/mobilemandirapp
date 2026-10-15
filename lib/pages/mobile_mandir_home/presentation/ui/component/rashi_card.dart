import 'package:flutter/material.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../../../../../common/component/app_text_style.dart';
import '../../../../../common/values/app_color.dart';

class RashiCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String emoji;
  final VoidCallback onTap;

  const RashiCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.emoji,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 225,
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Positioned(
            top: 0,
            right: 10,

            child: Padding(
              padding: EdgeInsets.only(top: 1.8, bottom: 0),
              child:Center(child:  Container(
                width: MediaQuery.of(context).size.width - 45,
                alignment: Alignment.centerLeft,
                height: 222,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
                ),
              ),)
            ),
          ),

          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.06),
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                )
              ],
            ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title + emoji
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: AppTextStyle.semiBold(
                          context.screenWidth * 0.043,
                          color: AppColor.appBlack,
                        ),
                      ),
                    ),

                    Text(
                      emoji,
                      style:   AppTextStyle.medium(
                      context.screenWidth * 0.064,
                      color: Colors.grey,
                    ),
                    ),
                  ],
                ),

                const SizedBox(height: 4),

                Text(
                  subtitle,
                  style: AppTextStyle.medium(
                    context.screenWidth * 0.034,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 12),

                Text(
                  description,
                  style: AppTextStyle.regular(
                    context.screenWidth * 0.034,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 24),

                // Full width button
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      side: BorderSide(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: onTap,
                    child:  Text(
                      "View Full Rashifal",
                      style: AppTextStyle.medium(
                        context.screenWidth * 0.034,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
