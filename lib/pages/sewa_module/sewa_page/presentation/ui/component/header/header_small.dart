import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';
import 'package:mandirapp/common/component/app_text_style.dart';

import '../../../../../../../common/component/transparent_appbar.dart';
import '../../../../../../../common/network/app_constant.dart';
import '../../../../../../../common/routes/exports.dart';
import '../../../../../../../common/values/screenUtils.dart';

class HeaderSeva extends StatelessWidget {
  final String title;
  final String video;
  final String image;

  const HeaderSeva({
    super.key,
    this.title = "Gau Seva",
    this.video = "",
    this.image = "",
  });

  @override
  Widget build(BuildContext context) {
    if (context.isSmallScreen) {
      return HeaderSmall(
        title: title,
        video: video,
        image: image,
      );
    } else {
      return HeaderMedium(
        title: title,
        video: video,
        image: image,
      );
    }
  }
}

class HeaderSmall extends StatelessWidget {
  final String title;
  final String video;
  final String image;

  const HeaderSmall({
    super.key,
    this.title = "Gau Seva",
    this.video = "",
    this.image = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      height: context.screenHeight * 0.375,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background_image/gradient_background.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: <Widget>[
          TransparentAppBar(
            title: title,
            onBackTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                /// Background card
                Container(
                  width: double.infinity,
                  height: context.screenHeight * 0.21,
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 16,
                    right: 155, // Space for landscape video / image box
                    bottom: 10,
                  ),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/background_image/header_top_image_background.png",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.l10n.transparent100,
                        style: AppTextStyle.gilroyBold(
                          context.screenWidth * 0.038,
                        ),
                      ),
                      const SizedBox(height: 12),
                      _FeatureItem(context.l10n.realTimeVideo),
                      const SizedBox(height: 8),
                      _FeatureItem(context.l10n.easyRefundAssistance),
                      const SizedBox(height: 8),
                      _FeatureItem(context.l10n.liveGpsTracking),
                    ],
                  ),
                ),

                /// Header video (Landscape) or image overlap
                Positioned(
                  right: 10,
                  top: 28,
                  child: video.isNotEmpty
                      ? HeaderVideoWidget(
                          videoUrl: video,
                          fallbackImageUrl: image,
                          width: 145,
                          height: 95,
                        )
                      : (image.isNotEmpty
                          ? Image.network(
                              image.startsWith('http')
                                  ? image
                                  : "${AppConstant.fileBaseUrl}${image.startsWith('/') ? '' : '/'}$image",
                              height: context.screenHeight * 0.16,
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) =>
                                  const SizedBox.shrink(),
                            )
                          : const SizedBox.shrink()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderMedium extends StatelessWidget {
  final String title;
  final String video;
  final String image;

  const HeaderMedium({
    super.key,
    this.title = "Gau Seva",
    this.video = "",
    this.image = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      height: context.screenHeight * 0.36,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background_image/gradient_background.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: <Widget>[
          TransparentAppBar(
            title: title,
            onBackTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                /// Background card
                Container(
                  width: double.infinity,
                  height: context.screenHeight * 0.21,
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 16,
                    right: 155, // Space for landscape video / image box
                    bottom: 16,
                  ),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/background_image/header_top_image_background.png",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.l10n.transparent100,
                        style: AppTextStyle.gilroyBold(
                          context.screenWidth * 0.037,
                        ),
                      ),
                      const SizedBox(height: 12),
                      _FeatureItem(context.l10n.realTimeVideo),
                      const SizedBox(height: 8),
                      _FeatureItem(context.l10n.easyRefundAssistance),
                      const SizedBox(height: 8),
                      _FeatureItem(context.l10n.liveGpsTracking),
                    ],
                  ),
                ),

                /// Header video (Landscape) or image overlap
                Positioned(
                  right: 10,
                  top: 18,
                  child: video.isNotEmpty
                      ? HeaderVideoWidget(
                          videoUrl: video,
                          fallbackImageUrl: image,
                          width: 140,
                          height: 85,
                        )
                      : (image.isNotEmpty
                          ? Image.network(
                              image.startsWith('http')
                                  ? image
                                  : "${AppConstant.fileBaseUrl}${image.startsWith('/') ? '' : '/'}$image",
                              height: context.screenHeight * 0.16,
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) =>
                                  const SizedBox.shrink(),
                            )
                          : const SizedBox.shrink()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final String title;

  const _FeatureItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.verified, size: 16, color: Colors.black),
        const SizedBox(width: 8),
        Text(
          title,
          style: AppTextStyle.gilroySemiBold(context.screenWidth * 0.032),
        ),
      ],
    );
  }
}

class HeaderVideoWidget extends StatefulWidget {
  final String videoUrl;
  final String fallbackImageUrl;
  final double width;
  final double height;

  const HeaderVideoWidget({
    super.key,
    required this.videoUrl,
    this.fallbackImageUrl = "",
    this.width = 140,
    this.height = 85,
  });

  @override
  State<HeaderVideoWidget> createState() => _HeaderVideoWidgetState();
}

