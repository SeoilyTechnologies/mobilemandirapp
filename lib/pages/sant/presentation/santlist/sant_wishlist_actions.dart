import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../mobile_mandir_home/data/entity/sant/sant_list/sant_list_response.dart';
import '../bloc/sant_bloc.dart';

void toggleSantListWishlist(BuildContext context, Sant sant) {
  context.read<SantBloc>().add(
    SantEvent.toggleWishlist(
      itemId: sant.id,
      itemModel: 'sant',
    ),
  );
}
