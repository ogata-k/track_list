import 'package:flutter/material.dart';

// 各ページが持っているべき関数をまとめるためだけのWidget
abstract class Screen extends StatefulWidget{
  final String title;

  Screen({Key key, this.title}) : super(key: key);

  String getTitle() => this.title;
}
