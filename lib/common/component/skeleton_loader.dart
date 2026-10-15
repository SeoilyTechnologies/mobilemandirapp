import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../values/screenUtils.dart';

class SkeletonLoader extends StatelessWidget {
  final Widget child;
  
  const SkeletonLoader({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: child,
    );
  }
}

class SkeletonBox extends StatelessWidget {
  final double? width;
  final double? height;
  final double borderRadius;

  const SkeletonBox({
    Key? key,
    this.width,
    this.height,
    this.borderRadius = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
    );
  }
}

class SkeletonListTile extends StatelessWidget {
  const SkeletonListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: SkeletonLoader(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SkeletonBox(width: 60, height: 60, borderRadius: 8),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SkeletonBox(width: double.infinity, height: 14, borderRadius: 4),
                  SizedBox(height: 8),
                  SkeletonBox(width: 120, height: 12, borderRadius: 4),
                ],
              ),
            ),
            const SizedBox(width: 12),
            const SkeletonBox(width: 24, height: 24, borderRadius: 12),
          ],
        ),
      ),
    );
  }
}

class SkeletonGridTile extends StatelessWidget {
  const SkeletonGridTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SkeletonLoader(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SkeletonBox(
              width: double.infinity, 
              height: double.infinity,
              borderRadius: 12,
            ),
          ),
          const SizedBox(height: 8),
          const SkeletonBox(width: double.infinity, height: 14, borderRadius: 4),
          const SizedBox(height: 4),
          const SkeletonBox(width: 80, height: 12, borderRadius: 4),
        ],
      ),
    );
  }
}

class SkeletonBanner extends StatelessWidget {
  final double? height;
  
  const SkeletonBanner({Key? key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: SkeletonLoader(
        child: SkeletonBox(
          width: double.infinity,
          height: height ?? context.screenHeight * 0.2,
          borderRadius: 12,
        ),
      ),
    );
  }
}

class SkeletonDetailHeader extends StatelessWidget {
  final double? height;
  
  const SkeletonDetailHeader({Key? key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SkeletonLoader(
          child: SkeletonBox(
            width: double.infinity,
            height: height ?? 318, // Match TempleHeader/GodHeader height
            borderRadius: 0,
          ),
        ),
        Positioned(
          top: context.screenHeight * 0.07,
          left: 14,
          child: SkeletonLoader(
             child: SkeletonBox(width: 36, height: 36, borderRadius: 18),
          ),
        ),
      ],
    );
  }
}

class SkeletonListView extends StatelessWidget {
  final int itemCount;
  const SkeletonListView({Key? key, this.itemCount = 5}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      itemBuilder: (context, index) => const SkeletonListTile(),
    );
  }
}

class SkeletonGridView extends StatelessWidget {
  final int itemCount;
  const SkeletonGridView({Key? key, this.itemCount = 6}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.8,
      ),
      itemCount: itemCount,
      itemBuilder: (context, index) => const SkeletonGridTile(),
    );
  }
}

class SkeletonHorizontalList extends StatelessWidget {
  final int itemCount;
  final double height;
  const SkeletonHorizontalList({Key? key, this.itemCount = 5, this.height = 120}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        itemCount: itemCount,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 12),
          child: SkeletonBox(width: 80, height: 100, borderRadius: 12),
        ),
      ),
    );
  }
}

class SkeletonHorizontalGrid extends StatelessWidget {
  final int itemCount;
  const SkeletonHorizontalGrid({Key? key, this.itemCount = 6}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 1),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
        childAspectRatio: 0.22,
      ),
      itemCount: itemCount,
      itemBuilder: (context, index) => const SkeletonListTile(), // Reuse SkeletonListTile since it is a wide horizontal item
    );
  }
}
