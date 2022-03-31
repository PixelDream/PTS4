import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';

class AudioManager {
  late final AudioPlayer audioPlayer;
  final StreamController _changeAudioController = StreamController.broadcast();

  AudioManager() {
    getApplicationDocumentsDirectory().then((dir) {
      audioPlayer = AudioPlayer();

      audioPlayer.setReleaseMode(ReleaseMode.STOP);
      GetIt.I.signalReady(this);
    });
  }

  Stream get onChangeAudio => _changeAudioController.stream;
  StreamController get streamController => _changeAudioController;

  Future<int> playWithListener(String url) {
    _changeAudioController.add(url);
    return audioPlayer.play(url);
  }
}
