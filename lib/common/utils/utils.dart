import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';
import '../../pages/mobile_mandir_home/presentation/bloc/mobile_home_event.dart';
import '../../pages/mobile_mandir_home/presentation/bloc/mobile_home_state.dart';
import '../../pages/mobile_mandir_home/presentation/ui/component/common_top_banner/common_top_banner.dart';
import '../../pages/mobile_mandir_home/presentation/ui/updated_component/aarti_slider_carousel_slider.dart';
import '../component/skeleton_loader.dart';
import '../routes/exports.dart';
import 'package:mandirapp/common/utils/share_helper.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils {
  static List<String> getAlphabetList(BuildContext context) {
    final isHindi = Localizations.localeOf(context).languageCode == 'hi';
    if (isHindi) {
      return const [
        "अ", "आ", "इ", "ई", "उ", "ऊ", "ए", "ऐ", "ओ", "औ",
        "क", "ख", "ग", "घ", "च", "छ", "ज", "झ", "ट", "ठ",
        "ड", "ढ", "त", "थ", "द", "ध", "न", "प", "फ", "ब",
        "भ", "म", "य", "र", "ल", "व", "श", "ष", "स", "ह"
      ];
    } else {
      return const [
        "A", "B", "C", "D", "E", "F", "G", "H", "I", "J",
        "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T",
        "U", "V", "W", "X", "Y", "Z"
      ];
    }
  }

  static List<String> getAnimatedSearchHints(BuildContext context) {
    final isHindi = Localizations.localeOf(context).languageCode == 'hi';
    if (isHindi) {
      return const [
        "प्रेमानंद महाराज",
        "केदारनाथ मंदिर",
        "राधा आरती",
        "दुर्गा आरती",
        "हनुमान आरती",
        "शिव मंदिर",
        "कृष्ण भजन",
        "दुर्गा चालीसा",
      ];
    } else {
      return const [
        "Premanand Maharaj",
        "KedarNath Temple",
        "Radha Aarti",
        "Durga Aarti",
        "Hanuman Aarti",
        "Shiv Temple",
        "Krishna Bhajan",
        "Durga Chalisa",
      ];
    }
  }

  static String getDayName(String day, [BuildContext? context, bool shortEnglish = false]) {
    final isHindi = context != null && Localizations.localeOf(context).languageCode == 'hi';
    switch (day.toLowerCase()) {
      case 'mon':
      case 'monday':
        return isHindi ? 'सोमवार' : (shortEnglish ? 'Mon' : 'Monday');
      case 'tue':
      case 'tuesday':
        return isHindi ? 'मंगलवार' : (shortEnglish ? 'Tue' : 'Tuesday');
      case 'wed':
      case 'wednesday':
        return isHindi ? 'बुधवार' : (shortEnglish ? 'Wed' : 'Wednesday');
      case 'thu':
      case 'thursday':
        return isHindi ? 'गुरुवार' : (shortEnglish ? 'Thu' : 'Thursday');
      case 'fri':
      case 'friday':
        return isHindi ? 'शुक्रवार' : (shortEnglish ? 'Fri' : 'Friday');
      case 'sat':
      case 'saturday':
        return isHindi ? 'शनिवार' : (shortEnglish ? 'Sat' : 'Saturday');
      case 'sun':
      case 'sunday':
        return isHindi ? 'रविवार' : (shortEnglish ? 'Sun' : 'Sunday');
      default:
        return day;
    }
  }

  static String getLocalizedTrackType(String type, BuildContext context) {
    final isHindi = Localizations.localeOf(context).languageCode == 'hi';
    final cleanType = type.trim().toLowerCase();
    if (isHindi) {
      switch (cleanType) {
        case 'aarti':
        case 'aarties':
          return 'आरती';
        case 'chalisa':
          return 'चालीसा';
        case 'bhajan':
          return 'भजन';
        case 'mantra':
          return 'मंत्र';
        case 'katha':
          return 'कथा';
        case 'stotra':
        case 'stotram':
          return 'स्तोत्र';
        case 'amritvani':
          return 'अमृतवाणी';
        case 'ashtakam':
          return 'अष्टकम';
        case 'sunderkand':
          return 'सुंदरकांड';
        case 'paath':
        case 'path':
          return 'पाठ';
        case 'dhun':
          return 'धुन';
        case 'namavali':
          return 'नामावली';
        case 'geet':
          return 'गीत';
        case 'god':
          return 'भगवान';
        case 'temple':
          return 'मंदिर';
        case 'sant':
          return 'संत';
        default:
          return capitalizeFirstLetter(type);
      }
    } else {
      switch (cleanType) {
        case 'aarties':
          return 'Aarti';
        case 'stotram':
          return 'Stotra';
        default:
          return capitalizeFirstLetter(type);
      }
    }
  }

  Future<void> shareOnWhatsapp({
    required String message,
    required String url,
  }) async {
    final String text = "$message\n$url";

    final Uri whatsappUrl = Uri.parse(
      "https://wa.me/?text=${Uri.encodeComponent(text)}",
    );

    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(
        whatsappUrl,
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw Exception("Could not launch WhatsApp");
    }
  }

 static Future<void> openUrl({
    required String url,
  }) async {
    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw Exception("Could not launch URL");
    }
  }

  static Future<void> openMapLocation({
    required double latitude,
    required double longitude,
    required String placeName,
  }) async {
    final encodedName = Uri.encodeComponent(placeName);

    final url = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude($encodedName)',
    );

    await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    );
  }

  static const List<String> tithiMap = [
    "Amavasya", // 0
    "Pratipada", // 1
    "Dvitiya", // 2
    "Tritiya", // 3
    "Chaturthi", // 4
    "Panchami", // 5
    "Shashthi", // 6
    "Saptami", // 7
    "Ashtami", // 8
    "Navami", // 9
    "Dashami", // 10
    "Ekadashi", // 11
    "Dwadashi", // 12
    "Trayodashi", // 13
    "Chaturdashi", // 14
    "Purnima", // 15
    "Pratipada (K)", // 16
    "Dvitiya (K)", // 17
    "Tritiya (K)", // 18
    "Chaturthi (K)", // 19
    "Panchami (K)", // 20
    "Shashthi (K)", // 21
    "Saptami (K)", // 22
    "Ashtami (K)", // 23
    "Navami (K)", // 24
    "Dashami (K)", // 25
    "Ekadashi (K)", // 26
    "Dwadashi (K)", // 27
    "Trayodashi (K)", // 28
    "Chaturdashi (K)", // 29
  ];

  static const List<String> nakshatraMap = [
    "Revati", // 0
    "Ashwini", // 1
    "Bharani", // 2
    "Krittika", // 3
    "Rohini", // 4
    "Mrigashirsha", // 5
    "Ardra", // 6
    "Punarvasu", // 7
    "Pushya", // 8
    "Ashlesha", // 9
    "Magha", // 10
    "Purva Phalguni", // 11
    "Uttara Phalguni", // 12
    "Hasta", // 13
    "Chitra", // 14
    "Swati", // 15
    "Vishakha", // 16
    "Anuradha", // 17
    "Jyeshtha", // 18
    "Mula", // 19
    "Purva Ashadha", // 20
    "Uttara Ashadha", // 21
    "Shravana", // 22
    "Dhanishta", // 23
    "Shatabhisha", // 24
    "Purva Bhadrapada", // 25
    "Uttara Bhadrapada", // 26
  ];

  static const List<String> tithiMapHindi = [
    "अमावस्या", // 0
    "प्रतिपदा", // 1
    "द्वितीया", // 2
    "तृतीया", // 3
    "चतुर्थी", // 4
    "पंचमी", // 5
    "षष्ठी", // 6
    "सप्तमी", // 7
    "अष्टमी", // 8
    "नवमी", // 9
    "दशमी", // 10
    "एकादशी", // 11
    "द्वादशी", // 12
    "त्रयोदशी", // 13
    "चतुर्दशी", // 14
    "पूर्णिमा", // 15
    "प्रतिपदा (कृष्ण)", // 16
    "द्वितीया (कृष्ण)", // 17
    "तृतीया (कृष्ण)", // 18
    "चतुर्थी (कृष्ण)", // 19
    "पंचमी (कृष्ण)", // 20
    "षष्ठी (कृष्ण)", // 21
    "सप्तमी (कृष्ण)", // 22
    "अष्टमी (कृष्ण)", // 23
    "नवमी (कृष्ण)", // 24
    "दशमी (कृष्ण)", // 25
    "एकादशी (कृष्ण)", // 26
    "द्वादशी (कृष्ण)", // 27
    "त्रयोदशी (कृष्ण)", // 28
    "चतुर्दशी (कृष्ण)", // 29
  ];

  static const List<String> nakshatraMapHindi = [
    "रेवती", // 0
    "अश्विनी", // 1
    "भरणी", // 2
    "कृत्तिका", // 3
    "रोहिणी", // 4
    "मृगशिरा", // 5
    "आर्द्रा", // 6
    "पुनर्वसु", // 7
    "पुष्य", // 8
    "आश्लेषा", // 9
    "मघा", // 10
    "पूर्वा फाल्गुनी", // 11
    "उत्तरा फाल्गुनी", // 12
    "हस्त", // 13
    "चित्रा", // 14
    "स्वाति", // 15
    "विशाखा", // 16
    "अनुराधा", // 17
    "ज्येष्ठा", // 18
    "मूल", // 19
    "पूर्वाषाढ़ा", // 20
    "उत्तराषाढ़ा", // 21
    "श्रवण", // 22
    "धनिष्ठा", // 23
    "शतभिषा", // 24
    "पूर्वा भाद्रपद", // 25
    "उत्तरा भाद्रपद", // 26
  ];

  static String getTithiName(int index, [BuildContext? context]) {
    if (index < 0 || index >= tithiMap.length) return '';
    final isHindi = context != null && Localizations.localeOf(context).languageCode == 'hi';
    return isHindi ? tithiMapHindi[index] : tithiMap[index];
  }

  static String getNakshatraName(int index, [BuildContext? context]) {
    if (index < 0 || index >= nakshatraMap.length) return '';
    final isHindi = context != null && Localizations.localeOf(context).languageCode == 'hi';
    return isHindi ? nakshatraMapHindi[index] : nakshatraMap[index];
  }

  static void LogPrintss(Object object) async {
 //    int defaultPrintLength = 1020;
 //    if (object == null || object.toString().length <= defaultPrintLength) {
 //      debugPrint(object.toString());
 //    } else {
 //      String log = object.toString();
 //      int start = 0;
 //      int endIndex = defaultPrintLength;
 //      int logLength = log.length;
 //      int tmpLogLength = log.length;
 //      while (endIndex < logLength) {
 //        debugPrint(log.substring(start, endIndex));
 //        endIndex += defaultPrintLength;
 //        start += defaultPrintLength;
 //        tmpLogLength -= defaultPrintLength;
 //      }
 //      if (tmpLogLength > 0) {
 // debugPrint(log.substring(start, logLength));
 //      }
 //    }
  }
  static void LogPrint(Object object) {
    const int defaultPrintLength = 1000;
    final String log = object.toString();
    if (log.length <= defaultPrintLength) {
      print(log);
    } else {
      int start = 0;
      while (start < log.length) {
        int end = start + defaultPrintLength;
        if (end > log.length) end = log.length;
        print(log.substring(start, end));
        start = end;
      }
    }
  }

  static void LogPrintdd(Object object) async {
    // int defaultPrintLength = 1020;
    // if (object == null || object.toString().length <= defaultPrintLength) {
    //     debugPrint(object.toString());
    // } else {
    //   String log = object.toString();
    //   int start = 0;
    //   int endIndex = defaultPrintLength;
    //   int logLength = log.length;
    //   int tmpLogLength = log.length;
    //   while (endIndex < logLength) {
    //     debugPrint(log.substring(start, endIndex));
    //     endIndex += defaultPrintLength;
    //     start += defaultPrintLength;
    //     tmpLogLength -= defaultPrintLength;
    //   }
    //   if (tmpLogLength > 0) {
    //      debugPrint(log.substring(start, logLength));
    //   }
    // }
  }


 static void LogPrintddddd(Object object) async {
   // int defaultPrintLength = 1020;
   // if (object == null || object.toString().length <= defaultPrintLength) {
   //   debugPrint(object.toString());
   // } else {
   //   String log = object.toString();
   //   int start = 0;
   //   int endIndex = defaultPrintLength;
   //   int logLength = log.length;
   //   int tmpLogLength = log.length;
   //   while (endIndex < logLength) {
   //     debugPrint(log.substring(start, endIndex));
   //     endIndex += defaultPrintLength;
   //     start += defaultPrintLength;
   //     tmpLogLength -= defaultPrintLength;
   //   }
   //   if (tmpLogLength > 0) {
   //     debugPrint(log.substring(start, logLength));
   //   }
   // }
 }



  static String getHeaderBackground(int index) {
    switch (index) {
      case 0:
        return "assets/background/home_header_all.jpg";
      case 1:
        return "assets/background/for_you_background.png";
      case 2:
        return "assets/background/temple_top_backgroun.png";
      case 3:
        return "assets/background/god_top_background.png";
      case 4:
        return "assets/background/sewa_top_background.png";
      case 5:
        return "assets/background/sant_top_background.png";
      case 6:
        return "assets/background/reward_background.png";
      default:
        return "assets/background/home_header_all.jpg";
    }
  }
  static String formatDate(String apiDate) {
    if (apiDate.trim().isEmpty) return '';

    try {
      final date = DateTime.parse(apiDate);
      return DateFormat('EEEE, dd-MM-yyyy').format(date);
    } catch (e) {
      return '';
    }
  }

  static Widget getTopBanner(BuildContext context, MobileHomeState state) {
    switch (state.topTabIndex) {
      case 0:
        return state.filterBasedBanners.isEmpty
            ? const SizedBox()
            : AartiCarouselSlider(
                onPageChanged: (index) {
                  context.read<MobileHomeBloc>().add(
                    MobileHomeEvent.updateBannerIndex(index),
                  );
                },
                items: state.filterBasedBanners,
              );

      case 1:
        return CommonTopBanner(
          position: 1,
          title: context.l10n.yourFavoriteDivineMoments,
          subtitle: context.l10n.revisitSavedItems,
          image: "assets/new_design/icon/for_you_checklist.png",
          background: "assets/background/for_you_back_new.png",
        );

      case 2:
        return CommonTopBanner(
          position: 2,
          title: context.l10n.spiritualTempleJourney,
          subtitle: context.l10n.findFamousTemples,
          image: "assets/new_design/icon/temple_top_dialog.png",
          background: "assets/background/temple_new_back_dd.png",
        );

      case 3:
        return CommonTopBanner(
          position: 3,
          title: context.l10n.spiritualGodCollection,
          subtitle: context.l10n.godsDevtaAndMore,
          image: "assets/new_design/icon/god_top.png",
          background: "assets/background/god_new_back_dd.png",
        );

      case 4:
        return CommonTopBanner(
          position: 4,
          title: context.l10n.allAvailableSevas,
          subtitle: context.l10n.getBlessingBySevas,
          image: "assets/new_design/icon/sewa_top.png",
          background: "assets/background/sewa_new_back_dd.png",
        );
      case 5:
        return CommonTopBanner(
          position: 5,
          title: context.l10n.allSantPujaris,
          subtitle: context.l10n.discoverSpiritualPersonalities,
          image: "assets/new_design/icon/sant_image.png",
          background: "assets/background/sant_new_back_dd.png",
        );

      case 6:
        return CommonTopBanner(
          position: 6,
          title: context.l10n.engageEarnRewards,
          subtitle: context.l10n.redeemCoinsGetBenefits,
          image: "assets/new_design/icon/reward_image.png",
          background: "assets/background/reward_new_back_dd.png",
        );

      default:
        return const SizedBox();
    }
  }
  static void shareWithSlugApp({String? message, required String url}) {
    ShareHelper.shareGenericUrl(url: url, message: message);
  }

 static String capitalizeFirstLetter(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }

  static Color hexToColor(String hexColor) {
    hexColor = hexColor.replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor'; // Add opacity
    }
    return Color(int.parse(hexColor, radix: 16));
  }
}
