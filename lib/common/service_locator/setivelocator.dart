import 'package:get_it/get_it.dart';
import 'package:mandirapp/pages/auth/otp/data/repoImpl/otp_repositery_impl.dart';
import 'package:mandirapp/pages/auth/otp/domain/repositery/otp_repositery.dart';
import 'package:mandirapp/pages/auth/otp/domain/usecase/otp_usecase.dart';
import 'package:mandirapp/pages/notification/data/repoImpl/notification_repository_impl.dart';
import 'package:mandirapp/pages/notification/domain/repo/notification_repository.dart';
import 'package:mandirapp/pages/notification/domain/usecase/get_notifications_usecase.dart';
import 'package:mandirapp/pages/notification/domain/usecase/mark_notification_read_usecase.dart';
import 'package:mandirapp/pages/auth/signin/data/repoImpl/login_repositery_impl.dart';
import 'package:mandirapp/pages/auth/signin/domain/usecase/login_usecase.dart';
import 'package:mandirapp/pages/auth/signup/data/repoImpl/signup_repo_impl.dart';
import 'package:mandirapp/pages/auth/signup/domain/repo/signup_repositery.dart';
import 'package:mandirapp/pages/auth/signup/domain/usecase/signup_usecase.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../pages/aarti_chalisa_list/data/repoImpl/aarti_chalisa_katha_repositery_impl.dart';
import '../../pages/aarti_chalisa_list/domain/repositery/aarti_chalisa_katha_repositery.dart';
import '../../pages/aarti_chalisa_list/domain/usecase/aarti_chalisa_katha_usecase.dart';
import '../../pages/auth/forgotpassword/data/repoimpl/forgot_password_repo_impl.dart';
import '../../pages/auth/forgotpassword/domain/repositery/forgot_password_repo.dart';
import '../../pages/auth/forgotpassword/domain/usecase/forgot_password_usecase.dart';
import '../../pages/auth/resetpassword/data/respoimpl/reset_password_impl.dart';
import '../../pages/auth/resetpassword/domain/repositery/reset_password_repositery.dart';
import '../../pages/auth/resetpassword/domain/usecase/reset_password_usecase.dart';
import '../../pages/auth/signin/domain/repositery/login_repositery.dart';
import '../../pages/auth/user_profile_complete/data/repoImpl/complete_profile_repository_impl.dart';
import '../../pages/auth/user_profile_complete/domain/repositery/complete_profile_repository.dart';
import '../../pages/auth/user_profile_complete/domain/usecase/complete_profile_usecase.dart';


import '../../pages/god_detail/data/repoImpl/god_details_repositery_impl.dart';
import '../../pages/god_detail/domain/repositery/god_detail_repositery.dart';
import '../../pages/god_detail/domain/usecase/god_detail_usecase.dart';
import '../../pages/mobile_mandir_home/data/repoImpl/mobile_home_rep_impl.dart';
import '../../pages/mobile_mandir_home/domain/repo/mobile_home_repo.dart';
import '../../pages/mobile_mandir_home/domain/usecase/mobile_home_usecase.dart';
import '../../pages/mobile_mandir_home/presentation/ui/audio_player_service.dart';
import '../../pages/naamjaap/jaappage_one/data/repoImpl/jaap_repo_impl.dart';
import '../../pages/naamjaap/jaappage_one/domain/repo/jaap_repo.dart';
import '../../pages/naamjaap/jaappage_one/domain/usecase/jaap_usecase.dart';
import '../../pages/notification/domain/usecase/unread_notification_count_use_case.dart';

import '../../pages/sewa_module/select_category/data/repoImpl/category_repo_impl.dart';
import '../../pages/sewa_module/select_category/domain/repositery/categories_repositery.dart';
import '../../pages/sewa_module/select_category/domain/usecase/categoreis_usecase.dart';
import '../../pages/sewa_module/sewa_page/data/repoImpl/sewa_page_repositery_impl.dart';
import '../../pages/sewa_module/sewa_page/domain/repositery/sewa_page_repositery.dart';
import '../../pages/sewa_module/sewa_page/domain/usecase/sewa_page_usecase.dart';
import '../../pages/seva_history/data/repository_impl/seva_history_repository_impl.dart';
import '../../pages/seva_history/domain/repository/seva_history_repository.dart';
import '../../pages/seva_history/domain/usecase/seva_history_usecase.dart';


import '../../pages/wishlist/data/repoImpl/wishlist_repositery_impl.dart';
import '../../pages/wishlist/domain/repositery/wishlist_repositery.dart';
import '../../pages/wishlist/domain/usecase/wishlist_usecase.dart';
import '../../pages/sharad_pitarpaksh/data/repoImpl/pitru_paksha_repo_impl.dart';
import '../../pages/sharad_pitarpaksh/domain/repo/pitru_paksha_repo.dart';
import '../../pages/sharad_pitarpaksh/domain/usecase/pitru_paksha_usecase.dart';
import '../current_location/location_service.dart';
import '../local/SharedPrefs.dart';
import '../network/api_services.dart';
import '../network/app_constant.dart';
import 'service_export.dart';

final GetIt getIt = GetIt.instance;