class _HeaderVideoWidgetState extends State<HeaderVideoWidget>
    with WidgetsBindingObserver {
  YoutubePlayerController? _youtubeController;
  VideoPlayerController? _videoPlayerController;
  String? _youtubeId;
  bool _isInitialized = false;
  bool _isPlaying = false;
  bool _isMuted = false;
  bool _hasError = false;
  String _currentVideoUrl = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initVideo();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive ||
        state == AppLifecycleState.detached) {
      _stopAndMute();
    }
  }

  @override
  void deactivate() {
    _stopAndMute();
    super.deactivate();
  }

  @override
  void didUpdateWidget(covariant HeaderVideoWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.videoUrl != widget.videoUrl) {
      _initVideo();
    }
  }

  static String? _parseYouTubeId(String input) {
    final trimmed = input.trim();
    if (trimmed.isEmpty) return null;

    final idFromUrl = YoutubePlayer.convertUrlToId(trimmed);
    if (idFromUrl != null && idFromUrl.isNotEmpty) {
      return idFromUrl;
    }

    final idRegExp = RegExp(r'^[_\-a-zA-Z0-9]{11}$');
    if (idRegExp.hasMatch(trimmed)) {
      return trimmed;
    }

    return null;
  }

  void _initVideo() async {
    final videoUrl = widget.videoUrl.trim();
    if (videoUrl.isEmpty) {
      _disposeAllControllers();
      return;
    }

    if (_currentVideoUrl == videoUrl &&
        (_youtubeController != null || _videoPlayerController != null)) {
      return;
    }
    _currentVideoUrl = videoUrl;

    _disposeAllControllers();

    final ytId = _parseYouTubeId(videoUrl);
    if (ytId != null) {
      _initYoutube(ytId);
    } else {
      _initDirectVideo(videoUrl);
    }
  }

  void _initYoutube(String videoId) {
    try {
      _youtubeId = videoId;
      _isMuted = false;
      _isPlaying = true;
      _hasError = false;
      _isInitialized = false;

      final controller = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
          loop: true,
          hideControls: true,
          controlsVisibleAtStart: false,
          disableDragSeek: true,
          enableCaption: false,
          hideThumbnail: false,
          useHybridComposition: true,
          forceHD: false,
        ),
      );

      controller.addListener(_youtubeListener);
      _youtubeController = controller;
      if (mounted) setState(() {});
    } catch (e) {
      if (mounted) {
        setState(() => _hasError = true);
      }
    }
  }

  void _youtubeListener() {
    if (!mounted || _youtubeController == null) return;
    final value = _youtubeController!.value;
    if (value.hasError) {
      if (!_hasError) {
        setState(() => _hasError = true);
      }
      return;
    }
    if (value.isReady && !_isInitialized) {
      setState(() => _isInitialized = true);
    }
    if (value.isPlaying != _isPlaying) {
      setState(() => _isPlaying = value.isPlaying);
    }
  }

  void _initDirectVideo(String videoUrl) async {
    String fullUrl = videoUrl;
    if (!fullUrl.startsWith('http://') && !fullUrl.startsWith('https://')) {
      final baseUrl = AppConstant.fileBaseUrl;
      final cleanBase = baseUrl.endsWith('/') ? baseUrl : '$baseUrl/';
      final cleanPath =
          fullUrl.startsWith('/') ? fullUrl.substring(1) : fullUrl;
      fullUrl = '$cleanBase$cleanPath';
    }

    final uri = Uri.tryParse(fullUrl);
    if (uri == null) return;

    try {
      final controller = VideoPlayerController.networkUrl(uri);
      _videoPlayerController = controller;
      controller.addListener(_videoListener);

      await controller.initialize();
      await controller.setLooping(true);
      await controller.setVolume(1.0);

      if (mounted) {
        setState(() {
          _isInitialized = true;
          _hasError = false;
          _isMuted = false;
        });
      }

      await controller.play();
    } catch (error) {
      if (mounted) {
        setState(() => _hasError = true);
      }
    }
  }

  void _videoListener() {
    if (!mounted || _videoPlayerController == null) return;
    final value = _videoPlayerController!.value;
    if (value.hasError) {
      if (!_hasError) {
        setState(() => _hasError = true);
      }
      return;
    }
    if (value.isPlaying != _isPlaying) {
      setState(() => _isPlaying = value.isPlaying);
    }
  }

  void _togglePlayPause() async {
    if (_youtubeController != null) {
      if (_isPlaying) {
        _youtubeController!.pause();
        setState(() => _isPlaying = false);
      } else {
        _youtubeController!.play();
        setState(() => _isPlaying = true);
      }
    } else if (_videoPlayerController != null &&
        _videoPlayerController!.value.isInitialized) {
      if (_videoPlayerController!.value.isPlaying) {
        await _videoPlayerController!.pause();
        setState(() => _isPlaying = false);
      } else {
        await _videoPlayerController!.play();
        setState(() => _isPlaying = true);
      }
    }
  }

  void _toggleMute() {
    if (_youtubeController != null) {
      if (_isMuted) {
        _youtubeController!.unMute();
        setState(() => _isMuted = false);
      } else {
        _youtubeController!.mute();
        setState(() => _isMuted = true);
      }
    } else if (_videoPlayerController != null &&
        _videoPlayerController!.value.isInitialized) {
      if (_isMuted) {
        _videoPlayerController!.setVolume(1.0);
        setState(() => _isMuted = false);
      } else {
        _videoPlayerController!.setVolume(0.0);
        setState(() => _isMuted = true);
      }
    }
  }

  void _stopAndMute() {
    try {
      _youtubeController?.pause();
      _youtubeController?.mute();
      _youtubeController?.value.webViewController?.evaluateJavascript(
        source:
            'if(typeof player!=="undefined"&&player){player.pauseVideo();player.mute();player.stopVideo();}',
      );
      _youtubeController?.value.webViewController?.loadUrl(
        urlRequest: URLRequest(url: WebUri('about:blank')),
      );
    } catch (_) {}

    try {
      _videoPlayerController?.pause();
      _videoPlayerController?.setVolume(0.0);
    } catch (_) {}
  }

  void _disposeAllControllers() {
    _stopAndMute();

    if (_youtubeController != null) {
      _youtubeController!.removeListener(_youtubeListener);
      try {
        _youtubeController!.dispose();
      } catch (_) {}
      _youtubeController = null;
    }
    if (_videoPlayerController != null) {
      _videoPlayerController!.removeListener(_videoListener);
      try {
        _videoPlayerController!.dispose();
      } catch (_) {}
      _videoPlayerController = null;
    }
    _youtubeId = null;
    _isInitialized = false;
    _isPlaying = false;
    _hasError = false;
    _currentVideoUrl = '';
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _disposeAllControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_hasError) {
      return _buildFallbackOrError();
    }

    if (widget.videoUrl.isEmpty) {
      return _buildFallbackOrError();
    }

    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          alignment: Alignment.center,
          children: [
            /// Video Player content (YouTube or Direct Video)
            Positioned.fill(
              child: _buildVideoContent(),
            ),

            /// Touch overlay to intercept taps and toggle play/pause
            Positioned.fill(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: _togglePlayPause,
              ),
            ),

            /// Mute / Unmute Button (Bottom Left)
            Positioned(
              bottom: 6,
              left: 6,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: _toggleMute,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    _isMuted ? Icons.volume_off : Icons.volume_up,
                    color: Colors.white,
                    size: 13,
                  ),
                ),
              ),
            ),

            /// Play / Pause Button (Bottom Right)
            Positioned(
              bottom: 6,
              right: 6,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: _togglePlayPause,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    _isPlaying ? Icons.pause : Icons.play_arrow,
                    color: Colors.white,
                    size: 13,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoContent() {
    if (_youtubeController != null && _youtubeId != null) {
      return YoutubePlayer(
        controller: _youtubeController!,
        width: widget.width,
        aspectRatio: widget.width / widget.height,
        showVideoProgressIndicator: false,
        thumbnail: Image.network(
          YoutubePlayer.getThumbnail(
            videoId: _youtubeId!,
            quality: ThumbnailQuality.high,
            webp: false,
          ),
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => const Center(
            child: SizedBox(
              width: 18,
              height: 18,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Colors.white,
              ),
            ),
          ),
        ),
        onReady: () {
          if (mounted) {
            setState(() => _isInitialized = true);
            _youtubeController?.unMute();
            _youtubeController?.setVolume(100);
            _youtubeController?.play();
          }
        },
        onEnded: (_) {
          _youtubeController?.seekTo(Duration.zero);
          _youtubeController?.play();
        },
      );
    }

    if (_videoPlayerController != null && _isInitialized) {
      return FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          width: _videoPlayerController!.value.size.width > 0
              ? _videoPlayerController!.value.size.width
              : widget.width,
          height: _videoPlayerController!.value.size.height > 0
              ? _videoPlayerController!.value.size.height
              : widget.height,
          child: VideoPlayer(_videoPlayerController!),
        ),
      );
    }

    return const Center(
      child: SizedBox(
        width: 18,
        height: 18,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildFallbackOrError() {
    if (widget.fallbackImageUrl.isNotEmpty) {
      final baseUrl = AppConstant.fileBaseUrl.endsWith('/')
          ? AppConstant.fileBaseUrl
              .substring(0, AppConstant.fileBaseUrl.length - 1)
          : AppConstant.fileBaseUrl;
      final cleanPath = widget.fallbackImageUrl.startsWith('/')
          ? widget.fallbackImageUrl
          : '/${widget.fallbackImageUrl}';
      final imgUrl = widget.fallbackImageUrl.startsWith('http')
          ? widget.fallbackImageUrl
          : '$baseUrl$cleanPath';
      return Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.15),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            imgUrl,
            width: widget.width,
            height: widget.height,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => _buildErrorBox(),
          ),
        ),
      );
    }
    return _buildErrorBox();
  }

  Widget _buildErrorBox() {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Icon(Icons.videocam_off, color: Colors.grey, size: 24),
      ),
    );
  }
}
