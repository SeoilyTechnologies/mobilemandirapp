import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

import '../routes/exports.dart';

class CommonTitle extends StatelessWidget {
  final String title;
   CommonTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",
      style: AppTextStyle.gilroyBlack(
        context.screenWidth * 0.053,
        color: AppColor.newsecondaruy,
      ),
    );
  }
}


class CommonTitleBold extends StatelessWidget {
  final String title;
  final double? size; // optional size

  const CommonTitleBold({
    super.key,
    required this.title,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyle.gilroyBold(
        context.screenWidth * (size ?? 0.053), // default 0.053
        color: AppColor.newsecondaruy,
      ),
    );
  }
}

class CommonTitleResendotp extends StatelessWidget {
  final String title;
  CommonTitleResendotp({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",
      style: AppTextStyle.gilroyBlack(
        context.screenWidth * 0.045,
        color: AppColor.newsecondaruy,
      ),
    );
  }
}

class CommonTitleMedium extends StatelessWidget {
  final String title;
  CommonTitleMedium({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",
      style: AppTextStyle.gilroyBlack(
        context.screenWidth * 0.03,
        color: AppColor.newsecondaruy,
      ),
    );
  }
}

class CommonSubTitle extends StatelessWidget {
  final String title;
  final Color? color; // 👈 optional color

  const CommonSubTitle({
    super.key,
    required this.title,
    this.color, // 👈 optional
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: AppTextStyle.gilroyMedium(
        context.screenWidth * 0.033,
        color: color ?? AppColor.newGreyy, // 👈 fallback color
      ),
    );
  }
}

class CommonSubTitleLarge extends StatelessWidget {
  final String title;
  final Color? color; // 👈 optional color

  const CommonSubTitleLarge({
    super.key,
    required this.title,
    this.color, // 👈 optional
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: AppTextStyle.gilroyMedium(
        context.screenWidth * 0.02,
        color: color ?? AppColor.newGreyy, // 👈 fallback color
      ),
    );
  }
}


class CommonTitleLarge extends StatelessWidget {
  final String title;
  CommonTitleLarge({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",
      style: AppTextStyle.gilroyBlack(
        context.screenWidth * 0.022,
        color: AppColor.newsecondaruy,
      ),
    );
  }
}


class CommonTitleBoldLandScape extends StatelessWidget {
  final String title;
  CommonTitleBoldLandScape({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",
      style: AppTextStyle.gilroyBold(
        context.screenWidth * 0.022,
        color: AppColor.newsecondaruy,
      ),
    );
  }
}


class CommonTitleLargeLandScape extends StatelessWidget {
  final String title;
  CommonTitleLargeLandScape({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",
      style: AppTextStyle.gilroyBlack(
        context.screenWidth * 0.022,
        color: AppColor.newsecondaruy,
      ),
    );
  }
}

class CommonSubTitleLargeLandScape extends StatelessWidget {
  final String title;
  final Color? color; // 👈 optional color

  const CommonSubTitleLargeLandScape({
    super.key,
    required this.title,
    this.color, // 👈 optional
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: AppTextStyle.gilroyMedium(
        context.screenWidth * 0.02,
        color: color ?? AppColor.newGreyy, // 👈 fallback color
      ),
    );
  }
}
