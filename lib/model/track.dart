// コンテンツプロバイダに保存されている音楽データ1つのモデルクラス
import 'package:flutter/cupertino.dart';

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

  Track(
      {@required this.id,
      @required this.albumId,
      @required this.artistId,
      @required this.path,
      @required this.title,
      @required this.artist,
      @required this.uri,
      @required this.duration,
      @required this.trackNo});
}
