import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:track_list/widget/navigation.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: _buildBody(),
      bottomNavigationBar: NavigatorBarBuilder(index: 0).create(context),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Text('Home Page'),
    );
  }
}
