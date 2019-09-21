import 'package:flutter/material.dart';
import 'enum/tab_name.dart';

class TrackListApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: DEFAULT_TITLE,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: TrackTabs(),
    );
  }
}

class TrackTabs extends StatefulWidget {
  @override
  _TrackTabsState createState() => _TrackTabsState();
}

class _TrackTabsState extends State<TrackTabs> {

  final List<Tab> tabs = <Tab>[
    Tab(text: tabNameToString(TabName.HomeScreen)),
    Tab(text: tabNameToString(TabName.TrackListScreen)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(DEFAULT_TITLE),
        ),
      body: Center(child: Text(DEFAULT_TITLE)),
    );
  }
}
