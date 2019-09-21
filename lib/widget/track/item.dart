import 'package:flutter/material.dart';
import 'package:track_list/model/track.dart';

class Item extends StatelessWidget {
  final Track track;

  const Item({Key key, this.track}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO this is stub
    return Center(
        child: Text(this.track.artist),
    );
  }
}
