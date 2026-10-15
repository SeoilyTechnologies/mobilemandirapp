import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:mandirapp/common/routes/routes.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/temple_detail/bloc/temple_detail_bloc.dart';

import '../../../../common/component/top_bar_component.dart';
import '../../../../common/routes/exports.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../application/presentatioin/ui/custom_sliver_appbar.dart';
import '../../../temple_detail/bloc/temple_detail_event.dart';
import '../bloc/temple_bloc.dart';
import '../bloc/temple_event.dart';
import '../bloc/temple_state.dart';
import 'component/temple_card.dart';

class TempleList extends StatelessWidget {
  const TempleList({super.key});

  @override
  Widget build(BuildContext context) {
    // 🔥 Fetch API only once using addPostFrameCallback (NOT inside build)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<TempleBloc>().add(LoadTempleData());
    });

    return Scaffold(
      body: BlocConsumer<TempleBloc, TempleState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.templeList.isEmpty) {
            return Center(child: Text(context.l10n.noTemplesFound));
          }

          return Column(
            children: <Widget>[
              SizedBox(height: 32),
              TopBarComponent(
                horizontalPadding: 14,
                verticalPadding: 6,
                title: context.l10n.temples,
                onBackTap: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  } else {
                    BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
                  }
                  ;
                },
                showAction: false,
                actionIcon: Icons.favorite,
                onActionTap: () {
                },
              ),
             Expanded(child:  ListView.builder(
               padding: const EdgeInsets.all(16),
               itemCount: state.templeList.length,
               itemBuilder: (context, index) {
                 final temple = state.templeList[index];

                 return GestureDetector(
                   onTap: () {
                     BlocProvider.of<TempleDetailBloc>(context)
                         .add(LoadTempleDetail(temple));

                     Navigator.pushNamed(context, AppRoutes.TEMPLE_DETAIL);
                   },
                   child: Padding(
                     padding: const EdgeInsets.only(bottom: 12),
                     child: TempleCard(temple: temple),
                   ),
                 );
               },
             ))
            ],
          );
        },
      ),
    );
  }
}
