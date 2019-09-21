import 'package:flutter/material.dart';
import 'package:track_list/model/track.dart';

// トラック一覧用の表示
class TrackItem extends StatelessWidget {
  final Track track;

  const TrackItem({Key key, this.track}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO this is stub

    return Center(
        child: Text(this.track.artist),
    );
  }
}
