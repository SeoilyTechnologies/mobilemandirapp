import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/home_bloc.dart';
import '../../bloc/home_event.dart';

class SnowLayer extends StatefulWidget {
  final List<SnowModel> listSnow;
  final double parentWidth;
  final double parentHeight;

  const SnowLayer({
    required this.listSnow,
    required this.parentWidth,
    required this.parentHeight,
    super.key,
  });

  @override
  State<SnowLayer> createState() => _SnowLayerState();
}
class _SnowLayerState extends State<SnowLayer> {
  // track items (by hash) we've already scheduled to animate so we don't schedule twice
  final Set<int> _scheduled = {};

  @override
  void didUpdateWidget(covariant SnowLayer oldWidget) {
    super.didUpdateWidget(oldWidget);

    // If new items added, schedule their fall animation
    if (widget.listSnow.length > oldWidget.listSnow.length) {
      final newCount = widget.listSnow.length - oldWidget.listSnow.length;

      // only process newly added items
      for (
      int i = widget.listSnow.length - newCount;
      i < widget.listSnow.length;
      i++
      ) {
        final element = widget.listSnow[i];
        final id = element.hashCode;
        if (_scheduled.contains(id)) continue;
        _scheduled.add(id);

        // convert relative left (0..100) to absolute x in pixels if needed
        double left = element.left ?? 0.0;
        final isRelative = left <= 100; // we treat <=100 as relative 0..100
        final absoluteLeft = isRelative
            ? (left / 100.0) * widget.parentWidth * 0.95
            : left;

        // schedule small delay (like original code) then dispatch event to update position
        Future.delayed(const Duration(milliseconds: 100), () {
          // find current index (it may have changed); match by hashCode
          final list = widget.listSnow;
          final idx = list.indexWhere((it) => it.hashCode == id);
          if (idx == -1) return; // item removed meanwhile

          // dispatch event to update the snow item position to bottom (parentHeight)
          // UpdateSnowPosition expects (index, left, top)
          context.read<HomeBloc>().add(
            UpdateSnowPosition(
              idx,
              left: absoluteLeft,
              top: widget.parentHeight,
            ),
          );
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: widget.listSnow.asMap().entries.map((entry) {
        final index = entry.key;
        final element = entry.value;

        double left = element.left ?? 0.0;
        // if left is relative (0..100) convert to px
        if (left <= 100) left = (left / 100.0) * widget.parentWidth * 0.95;

        return AnimatedPositioned(
          key: ValueKey(element.hashCode),
          top: element.top,
          left: left,
          duration: Duration(seconds: element.duration ?? 4),
          curve: Curves.linear,
          child: Container(
            width: element.size,
            height: element.size,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: const DecorationImage(
                image: AssetImage('assets/images/flower.png'),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
