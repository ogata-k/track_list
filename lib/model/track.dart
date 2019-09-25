// コンテンツプロバイダに保存されている音楽データ1つのモデルクラス
import 'package:flute_music_player/flute_music_player.dart';

class Track extends Song {
  Track({int id, String artist, String title, String album, int albumId, int duration, String uri, String albumArt}) : super(id, artist, title, album, albumId, duration, uri, albumArt);

  static Track fromSong(Song song) {
    return Track(
        id: song.id,
        artist: song.artist,
        title: song.title,
        album: song.album,
        albumId: song.albumId,
        duration: song.duration,
        uri: song.uri,
        albumArt: song.albumArt
    );
  }
}
