import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';
import 'package:spotify/spotify.dart';

class SpotifyManager {
  final String clientId = "e607d4e6dfe0422fafbaf982cf21744e";
  final String clientSecret = "afca7c95c41b42ecb80e0da7ceab77f6";

  late final SpotifyApi _spotifyApi;

  SpotifyManager() {
    getApplicationDocumentsDirectory().then((dir) {
      SpotifyApiCredentials _credentials = SpotifyApiCredentials(clientId, clientSecret);
      _spotifyApi = SpotifyApi(_credentials, onCredentialsRefreshed: (SpotifyApiCredentials newCred) {
        _credentials = newCred;
      });

      GetIt.I.signalReady(this);
    });
  }

  Future<List<Track>> searchTracks(String? search, {int limit = 20}) async {
    List<Track> tracks = [];

    search != null ? print("search: " + search) : print("News");

    if (search != null) {
      var res = await _spotifyApi.search.get(search).first(limit).catchError((err) => throw Exception(err));

      if (res == null) return tracks;

      int a = 0;

      res.forEach((pages) {
        if (a++ != 4) {
          // Issue waiting pull request : https://github.com/rinukkusu/spotify-dart/pull/98
          pages.items?.forEach((track) {
            if (track is Track && track.previewUrl != null) {
              tracks.add(track);
            }
          });
        }
      });

      return tracks;
    }

    return tracks;
  }
}
