class AppConstant {
  //static String get baseUrl => "http://localhost:5000/api/";
  // static String get baseUrl => "http://10.0.2.2:5000/api/";
  //static String get baseUrl => "http://mobilemandirapp.ap-south-1.elasticbeanstalk.com/api/";
  // static String get baseUrl => "https://mobilemandirapp.com/api/";
// static String get baseUrl => "https://admin.mobilemandirapp.com/api/api/";
  //static String get baseUrl => "https://2x29p7rg-5000.inc1.devtunnels.ms/api/";
 //static String get baseUrl => "https://release.mobilemandirapp.com/api/api/";
 static String get baseUrl => "https://admin.mobilemandirapp.com/api/api/";

  static String get fileBaseUrl => "https://cdn.mobilemandirapp.com/";

  static String get fileBaseUrl1 => "https://cdn.mobilemandirapp.com";

  static String get bearer => "Bearer ";

  static String get refreshToekn => "auth/refresh-token ";

  // static String get fileBaseUrl => "Bearer ";

  static String get createAccount => "register";

  static String get verifyOtp => "auth/verify-otp";

  static String get appVersion => "version";

  static String get loginWithPhoneno => "auth/phone/send-otp";

  static String get socialLogin => "auth/social-register";

  static String get guestLogin => "auth/guest-login";

  // static String get loginWithPhoneno => "auth/phone/quick-register";

  static String get verifyPhoneOtp => "auth/phone/verify-otp";

  static String get cateroiesList => "vendor/services-public";

  static String get deleteAccount => "auth/delete-account";

  static String get verifyForgetOtp => "auth/verify-forget-otp";

  //static String get resetPassword => "changes/password";
  static String get resetPassword => "auth/reset-password";

  static String get resendOtp => "send-otp";

  static String get forgetPassword => "auth/forgot-password";

  static String get login => "auth/login";

  static String get register => "auth/register";

  static String get getUserProfile => "user/profile";

  static String get updateUserProfile => "user/updateprofile";

  static String get panchang => "panchang/panchang"; //not in use

  static String get getTirthData => "tirth/all-tirth"; //not in use

  static String get pitruPaksha => "pitru-paksha";
  static String get pitruPakshaDetail => "pitru-paksha/detail";

  static String get getRashiList => "rashi"; //not in use

  static String get getTodayRashiData => "horscope/horscope-date"; //not in use

  static String get getSingleRashiToday => "horscope/single"; //not in use

  static String get getWishList => "wishlist/get-wishlist-formatted";

  static String get addRemoveWishlist => "wishlist/add-remove-wishlist";

  static String get godListdata => "god/all-god-data";

  static String get getGodDataForNaamJaap => "jaap/gods-with-mantras";

  static String get getAartiById => "chalisaaarti/aarti-by-id";

  static String get festivalDataList => "calendar/get-festivals";

  static String get exploareDetail =>
      "chalisaaarti/explore-detail"; //not in use

  static String get grahGochar => "grah-gochar/all-grah-gochar"; //not in use

  static String get vivahMuhurat =>
      "vivah-muhurat/all-vivah-muhurat"; //not in use

  static String get grahan => "grahan/all-grahan"; //not in use

  static String get mundan => "mundan/all-mundan"; //not in use

  static String get grihPraveshMuhurat =>
      "grihpravesh/all-grihpravesh"; //not in use

  static String get getUpnayanmuhurat => "upanayan/all-upanayan"; //not in use

  static String get getEkdashi => "ekadashi/all-ekadashi"; //not in use

  static String get getAmavasya => "amavasya/all-amavasya"; //not in use

  static String get getAnprashan =>
      "anprashan-muhurat/all-anprashan"; //not in use

  static String get getPurnima => "poornima/all-purnima"; //not in use

  static String get getFestivalData => "festivals/all-festival";

  static String get getSuvichar => "thoughts/all-thoughts"; //not in use

  static String get getGeetaSlokas => "solaka/get-geeta-sloakas"; //not in use

  static String get getVivekandQuotes =>
      "vivekanandQuote/all-vivekanadQuotes"; //not in use

  static String get getKabirDoha =>
      "kabirQuote/get-all-kabir-doha"; //not in use

  static String get getCalendarEvents => "calendar/events";

  static String get getPanchangByDate => "calendar/by-date";

  static String get getSantList => "sant/santlist";

  static String get getSearchAartiChalisa =>
      "chalisaaarti/search-aarti-chalisa-mantra";

  static String get getSantListByName => "sant/search-sant-by-name";

  static String get getSantListByAlphabet => "sant/filter-by-alphabet";

  static String get getSantById => "sant/get-sant-by-id";

  static String get getBannerList => "banner/list";

  static String get getChalisaAartiDayWise =>
      "chalisaaarti/day-wise-chalisa-aartii";

  static String get getChalisaAartiGodWise =>
      "chalisaaarti/god-wise-chalisa-aarti";

  static String get getNextThreeDayAarti => "chalisaaarti/auto-context-aarti";

  static String get getAartiChalisaWithType =>
      "chalisaaarti/all-filter-chalisa-mantaa";

  static const String createJaapSession = 'jaap/create';
  static const String updateJaapProgress = 'jaap/update';
  static const String getJaapHistory = 'jaap/history';
  static const String getJaapComplete = 'jaap/complete';
  static const String getTithiLIst = 'god/lookups/tithi';

  static const String getGodHomeListApi = 'god/mobile-list';
  static const String getGodById = 'god/god-by-id/';
  // Slug-based lookup (deep-link use case: /go/god/shiv-ji)
  // Backend endpoint: GET god/god-by-slug/:slug?lang=en
  static const String getGodBySlug = 'god/god-by-slug/';

  static const String getTempleById = 'temple/temple-by-id/';
  // Slug-based lookup (deep-link use case: /go/temple/vishnu-temple)
  // Backend endpoint: GET temple/temple-by-slug/:slug?lang=en
  static const String getTempleBySlug = 'temple/temple-by-slug/';


  static const String getTempleHomeListAPi = 'temple/mobile-list';
  static const String getTemplePopulrListApi = 'temple/mobile-popular';

  static const String getSewaPriceList = 'vendor/services-public';
  static const String getSchedulePreview = 'user/seva/schedule-preview';
  static const String getPricingTax = 'user/seva/pricing';
  static const String sevaOrderBook = 'user/seva/orders';
  static const String sevaSubscriptionBook = 'user/seva/subscriptions';
  static const String verifyOrder = 'user/seva/';
  static const String getPopularGodList = 'god/mobile-popular';
  static const String domainBasseUrl = "https://mobilemandirapp.com";
  static const String templeShareSlugBaseUrl = '$domainBasseUrl/go/temple/';
  static const String godShareSlugBaseUrl = '$domainBasseUrl/go/';
  static const String gloablSearch = 'search/global';
  static const String rewardOverview = 'rewards/overview';
  static const String rewardTrackListen = 'rewards/track/listen';

  //sharedpreference kye
  static const String localeKey = 'selected_locale';
  static const String userModel = 'user_model';
  static const String token = 'token';
  static const String sessionId = "jaap_session_id";
  static const String pendingDelta = "jaap_pending_delta";
  static const String pendingCount = "jaap_pending_count";
  static const String duration = "jaap_duration";
  static const String onBoardinPage = 'onBoarding';
  static const String pendingJaap = "pending_jaap";
}
