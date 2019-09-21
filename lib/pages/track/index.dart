import 'package:flutter/material.dart';
import 'package:track_list/model/track.dart';
import 'package:track_list/widget/navigation.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
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
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Track'),
      ),
      body: ListView(
        children: _trackList.map((Track track) {
          return Text(track.title);
        }).toList(),
      ),
      bottomNavigationBar: NavigatorBarBuilder(index: 1).create(context),
    );
  }
}
