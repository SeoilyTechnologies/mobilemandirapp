import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/home_bloc.dart';
import '../../bloc/home_event.dart';

class VerticalCircleImageList extends StatelessWidget {
  final List<Map<String, String>> bhagwanList;
  final double imageSize;
  final double spacing;

  const VerticalCircleImageList({
    Key? key,
    required this.bhagwanList,
    this.imageSize = 30.0,
    this.spacing = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: imageSize,
      child: ListView.separated(

        scrollDirection: Axis.horizontal,
        itemCount: bhagwanList.length,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (_, __) => SizedBox(width: spacing),
        itemBuilder: (context, index) {
          final god = bhagwanList[index];
          final imageUrl = god['image'] ?? '';
          final name = god['name'] ?? '';
          final selectedId = int.tryParse(god['id'] ?? '0') ?? 0;

          return GestureDetector(
            onTap: () {
              context.read<HomeBloc>().add(SelectGodImage(selectedId));
              context.read<HomeBloc>().add(ScrollCarousel(0));
            },
            child: Column(
              children: [
                ClipOval(
                  child: Image.network(
                    imageUrl,
                    width: imageSize,
                    height: imageSize,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => const Icon(Icons.image_not_supported),
                  ),
                ),
                // const SizedBox(height: 4),
                // Text(
                //   name,
                //   style: const TextStyle(fontSize: 10, color: Colors.white),
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}
