import 'dart:async';
import 'package:track_list/model/track.dart';
import 'package:flute_music_player/flute_music_player.dart';

class TrackService {

  TrackService();
  static TrackService open() {
    return TrackService();
  }

  Future<List<Track>> allTracks() async {
    Future<dynamic> songs = await MusicFinder.allSongs();
    return songs
        .then((_songs) {
      return _songs.map((_song) => Track.fromSong(_song)).toList();
    });
  }
}