import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:track_list/routes/router.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: _buildBody(),
      bottomNavigationBar: Router.generateBottomNavigator(context, 0),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Text('Home Screen'),
    );
  }
}
