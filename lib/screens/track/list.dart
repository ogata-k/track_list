import 'package:flutter/material.dart';
import 'package:track_list/model/track.dart';
import 'package:track_list/routes/router.dart';
import 'package:track_list/widget/track/track-item.dart';

class TrackListScreen extends StatefulWidget {
  @override
  _TrackListScreenState createState() => _TrackListScreenState();
}

class _TrackListScreenState extends State<TrackListScreen> {
  @override
  Widget build(BuildContext context) {
    final _trackList = <Track>[
      Track(
        id: 1,
        artistId: 1,
        albumId: 1,
        path: 'path',
        title: 'title',
        artist: 'artist',
        uri: Uri(scheme: 'uri'),
        duration: 100,
        trackNo: 1,
      ),
      Track(
        id: 2,
        artistId: 2,
        albumId: 2,
        path: 'path',
        title: 'title',
        artist: 'artist',
        uri: Uri(scheme: 'uri'),
        duration: 200,
        trackNo: 2,
      ), Track(
        id: 3,
        artistId: 3,
        albumId: 3,
        path: 'path',
        title: 'title',
        artist: 'artist',
        uri: Uri(scheme: 'uri'),
        duration: 300,
        trackNo: 3,
      ),
      Track(
        id: 4,
        artistId: 4,
        albumId: 4,
        path: 'path',
        title: 'title',
        artist: 'artist',
        uri: Uri(scheme: 'uri'),
        duration: 400,
        trackNo: 4,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Track'),
      ),
      body: ListView(
        children: _trackList.map((Track track) {
          return TrackItem(track).build(context);
        }).toList(),
      ),
      bottomNavigationBar: Router.generateBottomNavigator(context, 1),
    );
  }
}
