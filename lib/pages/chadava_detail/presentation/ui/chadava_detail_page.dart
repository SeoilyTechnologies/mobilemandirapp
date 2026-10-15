import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common/values/screenUtils.dart';
import '../bloc/chadava_detail_bloc.dart';
import '../bloc/chadava_detail_event.dart';
import 'component/chadava_detail_large.dart';
import 'component/chadava_detail_large_landscape.dart';
import 'component/chadava_detail_medium.dart';
import 'component/chadava_detail_medium_landscape.dart';
import 'component/chadava_detail_small.dart';
import 'component/chadava_detail_small_landscape.dart';

class ChadavaDetailPage extends StatefulWidget {
  final String? itemTitle;
  final String? itemImage;

  const ChadavaDetailPage({
    super.key,
    this.itemTitle,
    this.itemImage,
  });

  @override
  State<ChadavaDetailPage> createState() => _ChadavaDetailPageState();
}

class _ChadavaDetailPageState extends State<ChadavaDetailPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final args = ModalRoute.of(context)?.settings.arguments;
      String? title = widget.itemTitle;
      String? image = widget.itemImage;

      if (args is Map) {
        title = args['title'] as String? ?? title;
        image = args['image'] as String? ?? image;
      } else if (args is String) {
        title = args;
      }

      context.read<ChadavaDetailBloc>().add(
            LoadChadavaDetail(
              itemTitle: title ?? 'Shani Dev Chadava',
              itemImage: image,
            ),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    /// SMALL (Mobile)
    if (context.isSmallScreen) {
      return context.isPortrait
          ? const ChadavaDetailSmall()
          : const ChadavaDetailSmallLandscape();
    }

    /// MEDIUM (Tablet)
    else if (context.isMediumScreen) {
      return context.isPortrait
          ? const ChadavaDetailMedium()
          : const ChadavaDetailMediumLandscape();
    }

    /// LARGE (Web / Desktop)
    else {
      return context.isPortrait
          ? const ChadavaDetailLarge()
          : const ChadavaDetailLargeLandscape();
    }
  }
}
