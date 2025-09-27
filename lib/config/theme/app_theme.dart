import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.red,
  Colors.purple,
  Colors.yellow,
  Colors.blue,
  Color.fromARGB(255, 200, 100, 20),
];

class AppTheme {
  final int selectColor;
  final bool dark;

  AppTheme({this.dark = false, this.selectColor = 0});

  ThemeData getTheme() => ThemeData(
    colorSchemeSeed:colorList[selectColor],
    brightness: dark ? Brightness.dark :  Brightness.light,
    appBarTheme: AppBarTheme(centerTitle: false, backgroundColor: Colors.red),
  );
}
