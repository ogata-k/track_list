import 'package:flutter/material.dart';
import 'package:track_list/model/track.dart';
import 'package:track_list/screen_pages/screen.dart';
import 'package:track_list/widget/track/track_item.dart' as track;

// Screen for list of track
class TrackListScreen extends Screen {
  final List<Track> tracks;

  TrackListScreen({Key key, this.tracks, String title})
      : super(key: key, title: title);

  @override
  _TrackListScreenState createState() => _TrackListScreenState();
}

class _TrackListScreenState extends State<TrackListScreen> {
  @override
  Widget build(BuildContext context) {
    final _items = widget.tracks;
    return ListView.builder(
      padding: EdgeInsets.fromLTRB(2, 1, 2, 0),
      itemCount: widget.tracks.length,
      itemBuilder: (BuildContext context, int index) {
        final Track item = _items[index];
        return Ink(
          color: Colors.white70,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              (new track.TrackItem(track: item)).build(context),
            ],
          ),
        );
      },
    );
  }
}
