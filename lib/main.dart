import 'package:expedition_travel_app/styles.dart';
import 'package:flutter/material.dart';

import 'MainPage/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expedition Travel',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: mainBlack,
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
