import 'package:flutter/material.dart';
import 'package:track_list/pages/home/home.dart';
import 'package:track_list/pages/track/index.dart';

class TrackListApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List of Tracks',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/track': (context) => Index(),
      },
    );
  }
}
