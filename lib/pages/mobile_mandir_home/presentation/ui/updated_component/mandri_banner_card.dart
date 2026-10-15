import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:mandirapp/common/component/app_text_style.dart';
import 'package:mandirapp/common/values/app_color.dart';
import 'package:mandirapp/common/values/screenUtils.dart';

class MandirBannerCard extends StatefulWidget {
  final String videoPath;
  final String title;
  final String subtitle;
  final VoidCallback? onButtonTap;

  const MandirBannerCard({
    super.key,
    required this.videoPath,
    required this.title,
    required this.subtitle,
    this.onButtonTap,
  });

  @override
  State<MandirBannerCard> createState() => _MandirBannerCardState();
}

class _MandirBannerCardState extends State<MandirBannerCard> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        _controller
          ..setLooping(true)
          ..setVolume(1.0);
        setState(() {});
      });
  }

  void _togglePlayPause() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
        _isPlaying = false;
      } else {
        _controller.play();
        _isPlaying = true;
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 400,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 400,
            child: Stack(
              alignment: Alignment.center,
              children: [
                /// Video
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: _controller.value.isInitialized
                      ? SizedBox.expand(
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: SizedBox(
                              width: _controller.value.size.width,
                              height: _controller.value.size.height,
                              child: VideoPlayer(_controller),
                            ),
                          ),
                        )
                      : const Center(child: CircularProgressIndicator()),
                ),

                /// ▶️ Play / Pause Button (Center)
                if (_controller.value.isInitialized)
                  GestureDetector(
                    onTap: _togglePlayPause,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        _isPlaying ? Icons.pause : Icons.play_arrow,
                        color: Colors.white,
                        size: 36,
                      ),
                    ),
                  ),

                /// Bottom Overlay
              ],
            ),
          ),

          // Positioned(
          //   left: 12,
          //   right: 12,
          //   bottom: 12,
          //   child:
          // ),
          SizedBox(height: 25),

          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
            decoration: BoxDecoration(
              color: AppColor.newsecondaruy,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.white, width: 1),
            ),
            child: Row(
              children: [
                Container(
                  height: 36,
                  width: 36,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/new_design/icon/fabicon.png"),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.title,
                        style: AppTextStyle.gilroyBold(
                          context.screenWidth * 0.038,
                          color: AppColor.appWhiteColor,
                        ),
                      ),
                      Text(
                        widget.subtitle,
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.031,
                          color: AppColor.appWhiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: widget.onButtonTap,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        // 🔥 outline
                        color: AppColor.white, // border color
                        width: 1, // border width
                      ),
                      color: AppColor.appgreen,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 2),

                          child: Image.asset(
                            "assets/new_design/icon/whatsapp.png",
                            width: 12,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          context.l10n.shareCta,
                          style: AppTextStyle.gilroyBold(
                            context.screenWidth * 0.034,
                            color: AppColor.appWhiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//========================================================================================================

class MandirBannerCardMedium extends StatefulWidget {
  final String videoPath;
  final String title;
  final String subtitle;
  final VoidCallback? onButtonTap;

  const MandirBannerCardMedium({
    super.key,
    required this.videoPath,
    required this.title,
    required this.subtitle,
    this.onButtonTap,
  });

  @override
  State<MandirBannerCardMedium> createState() => _MandirBannerCardStateMedium();
}

class _MandirBannerCardStateMedium extends State<MandirBannerCardMedium> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        _controller
          ..setLooping(true)
          ..setVolume(1.0);
        setState(() {});
      });
  }

  void _togglePlayPause() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
        _isPlaying = false;
      } else {
        _controller.play();
        _isPlaying = true;
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 400,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 400,
            child: Stack(
              alignment: Alignment.center,
              children: [
                /// Video
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: _controller.value.isInitialized
                      ? SizedBox.expand(
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: SizedBox(
                              width: _controller.value.size.width,
                              height: _controller.value.size.height,
                              child: VideoPlayer(_controller),
                            ),
                          ),
                        )
                      : const Center(child: CircularProgressIndicator()),
                ),

                /// ▶️ Play / Pause Button (Center)
                if (_controller.value.isInitialized)
                  GestureDetector(
                    onTap: _togglePlayPause,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        _isPlaying ? Icons.pause : Icons.play_arrow,
                        color: Colors.white,
                        size: 36,
                      ),
                    ),
                  ),

                /// Bottom Overlay
              ],
            ),
          ),

          // Positioned(
          //   left: 12,
          //   right: 12,
          //   bottom: 12,
          //   child:
          // ),
          SizedBox(height: 25),

          Container(
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
            decoration: BoxDecoration(
              color: AppColor.newsecondaruy,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.white, width: 1),
            ),
            child: Row(
              children: [
                Container(
                  height: 44,
                  width: 44,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/new_design/icon/fabicon.png"),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.title,
                        style: AppTextStyle.gilroyBold(
                          context.screenWidth * 0.0346,
                          color: AppColor.appWhiteColor,
                        ),
                      ),
                      Text(
                        widget.subtitle,
                        style: AppTextStyle.gilroyMedium(
                          context.screenWidth * 0.02656,
                          color: AppColor.appWhiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: widget.onButtonTap,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        // 🔥 outline
                        color: AppColor.newsecondaruy, // border color
                        width: 1, // border width
                      ),
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Text(
                      context.l10n.inviteYourFriend,
                      style: AppTextStyle.gilroyBold(
                        context.screenWidth * 0.02856,
                        color: AppColor.newsecondaruy,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//==========================================large large large==============================================================

class MandirBannerCardLarge extends StatefulWidget {
  final String videoPath;
  final String title;
  final String subtitle;
  final VoidCallback? onButtonTap;

  const MandirBannerCardLarge({
    super.key,
    required this.videoPath,
    required this.title,
    required this.subtitle,
    this.onButtonTap,
  });

  @override
  State<MandirBannerCardLarge> createState() => _MandirBannerCardStateLarge();
}

class _MandirBannerCardStateLarge extends State<MandirBannerCardLarge> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        _controller
          ..setLooping(true)
          ..setVolume(1.0);
        setState(() {});
      });
  }

  void _togglePlayPause() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
        _isPlaying = false;
      } else {
        _controller.play();
        _isPlaying = true;
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * 0.5,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          /// Video
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: _controller.value.isInitialized
                ? SizedBox.expand(
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: SizedBox(
                        width: _controller.value.size.width,
                        height: _controller.value.size.height,
                        child: VideoPlayer(_controller),
                      ),
                    ),
                  )
                : const Center(child: CircularProgressIndicator()),
          ),

          /// ▶️ Play / Pause Button (Center)
          if (_controller.value.isInitialized)
            GestureDetector(
              onTap: _togglePlayPause,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  _isPlaying ? Icons.pause : Icons.play_arrow,
                  color: Colors.white,
                  size: 36,
                ),
              ),
            ),

          /// Bottom Overlay
          Positioned(
            left: 12,
            right: 12,
            bottom: 16,
            child: Container(
              height: context.screenHeight * 0.1,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.65),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: Row(
                children: [
                  Container(
                    height: 54,
                    width: 54,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/new_design/icon/fabicon.png"),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          widget.title,
                          style: AppTextStyle.gilroyBold(
                            context.screenWidth * 0.02,
                            color: AppColor.appWhiteColor,
                          ),
                        ),
                        Text(
                          widget.subtitle,
                          style: AppTextStyle.gilroyMedium(
                            context.screenWidth * 0.012,
                            color: AppColor.appWhiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.onButtonTap,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Text(
                        context.l10n.inviteYourFriend,
                        style: AppTextStyle.gilroySemiBold(
                          context.screenWidth * 0.02656,
                          color: AppColor.newsecondaruy,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
