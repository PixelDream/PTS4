/// A simple Flutter widget that presents a "play button" with a progress drawn
/// as an arc around the icon.
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:socialnetwork/src/utils/AudioManager.dart';

class ProgressedPlayButton extends StatefulWidget {
  final String url;

  const ProgressedPlayButton({Key? key, required this.url}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ProgressedPlayButtonState();
  }
}

class ProgressedPlayButtonState extends State<ProgressedPlayButton> {
  final AudioManager _audioManager = GetIt.I<AudioManager>();

  Color _backgroundColor(context) => Color(0xffFD5F00);
  Color _iconColor(context) => Colors.white;

  double _progress = 0;
  bool _showProgress = false;
  late Duration _maxDuration;

  @override
  void initState() {
    _maxDuration = Duration();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => ClipOval(
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () async {
              if (_showProgress) {
                await _audioManager.audioPlayer.stop();
                setState(() => _showProgress = false);
                return;
              }
              int result = await _audioManager.playWithListener(widget.url);

              if (result == 1) {
                setState(() => _showProgress = true);

                _audioManager.audioPlayer.onDurationChanged.listen((Duration d) {
                  setState(() => {_maxDuration = d});
                });

                _audioManager.audioPlayer.onAudioPositionChanged.listen((Duration p) {
                  setState(() => _progress = p.inSeconds / _maxDuration.inSeconds);
                });

                _audioManager.audioPlayer.onPlayerCompletion.listen((event) {
                  setState(() => _showProgress = false);
                });
              }
            },
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: CustomPaint(
                painter: _Painter(
                  showProgress: _showProgress,
                  progress: _progress,
                  iconColor: _iconColor(context),
                  backgroundColor: _backgroundColor(context),
                ),
                child: Center(
                  child: Icon(
                    _showProgress ? Icons.stop_rounded : Icons.play_arrow_rounded,
                    size: 32,
                    color: _showProgress ? _backgroundColor(context) : _iconColor(context),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}

class _Painter extends CustomPainter {
  final bool showProgress;
  final double progress;
  final Color? backgroundColor;
  final Color? iconColor;

  _Painter({
    required this.showProgress,
    required this.progress,
    this.backgroundColor,
    this.iconColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2);

    if (!showProgress) {
      final fill = Paint()
        ..color = backgroundColor!
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.fill
        ..strokeWidth = 2;
      canvas.drawCircle(center, radius, fill);
      return;
    }

    final line = Paint()
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    line.color = backgroundColor!.withAlpha(128);
    canvas.drawCircle(center, radius, line);

    var progress = () {
      if (this.progress < 0.0) return 0.0;
      if (this.progress > 1.0) return 1.0;
      return this.progress;
    }();

    var arcAngle = 2 * pi * progress;
    var rect = Rect.fromCircle(center: center, radius: radius);
    line.color = backgroundColor!;
    canvas.drawArc(rect, -pi / 2, arcAngle, false, line);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
