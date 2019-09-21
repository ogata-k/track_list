// コンテンツプロバイダに保存されている音楽データ1つのモデルクラス
class Track {
  // track if
  final int id;
  // album id
  final int albumId;
  // artist id
  final int artistId;
  // file path for this track
  final String path;
  // track title
  final String title;
  // name of artist for this track
  final String artist;
  // uri for this track
  final Uri uri;
  // times[ms] to play
  final int duration;
  // track number of this album
  final int trackNo;

  Track({this.id, this.albumId, this.artistId, this.path, this.title,
      this.artist, this.uri, this.duration, this.trackNo});
}
