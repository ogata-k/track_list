import 'package:flutter/material.dart';
import 'package:track_list/routes/router.dart';

class TrackListApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Router.setupRouter();
    return MaterialApp(
      title: 'List of Track',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: 'home',
      onGenerateRoute: Router.router.generator,
    );
  }
}
