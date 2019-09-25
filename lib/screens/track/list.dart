import 'package:flutter/material.dart';
import 'package:track_list/routes/router.dart';
import 'package:track_list/service/track_service.dart';
import 'package:track_list/widget/track/track-item.dart';

class TrackListScreen extends StatefulWidget {
  @override
  _TrackListScreenState createState() => _TrackListScreenState();
}

class _TrackListScreenState extends State<TrackListScreen> {
  @override
  Widget build(BuildContext context) {
    var _trackList = [];
    TrackService
        .open()
        .allTracks()
        .then((tracks){
              _trackList = tracks;
              return Scaffold(
                appBar: AppBar(
                  title: Text('List of Track'),
                ),
                body: ListView(
                  children: _trackList.map((track) {
                    return TrackItem(track).build(context);
                  }).toList(),
                ),
                bottomNavigationBar: Router.generateBottomNavigator(context, 1),
              );
            })
        .catchError((e){
          print(e);
          return Scaffold(
            appBar: AppBar(
              title: Text('List of Track'),
            ),
            body: Center(child: Text('failed: fetch track data')),
          );
        });
    return Scaffold(
      appBar: AppBar(
          title: Text('List of Track'),
        ),
      body: Center(child: Text('fetch track data...')),
    );
  }
}
