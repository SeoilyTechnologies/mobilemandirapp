import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {

  const CustomAppbar();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: 180,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFEA834C), // light orange (top)
            Color(0xFFB34804), // dark orange (bottom)
          ],
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),

      child: Column(
        children: [
          /// TOP ROW
             const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.only(top: 10, left: 12, right: 12),
            child: Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 3,
                    children: [
                      const Icon(
                        Icons.account_circle_rounded,
                        color: Colors.white,
                        size: 40,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.l10n.namastey,
                            style: TextStyle(
                              fontSize: screenWidth * 0.038,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "John Doe",
                            style: TextStyle(
                              fontSize: screenWidth * 0.045,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                /// NOTIFICATION ICON
                Positioned(
                  right: 0,
                  top: 10,
                  child: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 18),
          customSearchBar(context)
        ],
      ),
    );
  }

  Widget customSearchBar(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 14,right: 14),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.orange.withOpacity(0.4),
            blurRadius: 12,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: Colors.grey, size: 22),

          const SizedBox(width: 10),

          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: context.l10n.searchAartiHint,
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                border: InputBorder.none,
              ),
            ),
          ),

          const Icon(Icons.mic_none, color: Colors.grey, size: 22),
        ],
      ),
    ),);
  }
}
