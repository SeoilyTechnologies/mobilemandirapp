import 'dart:io';

import '../routes/exports.dart';

import '../values/app_color.dart';
import '../values/fonts.dart';

import 'dart:io';

import '../routes/exports.dart';
import '../values/app_color.dart';
import '../values/fonts.dart';

class AppTextStyle {
  // ================= GILROY =================

  static TextStyle gilroyThin(
      double fontSize, {
        Color color = AppColor.appBlack,
        FontWeight? fontWeight,
        double? height,
        double? letterSpacing,
      }) {
    return TextStyle(
      fontFamily: AppFont.gilroyThin,
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle gilroyUltraLight(
      double fontSize, {
        Color color = AppColor.appBlack,
        FontWeight? fontWeight,
        double? height,
        double? letterSpacing,
      }) {
    return TextStyle(
      fontFamily: AppFont.gilroyUltraLight,
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle gilroyLight(
      double fontSize, {
        Color color = AppColor.appBlack,
        FontWeight? fontWeight,
        double? height,
        double? letterSpacing,
      }) {
    return TextStyle(
      fontFamily: AppFont.gilroyLight,
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle gilroyRegular(
      double fontSize, {
        Color color = AppColor.appBlack,
        FontWeight? fontWeight,
        double? height,
        double? letterSpacing,
      }) {
    return TextStyle(
      fontFamily: AppFont.gilroyRegular,
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle gilroyMedium(
      double fontSize, {
        Color color = AppColor.appBlack,
        FontWeight? fontWeight,
        double? height,
        double? letterSpacing,
      }) {
    return TextStyle(
      fontFamily: AppFont.gilroyMedium,
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle gilroySemiBold(
      double fontSize, {
        Color color = AppColor.appBlack,
        FontWeight? fontWeight,
        double? height,
        double? letterSpacing,
      }) {
    return TextStyle(
      fontFamily: AppFont.gilroySemiBold,
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle gilroyBold(
      double fontSize, {
        Color color = AppColor.appBlack,
        FontWeight? fontWeight,
        double? height,
        double? letterSpacing,
      }) {
    return TextStyle(
      fontFamily: AppFont.gilroyBold,
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle gilroyExtraBold(
      double fontSize, {
        Color color = AppColor.appBlack,
        FontWeight? fontWeight,
        double? height,
        double? letterSpacing,
      }) {
    return TextStyle(
      fontFamily: AppFont.gilroyExtraBold,
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle gilroyHeavy(
      double fontSize, {
        Color color = AppColor.appBlack,
        FontWeight? fontWeight,
        double? height,
        double? letterSpacing,
      }) {
    return TextStyle(
      fontFamily: AppFont.gilroyHeavy,
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle gilroyBlack(
      double fontSize, {
        Color color = AppColor.appBlack,
        FontWeight? fontWeight,
        double? height,
        double? letterSpacing,
      }) {
    return TextStyle(
      fontFamily: AppFont.gilroyBlack,
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  // ================= URBANIST =================

  static TextStyle medium(
      double fontsize, {
        Color color = AppColor.appWhiteColor,
        FontWeight? fontWeight,
        double? height,
        double? letterSpacing,
      }) {
    return TextStyle(
      color: color,
      fontFamily: AppFont.urbanistMedium,
      fontSize: fontsize,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle semiBold(
      double fontsize, {
        Color color = AppColor.appWhiteColor,
        FontWeight? fontWeight,
        double? height,
        double? letterSpacing,
      }) {
    return TextStyle(
      color: color,
      fontFamily: AppFont.urbanistSemiBold,
      fontSize: fontsize,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle lightText(
      double fontsize, {
        Color color = AppColor.appWhiteColor,
        FontWeight? fontWeight,
        double? height,
        double? letterSpacing,
      }) {
    return TextStyle(
      color: color,
      fontFamily: AppFont.urbanistLight,
      fontSize: fontsize,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle bold(
      double fontsize, {
        Color color = AppColor.appBlack,
        FontWeight? fontWeight,
        double? height,
        double? letterSpacing,
      }) {
    return TextStyle(
      color: color,
      fontFamily: AppFont.urbanistBold,
      fontSize: fontsize,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle regular(
      double fontsize, {
        Color color = AppColor.appBlack,
        FontWeight? fontWeight,
        double? height,
        double? letterSpacing,
      }) {
    return TextStyle(
      color: color,
      fontFamily: AppFont.urbanistRegular,
      fontSize: fontsize,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  // ================= PADDING =================

  static EdgeInsetsGeometry commonPadding() {
    return EdgeInsets.only(
      top: Platform.isAndroid ? 32.0 : 39.0,
      bottom: 10.0,
    );
  }

  static EdgeInsetsGeometry commonPadding11() {
    return EdgeInsets.only(
      top: Platform.isAndroid ? 32.0 : 39.0,
      bottom: 10.0,
    );
  }
}
// class AppTextStyle {
//
//
//   // ================= GILROY =================
//
//   static TextStyle gilroyThin(
//       double fontSize, {
//         Color color = AppColor.appBlack,
//       }) {
//     return TextStyle(
//       fontFamily: AppFont.gilroyThin,
//       fontSize: fontSize,
//       color: color,
//     );
//   }
//
//   static TextStyle gilroyUltraLight(
//       double fontSize, {
//         Color color = AppColor.appBlack,
//       }) {
//     return TextStyle(
//       fontFamily: AppFont.gilroyUltraLight,
//       fontSize: fontSize,
//       color: color,
//     );
//   }
//
//   static TextStyle gilroyLight(
//       double fontSize, {
//         Color color = AppColor.appBlack,
//       }) {
//     return TextStyle(
//       fontFamily: AppFont.gilroyLight,
//       fontSize: fontSize,
//       color: color,
//     );
//   }
//
//   static TextStyle gilroyRegular(
//       double fontSize, {
//         Color color = AppColor.appBlack,
//       }) {
//     return TextStyle(
//       fontFamily: AppFont.gilroyRegular,
//       fontSize: fontSize,
//       color: color,
//     );
//   }
//
//   static TextStyle gilroyMedium(
//       double fontSize, {
//         Color color = AppColor.appBlack,
//         double? height,
//       }) {
//     return TextStyle(
//       fontFamily: AppFont.gilroyMedium,
//       fontSize: fontSize,
//       color: color,
//       height: height,
//     );
//   }
//
//   static TextStyle gilroySemiBold(
//       double fontSize, {
//         Color color = AppColor.appBlack,
//         double? height,
//       }) {
//     return TextStyle(
//       fontFamily: AppFont.gilroySemiBold,
//       fontSize: fontSize,
//       color: color,
//       height: height,
//     );
//   }
//
//   static TextStyle gilroyBold(
//       double fontSize, {
//         Color color = AppColor.appBlack,
//       }) {
//     return TextStyle(
//       fontFamily: AppFont.gilroyBold,
//       fontSize: fontSize,
//       color: color,
//
//     );
//   }
//
//   static TextStyle gilroyExtraBold(
//       double fontSize, {
//         Color color = AppColor.appBlack,
//       }) {
//     return TextStyle(
//       fontFamily: AppFont.gilroyExtraBold,
//       fontSize: fontSize,
//       color: color,
//     );
//   }
//
//   static TextStyle gilroyHeavy(
//       double fontSize, {
//         Color color = AppColor.appBlack,
//       }) {
//     return TextStyle(
//       fontFamily: AppFont.gilroyHeavy,
//       fontSize: fontSize,
//       color: color,
//     );
//   }
//
//   static TextStyle gilroyBlack(
//       double fontSize, {
//         Color color = AppColor.appBlack,
//       }) {
//     return TextStyle(
//       fontFamily: AppFont.gilroyBlack,
//       fontSize: fontSize,
//       color: color,
//     );
//   }
//
//   static TextStyle medium(
//       double fontsize, {
//         Color color = AppColor.appWhiteColor,
//       }) {
//     return TextStyle(
//       color: color,
//       fontFamily: AppFont.urbanistMedium,
//       fontSize: fontsize,
//     );
//   }
//
//
//   static TextStyle semiBold(
//       double fontsize, {
//         Color color = AppColor.appWhiteColor,
//       }) {
//     return TextStyle(
//       color: color,
//       fontFamily: AppFont.urbanistSemiBold,
//       fontSize: fontsize,
//     );
//   }
// static TextStyle lightText(
//       double fontsize, {
//         Color color = AppColor.appWhiteColor,
//       }) {
//     return TextStyle(
//       color: color,
//       fontFamily: AppFont.urbanistLight,
//       fontSize: fontsize,
//     );
//   }
//
//   static TextStyle bold(
//       double fontsize, {
//         Color color = AppColor.appBlack,
//       }) {
//     return TextStyle(
//       color: color,
//       fontFamily: AppFont.urbanistBold,
//       fontSize: fontsize,
//     );
//   }
//
//
//   static TextStyle regular(
//       double fontsize, {
//         Color color = AppColor.appBlack,
//       }) {
//     return TextStyle(
//       color: color,
//       fontFamily: AppFont.urbanistRegular,
//       fontSize: fontsize,
//     );
//   }
//
//
//
//
//
//
//
//   static EdgeInsetsGeometry commonPadding() {
//     return EdgeInsets.only(top: Platform.isAndroid ? 32.0 : 39.0, bottom: 10.0);
//   }
//
//   static EdgeInsetsGeometry commonPadding11() {
//     return EdgeInsets.only(top: Platform.isAndroid ? 32.0 : 39.0, bottom: 10.0);
//   }
// }
