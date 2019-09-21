import 'package:flutter/material.dart';

class NavigatorBarBuilder {
  final int index;

  NavigatorBarBuilder({Key key, this.index});

  static const _items = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      title: Text('Home'),
      icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
        title: Text('List of Track'), icon: Icon(Icons.library_music))
  ];

  BottomNavigationBar create(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: this.index,
      items: _items,
      onTap: (int index) {
        if (this.index == index) {
          return;
        }
        switch (index) {
          case 0:
            Navigator.pushNamed(
              context,
              '/',
            );
            break;
          case 1:
            Navigator.pushNamed(
              context,
              '/track',
            );
            break;
        }
      },
    );
  }
}
