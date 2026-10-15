import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class CustomVideoProofPlayer extends StatefulWidget {
  final String videoUrl;
  final String thumbnailUrl;

  const CustomVideoProofPlayer({
    super.key,
    required this.videoUrl,
    required this.thumbnailUrl,
  });

  @override
  State<CustomVideoProofPlayer> createState() => _CustomVideoProofPlayerState();
}

class _CustomVideoProofPlayerState extends State<CustomVideoProofPlayer> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;
  bool _isPlaying = false;



  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoUrl),
    )
      ..initialize().then((_) {
        setState(() {
          _isInitialized = true;
        });
      }).catchError((e, stack) {
      });

    _controller.addListener(() {
      if (!mounted) return;
      final value = _controller.value;
      if (value.position >= value.duration && value.duration != Duration.zero) {
        _controller.seekTo(Duration.zero);
        _controller.pause();
      }
      setState(() {
        _isPlaying = value.isPlaying;
      });
    });
  }

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes;
    final seconds = duration.inSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  void _togglePlayPause() async {
    if (!_isInitialized) return;
    await _controller.play();
  }

  /// Open fullscreen landscape player
  void _openFullscreen() async {
    final wasPlaying = _controller.value.isPlaying;

    if (wasPlaying) _controller.pause();


    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => _FullscreenVideoPage(
          controller: _controller,
          wasPlaying: wasPlaying,
        ),
      ),
    );
  }

  @override
  void dispose() {

   // _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: AspectRatio(
        aspectRatio: 1.99,
        child: Stack(
          children: [
            Positioned.fill(
              child: GestureDetector(
                onTap: () {
                  if (_controller.value.isPlaying) {
                    _controller.pause();
                    _controller.seekTo(Duration.zero);
                  }
                },
                child: _isPlaying
                    ? FittedBox(
                        fit: BoxFit.cover,
                        child: SizedBox(
                          width: _controller.value.size.width,
                          height: _controller.value.size.height,
                          child: VideoPlayer(_controller),
                        ),
                      )
                    : Image.network(
                        widget.thumbnailUrl,
                        fit: BoxFit.cover,
                      ),
              ),
            ),

            // Dark overlay when paused
            if (!_isPlaying)
              Positioned.fill(
                child: IgnorePointer(
                  child: Container(
                    color: Colors.black.withOpacity(0.28),
                  ),
                ),
              ),

            // Play button
            if (!_isPlaying)
              Center(
                child: GestureDetector(
                  onTap: _togglePlayPause,
                  child: Image.asset(
                    "assets/background_image/video_playIcon.png",
                    width: 96,
                    height: 96,
                  ),
                ),
              ),

            // Duration label
            Positioned(
              right: 48,
              bottom: 18,
              child: Text(
                _isInitialized
                    ? _formatDuration(_controller.value.duration)
                    : "00:00",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            // Fullscreen button (bottom-right)
            Positioned(
              right: 8,
              bottom: 10,
              child: GestureDetector(
                onTap: _openFullscreen,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.45),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Icon(
                    Icons.fullscreen,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// -------------------------------------------------------
// Fullscreen Video Page — landscape, with controls overlay
// -------------------------------------------------------
class _FullscreenVideoPage extends StatefulWidget {
  final VideoPlayerController controller;
  final bool wasPlaying;

  const _FullscreenVideoPage({
    required this.controller,
    required this.wasPlaying,
  });

  @override
  State<_FullscreenVideoPage> createState() => _FullscreenVideoPageState();
}

class _FullscreenVideoPageState extends State<_FullscreenVideoPage> {
  bool _showControls = true;

  @override
  void initState() {
    super.initState();

    _enterFullscreen();
    if (widget.wasPlaying) widget.controller.play();
    widget.controller.addListener(_onControllerUpdate);
  }

  void _onControllerUpdate() {
    if (mounted) setState(() {});
  }

  Future<void> _enterFullscreen() async {
    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
    );
  }
  // Future<void> _enterFullscreen() async {
  //   await SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.landscapeLeft,
  //     DeviceOrientation.landscapeRight,
  //   ]);
  //   await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  // }

  /// Exit fullscreen — simply pop; dispose() will restore orientation
  void _exitFullscreen() {
    widget.controller.pause();
    if (mounted) Navigator.pop(context);
  }

  void _toggleControls() => setState(() => _showControls = !_showControls);

  String _fmt(Duration d) {
    final m = d.inMinutes;
    final s = d.inSeconds % 60;
    return '${m.toString().padLeft(2, '0')}:${s.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onControllerUpdate);
    // Always restore portrait & system UI when this page is disposed
    // (handles back gesture, button tap, and system back equally)

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ctrl = widget.controller;
    final isPlaying = ctrl.value.isPlaying;
    final duration = ctrl.value.duration;
    final position = ctrl.value.position;
    final progress = duration.inMilliseconds > 0
        ? (position.inMilliseconds / duration.inMilliseconds).clamp(0.0, 1.0)
        : 0.0;

    return PopScope(
      canPop: true,  // allow back gesture
      onPopInvoked: (_) {
        // pause video when user goes back (via gesture or button)
        widget.controller.pause();
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: GestureDetector(
          onTap: _toggleControls,
          child: Stack(
            children: [
              // Video
              Center(
                child: ctrl.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: ctrl.value.aspectRatio,
                        child: VideoPlayer(ctrl),
                      )
                    : const CircularProgressIndicator(color: Colors.white),
              ),

              // Controls overlay (animated)
              AnimatedOpacity(
                opacity: _showControls ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 250),
                child: IgnorePointer(
                  ignoring: !_showControls,
                  child: Container(
                    color: Colors.black.withOpacity(0.35),
                    child: Stack(
                      children: [
                        // Exit fullscreen button (top-left)
                        Positioned(
                          top: 16,
                          left: 16,
                          child: GestureDetector(
                            onTap: _exitFullscreen,
                            child: Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.fullscreen_exit,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                          ),
                        ),

                        // Play/Pause center
                        Center(
                          child: GestureDetector(
                            onTap: () =>
                                isPlaying ? ctrl.pause() : ctrl.play(),
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                isPlaying ? Icons.pause : Icons.play_arrow,
                                color: Colors.white,
                                size: 48,
                              ),
                            ),
                          ),
                        ),

                        // Bottom progress + time
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    trackHeight: 3,
                                    thumbShape: const RoundSliderThumbShape(
                                      enabledThumbRadius: 7,
                                    ),
                                    overlayShape: const RoundSliderOverlayShape(
                                      overlayRadius: 14,
                                    ),
                                    activeTrackColor: Colors.white,
                                    inactiveTrackColor: Colors.white30,
                                    thumbColor: Colors.white,
                                    overlayColor: Colors.white24,
                                  ),
                                  child: Slider(
                                    value: progress.toDouble(),
                                    onChanged: (val) {
                                      ctrl.seekTo(Duration(
                                        milliseconds:
                                            (val * duration.inMilliseconds)
                                                .toInt(),
                                      ));
                                    },
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      _fmt(position),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      _fmt(duration),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

