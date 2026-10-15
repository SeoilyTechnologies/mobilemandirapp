import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../common/values/screenUtils.dart';
import '../bloc/chadava_sankalp_bloc.dart';
import '../bloc/chadava_sankalp_event.dart';
import 'component/chadava_sankalp_large.dart';
import 'component/chadava_sankalp_large_landscape.dart';
import 'component/chadava_sankalp_medium.dart';
import 'component/chadava_sankalp_medium_landscape.dart';
import 'component/chadava_sankalp_small.dart';
import 'component/chadava_sankalp_small_landscape.dart';

class ChadavaSankalpPage extends StatefulWidget {
  final int? offeringPrice;
  final String? offeringTitle;

  const ChadavaSankalpPage({
    super.key,
    this.offeringPrice,
    this.offeringTitle,
  });

  @override
  State<ChadavaSankalpPage> createState() => _ChadavaSankalpPageState();
}

class _ChadavaSankalpPageState extends State<ChadavaSankalpPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final args = ModalRoute.of(context)?.settings.arguments;
      int? price = widget.offeringPrice;
      String? title = widget.offeringTitle;

      if (args is Map) {
        price = (args['price'] as int?) ?? price;
        title = (args['title'] as String?) ?? title;
      }

      context.read<ChadavaSankalpBloc>().add(
            InitChadavaSankalp(
              offeringPrice: price ?? 101,
              offeringTitle: title ?? 'Sarson ka tel',
            ),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    /// SMALL (Mobile)
    if (context.isSmallScreen) {
      return context.isPortrait
          ? const ChadavaSankalpSmall()
          : const ChadavaSankalpSmallLandscape();
    }

    /// MEDIUM (Tablet)
    else if (context.isMediumScreen) {
      return context.isPortrait
          ? const ChadavaSankalpMedium()
          : const ChadavaSankalpMediumLandscape();
    }

    /// LARGE (Web / Desktop)
    else {
      return context.isPortrait
          ? const ChadavaSankalpLarge()
          : const ChadavaSankalpLargeLandscape();
    }
  }
}
