import 'package:discover/src/domain/model/track.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlayerManager {
  AudioPlayerManager._();

  static AudioPlayerManager _instance = AudioPlayerManager._();

  AudioPlayer? _audioPlayer;

  void _init() {
    if (_audioPlayer == null) {
      _audioPlayer = AudioPlayer();
    }
  }

  static Future<void> play({required List<Track> tracks}) async {
    final playlist = ConcatenatingAudioSource(
      children: tracks
          .map(
            (track) => AudioSource.uri(
              Uri.parse(track.url),
            ),
          )
          .toList(growable: false),
    );

    _instance._init();
    await _instance._audioPlayer?.setAudioSource(playlist);
    await _instance._audioPlayer?.play();
  }

  static Future<void> stop() async {
    await _instance._audioPlayer?.dispose();
    _instance._audioPlayer = null;
  }
}
