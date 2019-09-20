import 'package:flutter/material.dart';
import 'package:track_list/screen_pages/home_screen.dart';

const String DEFAULT_TITLE = "List of Tracks";

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

class _TrackTabsState extends State<TrackTabs> with SingleTickerProviderStateMixin {
  TabController _tabController;
  static const String HOME_SCREEN = "Home Screen";

  final List<Tab> tabs = <Tab>[
    Tab(text: HOME_SCREEN),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        vsync: this,
        length: tabs.length
    );
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
    switch (tab.text) {
      case HOME_SCREEN:
        return Center(
            child: HomeScreen(
                title: tab.text
            )
        );
        break;

      default:
        return Center(
          child: Text(DEFAULT_TITLE),
        );
    }
  }
}
