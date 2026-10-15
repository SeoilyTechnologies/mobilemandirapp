import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/pages/auth/profile/presentation/bloc/profile_bloc.dart';

import 'package:mandirapp/pages/mobile_mandir_home/presentation/bloc/mobile_home_bloc.dart';

import 'package:mandirapp/pages/wishlist/presentation/bloc/wishlist_bloc.dart';
import '../../../../common/local/SharedPrefs.dart';
import '../../../../common/network/app_constant.dart';
import '../../../../common/routes/exports.dart';
import '../../../../common/routes/routes.dart';
import '../../../../common/service_locator/setivelocator.dart';
import '../../../../common/utils/date_time_helper.dart';
import '../../../../common/utils/permission_helper.dart';
import '../../../../webb/UploadForm.dart';
import '../../../../webb/god_admin_dashboard.dart';
import '../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_bloc.dart';
import '../../../aarti_chalisa_list/presentation/bloc/aarti_chalisa_lsit_event.dart';
import '../../../application/presentatioin/bloc/app_bloc.dart';
import '../../../auth/profile/presentation/bloc/profile_event.dart';

import '../../../mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../../naamjaap/jaap_history/presentation/bloc/jaap_history_bloc.dart';
import '../../../naamjaap/jaappage_one/presentation/bloc/jaap_bloc.dart';
import '../../../naamjaap/jaappage_one/presentation/bloc/jaap_event.dart';
import '../../../sant/presentation/bloc/sant_bloc.dart';

import '../../../wishlist/presentation/bloc/wishlist_event.dart';
import '../bloc/splash_bloc.dart';
import '../bloc/splash_state.dart';
class NoInternetDialog extends StatelessWidget {
  final VoidCallback onRetry;

  const NoInternetDialog({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      title: Row(
        children: [
          const Icon(Icons.wifi_off, color: Colors.red),
          const SizedBox(width: 10),
          Text(context.l10n.noInternet),
        ],
      ),
      content: Text(
        context.l10n.checkInternet,
      ),
      actions: [
        ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
            final now = DateTime.now();

            BlocProvider.of<MobileHomeBloc>(context).add(
              MobileHomeEvent.getCalendarEvent(
                month: now.month,
                year: now.year,
              ),
            );

            BlocProvider.of<MobileHomeBloc>(
              context,
            ).add(MobileHomeEvent.getSantList());

          //  BlocProvider.of<JaapHistoryBloc>(context).add(const LoadHistory());

            BlocProvider.of<SantBloc>(context).add(SantEvent.started());

            BlocProvider.of<AppBloc>(context).add(TriggerAppEvent(0));
            BlocProvider.of<MobileHomeBloc>(
              context,
            ).add(MobileHomeEvent.getYoutubePlaylistVideos());

            // BlocProvider.of<JaapBloc>(context).add(JaapEvent.getMantra(""));
            BlocProvider.of<JaapBloc>(context).add(GetGodData());

            BlocProvider.of<MobileHomeBloc>(
              context,
            ).add(MobileHomeEvent.getYoutubePlaylistVideos());

            BlocProvider.of<MobileHomeBloc>(context).add(HomeGetBanner());
            BlocProvider.of<MobileHomeBloc>(
              context,
            ).add(GetPanchangByDate(day: 0, month: 0, year: 0));
            BlocProvider.of<MobileHomeBloc>(
              context,
            ).add(const MobileHomeEvent.loadPanchang());

            BlocProvider.of<AppBloc>(context).add(UserDataUpdate());

            BlocProvider.of<WishlistBloc>(context).add(GetWishlist(userId: ""));
            BlocProvider.of<JaapBloc>(context).add(GetWishlistMantra(userId: ""));

            BlocProvider.of<MobileHomeBloc>(
              context,
            ).add(GetDayAccordingAartiChalisa(type: "all"));
            BlocProvider.of<ProfileBloc>(
              context,
            ).add(const ProfileEvent.loadProfile());



            // BlocProvider.of<PenchangBloc>(
            //   context,
            // ).add(PenchangEvent.getTodayRashiList());

            // BlocProvider.of<MundanBloc>(context).add(GetMundanData({}));
            //  BlocProvider.of<GrihPraveshBloc>(
            //    context,
            //  ).add(GetGrihPraveshData({}));
            //  BlocProvider.of<AnparashnBloc>(context).add(GetAnparashanData({}));
            /// BlocProvider.of<MundanBloc>(context).add(GetMundanData({}));

            //   BlocProvider.of<TirthBloc>(context).add(FetchTirthList());

            //BlocProvider.of<AmavasyaBloc>(context).add(GetAmavasyaList({}));
            // BlocProvider.of<EkadashiBloc>(context).add(GetEkdashiList({}));
            BlocProvider.of<AartiChalisaLsitBloc>(
              context,
            ).add(GetFestivalList());
            BlocProvider.of<AartiChalisaLsitBloc>(context).add(GetGodList());
            // BlocProvider.of<GrahanBloc>(context).add(GetGrahanList({}));
            // BlocProvider.of<GrahgocharBloc>(context).add(GetGrahGocahrList({}));
            // BlocProvider.of<PurnimaBloc>(context).add(GetPurnimaList({}));

            BlocProvider.of<AartiChalisaLsitBloc>(
              context,
            ).add(GetAartiChalisaByType("aarti"));
            BlocProvider.of<MobileHomeBloc>(context).add(HomeMantra("mantra"));

            BlocProvider.of<AartiChalisaLsitBloc>(
              context,
            ).add(StoreType("aarti"));


          },
          child: Text(context.l10n.retry),
        )
      ],
    );
  }
}