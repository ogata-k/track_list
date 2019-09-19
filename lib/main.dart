import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() => runApp(TrackListApp());

class TrackListApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List of Tracks',
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
  final List<Tab> tabs = <Tab>[
    Tab(text: 'Home Screen'),
  ];

  TabController _tabController;

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
          title: Text('List of Tracks'),
          bottom: TabBar(
            controller: _tabController,
            tabs: tabs,
          ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((Tab tab) {
          return createTab(tab);
        }).toList(),
      )
    );
  }

  Widget createTab(Tab tab) {
    if (tab.text == 'Home Screen') {
      return Center(
          child: HomeScreen(
              title: tab.text
          )
      );
    }
    return Center(
      child: Text('List of Track'),
    );
  }
}
