import 'package:flutter/material.dart';
import 'package:track_list/model/track.dart';

// トラック一覧用の表示
class TrackItem extends StatelessWidget {
  final Track track;

  const TrackItem({Key key, this.track}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final int _minutes = (this.track.duration / 60).floor();
    final int _seconds = this.track.duration % 60;
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(3),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                this.track.title,
                style: TextStyle(fontSize: 17.0),
              ),
              Text(
                '($_minutes : $_seconds)',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                ),
              )
            ],
          ),
          Text(
            this.track.artist,
            style: TextStyle(
             fontSize: 14.0,
            ),
            textAlign: TextAlign.left,
          ),
        ]
      )
    );
  }
}