Future<void> serviceLocator() async {
  // Initialize SharedPreferences first
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<LocationService>(() => LocationService());

  // Register SharedPrefs with the initialized SharedPreferences
  getIt.registerLazySingleton<SharedPrefs>(
    () => SharedPrefs(sharedPreferences),
  );

  getIt.registerLazySingleton<ApiServices>(
    () => ApiServices(AppConstant.baseUrl),
  );

  /*Login*/
  getIt.registerLazySingleton<LoginRepositery>(() => LoginRepositeryImpl());
  getIt.registerLazySingleton<LoginUsecase>(
    () => LoginUsecase(getIt<LoginRepositery>()),
  );

  /*Send Otp*/
  getIt.registerLazySingleton<SignupRepositery>(() => SignupRepoImpl());
  getIt.registerLazySingleton<SignupUsecase>(
    () => SignupUsecase(getIt<SignupRepositery>()),
  );

  /*Verify Otp*/
  getIt.registerLazySingleton<OtpRepositery>(() => OtpRepositeryImpl());
  getIt.registerLazySingleton<OtpUsecase>(
    () => OtpUsecase(getIt<OtpRepositery>()),
  );

  /*Complete Profile*/
  getIt.registerLazySingleton<CompleteProfileRepository>(
    () => CompleteProfileRepositoryImpl(),
  );
  getIt.registerLazySingleton<CompleteProfileUsecase>(
    () => CompleteProfileUsecase(getIt<CompleteProfileRepository>()),
  );

  /*reset password*/
  getIt.registerLazySingleton<ResetPasswrodRepositery>(
    () => ResetPasswordImpl(),
  );
  getIt.registerLazySingleton<ResetPasswordUsecase>(
    () => ResetPasswordUsecase(getIt<ResetPasswrodRepositery>()),
  );

  getIt.registerLazySingleton<ForgotPasswordRepositery>(
    () => ForgotPasswordImpl(),
  );
  getIt.registerLazySingleton<ForgotPasswordUseCase>(
    () => ForgotPasswordUseCase(getIt<ForgotPasswordRepositery>()),
  );



  /*aarti list wity type */
  getIt.registerLazySingleton<AartiChalisaKathaRepositery>(
    () => AartiChalisaKathaRepositeryImpl(),
  );
  getIt.registerLazySingleton<AartiChalisaKathaUsecase>(
    () => AartiChalisaKathaUsecase(getIt<AartiChalisaKathaRepositery>()),
  );

  /*wishlit  */
  getIt.registerLazySingleton<WishlistRepositery>(
    () => WishlistRepositeryImpl(),
  );
  getIt.registerLazySingleton<WishlistUsecase>(
    () => WishlistUsecase(getIt<WishlistRepositery>()),
  );

  /*mobile home  */
  getIt.registerLazySingleton<MobileHomeRepo>(() => MobileHomeRepImpl());
  getIt.registerLazySingleton<MobileHomeUsecase>(
    () => MobileHomeUsecase(getIt<MobileHomeRepo>()),
  );



  /* ✅ Audio Player Service (yahi instance wala kaam) */
  getIt.registerLazySingleton<AudioPlayerService>(() => AudioPlayerService());


  getIt.registerLazySingleton<JaapRepo>(() => JaapRepoImpl());
  getIt.registerLazySingleton<JaapUsecase>(
    () => JaapUsecase(getIt<JaapRepo>()),
  );

  /*vendopr   */
  getIt.registerLazySingleton<CategoriesRepositery>(() => CategoryRepoImpl());
  getIt.registerLazySingleton<CategoreisUsecase>(
    () => CategoreisUsecase(getIt<CategoriesRepositery>()),
  );

  /*vendopr   */
  getIt.registerLazySingleton<GodDetailRepositery>(
    () => GodDetailsRepositeryImpl(),
  );
  getIt.registerLazySingleton<GodDetailUsecase>(
    () => GodDetailUsecase(getIt<GodDetailRepositery>()),
  );

  /*sewa page price listing   */
  getIt.registerLazySingleton<SewaPageRepositery>(
        () => SewaPageRepositeryImpl(),
  );
  getIt.registerLazySingleton<SewaPageUsecase>(
        () => SewaPageUsecase(getIt<SewaPageRepositery>()),
  );

  getIt.registerLazySingleton<SevaHistoryRepository>(
        () => SevaHistoryRepositoryImpl(),
  );
  getIt.registerLazySingleton<SevaHistoryUsecase>(
        () => SevaHistoryUsecase(getIt<SevaHistoryRepository>()),
  );

  /* notifications */
  getIt.registerLazySingleton<NotificationRepository>(() => NotificationRepositoryImpl());
  getIt.registerLazySingleton<GetNotificationsUseCase>(
    () => GetNotificationsUseCase(getIt<NotificationRepository>()),
  );
  getIt.registerLazySingleton<MarkNotificationReadUseCase>(
    () => MarkNotificationReadUseCase(getIt<NotificationRepository>()),
  );

  getIt.registerLazySingleton<UnreadNotificationCountUseCase>(
        () => UnreadNotificationCountUseCase(
      getIt<NotificationRepository>(),
    ),
  );

  /* pitru paksha */
  getIt.registerLazySingleton<PitruPakshaRepo>(() => PitruPakshaRepoImpl());
  getIt.registerLazySingleton<PitruPakshaUsecase>(
    () => PitruPakshaUsecase(getIt<PitruPakshaRepo>()),
  );
}
