import 'package:flutter/material.dart';
import '../../../../../common/routes/exports.dart';
import '../../bloc/templ_detail_new/temple_detail_new_bloc.dart';
import '../../bloc/templ_detail_new/temple_detail_new_state.dart';
import 'route_row.dart';

import 'package:flutter/material.dart';
import '../../../../../common/routes/exports.dart';
import '../../bloc/templ_detail_new/temple_detail_new_bloc.dart';
import '../../bloc/templ_detail_new/temple_detail_new_state.dart';
import 'route_row.dart';

class RouteCard extends StatelessWidget {
  const RouteCard({super.key});

  String _getIcon(String title) {
    switch (title.toLowerCase()) {
      case "flight":
        return "assets/new_design/icon/plane_icon.png";

      case "train":
        return "assets/new_design/icon/train_icon.png";

      case "bus":
        return "assets/new_design/icon/bus_images.png";

      case "auto fare":
        return "assets/new_design/icon/tempoo_icon.png";

      default:
        return "assets/new_design/icon/tempoo_icon.png";
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TempleDetailNewBloc, TempleDetailNewState>(
      builder: (context, state) {
        final routes =
            state.templeDetailApiResponse.data.planYourRoute;

        if (routes.isEmpty) {
          return const SizedBox.shrink();
        }

        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: const Color(0xFFE4D7C8),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.03),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: List.generate(routes.length, (index) {
              final item = routes[index];

              return Column(
                children: [
                  RouteRow(
                    icon: _getIcon(item.title),
                    title: item.title,
                    subtitle: item.value,
                  ),

                  if (index != routes.length - 1)
                    const SizedBox(height: 12),
                ],
              );
            }),
          ),
        );
      },
    );
  }
}