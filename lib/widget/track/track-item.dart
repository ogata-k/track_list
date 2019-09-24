import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:track_list/model/track.dart';
import 'package:sprintf/sprintf.dart';

/// トラック一覧表示
class TrackItem extends StatelessWidget {
  final Track track;

  const TrackItem(this.track, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int minuteDuration = (this.track.duration / 60).floor();
    final int secondDuration = this.track.duration % 60;
    return InkWell(
      child: SafeArea(
        top: false,
        bottom: false,
        child: Container(
          padding: EdgeInsets.fromLTRB(5, 4, 5, 4),
          decoration: BoxDecoration(
            border: Border(
                left: BorderSide(
                    color: Color.fromARGB(
                        this.track.duration % 255,
                        (this.track.duration * 2) % 255,
                        (this.track.duration * 3) % 255,
                        (this.track.duration * 4) % 255
                    ),
                    width: 8
                ),
                bottom: BorderSide(color: Colors.black, width: 2),
            ),
            //borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  this.track.title,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      this.track.artist,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 19.0, color: Colors.grey),
                    ),
                    Text(
                      '($minuteDuration : $secondDuration)', // TODO sprintfで時間が一けたにならないようにする
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 19.0, color: Colors.grey),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
