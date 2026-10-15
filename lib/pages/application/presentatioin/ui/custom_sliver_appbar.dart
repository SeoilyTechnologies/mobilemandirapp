import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';

import '../../../../common/routes/exports.dart';

class CustomSliverAppbar extends StatelessWidget {
  const CustomSliverAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SliverAppBar(
      pinned: true,
      floating: false,
      expandedHeight: 135,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      elevation: 0,

      flexibleSpace: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          bool isCollapsed = constraints.biggest.height <= kToolbarHeight + 70;

          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFEA834C),
                  Color(0xFFB34804),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: FlexibleSpaceBar(
              centerTitle: false,
              titlePadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),

              title: Padding(padding: EdgeInsets.symmetric(),child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: isCollapsed
                    ? _collapsedSearchBar(context)
                    : const SizedBox(),
              ),),

              background: Padding(
                padding: const EdgeInsets.only(top: 35, left: 12, right: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// USER + NOTIFICATION
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                  GestureDetector(
                    onTap: () {

                    },
            child:  Icon(Icons.account_circle_rounded,
                  color: Colors.white, size: 40),
              ),

                        const SizedBox(width: 6),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              context.l10n.namastey,
                              style: TextStyle(
                                fontSize: screenWidth * 0.038,
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
                        ),

                        const Spacer(),

                        const Icon(Icons.notifications,
                            color: Colors.white, size: 36),
                      ],
                    ),

                    const SizedBox(height: 18),

                    /// SEARCH BAR (expanded mode)
                    _fullSearchBar(context),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // Collapsed Search Bar
  Widget _collapsedSearchBar(BuildContext context) {
    return Container(
      height: 34,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.grey, size: 18),
          SizedBox(width: 10),
          Text(context.l10n.searchDots, style: TextStyle(color: Colors.grey, fontSize: 12)),
        ],
      ),
    );
  }

  // Full search bar
  Widget _fullSearchBar(BuildContext context) {
    return Container(
      height: 44,
      padding: const EdgeInsets.symmetric(horizontal: 14),
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
          Icon(Icons.search, color: Colors.grey, size: 22),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: context.l10n.searchAartiHint,
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(Icons.mic_none, color: Colors.grey, size: 22),
        ],
      ),
    );
  }
}
