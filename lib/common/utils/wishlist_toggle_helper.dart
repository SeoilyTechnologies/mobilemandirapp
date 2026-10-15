import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../local/SharedPrefs.dart';
import '../network/app_constant.dart';
import '../service_locator/setivelocator.dart';
import '../../pages/auth/signin/data/entity/login_response.dart';
import '../../pages/auth/signin/presentation/ui/component/login_require_dialog.dart';
import '../../pages/mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';
import '../../pages/mobile_mandir_home/presentation/bloc/mobile_home_event.dart';

void toggleAartiBhajanWishlist(
  BuildContext context, {
  required String itemId,
  required String itemModel,
}) {
  final prefs = getIt<SharedPrefs>();
  final LoginResponse? userData = prefs.getModel<LoginResponse>(
    AppConstant.userModel,
    (json) => LoginResponse.fromJson(json),
  );

  if (userData?.user.isGuest ?? true) {
    LoginRequiredDialog.show(context);
    return;
  }

  context.read<MobileHomeBloc>().add(
    MobileHomeEvent.bhajanToggleWishlist(
      itemId: itemId,
      itemModel: itemModel,
    ),
  );
}
