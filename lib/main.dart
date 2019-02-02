import 'package:flutter/material.dart';

import './home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      routes: {'/': (BuildContext context) => HomePage()},
    );
  }
}
