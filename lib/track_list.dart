import 'package:flutter/material.dart';
import 'package:track_list/screen_pages/home_screen.dart';
import 'package:track_list/screen_pages/track_list_screen.dart';
import 'enum/tab_name.dart';
import 'model/track.dart';

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

class _TrackTabsState extends State<TrackTabs>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  final List<Tab> tabs = <Tab>[
    Tab(text: tabNameToString(TabName.HomeScreen)),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(DEFAULT_TITLE),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: tabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((Tab tab) {
          return createTab(tab);
        }).toList(),
      ),
    );
  }

  Widget createTab(Tab tab) {
    // ページ生成
    switch (tabNameFromString(tab.text)) {
      case TabName.HomeScreen:
        return Center(child: HomeScreen(title: tab.text));
        break;
      case TabName.TrackList:
        return Center(
            child: TrackListScreen(
          tracks: <Track>[],
          title: tab.text,
        ));
      default:
        return Center(
          child: Text(DEFAULT_TITLE),
        );
    }
  }
}
