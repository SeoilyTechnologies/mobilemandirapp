import 'package:flutter/material.dart';
import '../../../../../common/routes/exports.dart';
import '../../bloc/templ_detail_new/temple_detail_new_bloc.dart';
import '../../bloc/templ_detail_new/temple_detail_new_state.dart';
import 'service_chip.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TempleDetailNewBloc, TempleDetailNewState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Wrap(
        spacing: 14,
        runSpacing: 18,
        children: state.templeDetailApiResponse.data.servicesFacilities
            .map((e) => ServiceChip(title: e))
            .toList(),
        );
      },
    );
  }
}