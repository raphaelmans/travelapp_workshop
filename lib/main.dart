import 'package:flutter/material.dart';
import 'package:kickngo/screens/home_screen/home.dart';
import 'package:kickngo/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: 'OpenSans',
      ),
      home: Home(),
    );
  }
}
