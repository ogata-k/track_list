import 'package:flutter/material.dart';
import 'package:track_list/screen_pages/screen.dart';

// ホーム
class HomeScreen extends Screen{

  HomeScreen({Key key, String title}) : super(key: key, title: title);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.getTitle()),
      ),
    );
  }
}