import 'package:fluro/fluro.dart' as f;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:track_list/screens/home/home.dart';
import 'package:track_list/screens/track/list.dart';

/// ルーター
class Router {
  static f.Router router = f.Router();

  static void setupRouter() {
    // 以下にルーティングの定義を記述する
    router.define(
      '/home',
      handler: f.Handler(
          handlerFunc:
              (BuildContext context, Map<String, List<String>> params) =>
                  HomeScreen()),
    );
    router.define(
      '/track/list',
      handler: f.Handler(
          handlerFunc:
              (BuildContext context, Map<String, List<String>> params) =>
                  TrackListScreen()),
    );
  }

  static BottomNavigationBar generateBottomNavigator(
      BuildContext context, int currentIndex) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          title: Text('home'),
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          title: Text('List of Track'),
          icon: Icon(Icons.library_music),
        ),
      ],
      onTap: (int index) {
        if (index == currentIndex) {
          return;
        }
        switch (index) {
          case 0:
            router.navigateTo(context, 'home');
            break;
          case 1:
            router.navigateTo(context, 'track/list');
            break;
        }
      },
    );
  }
}
