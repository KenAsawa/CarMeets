import 'package:flutter/material.dart';

import './home_page.dart';
import './event_page_hero_image.dart';

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
      routes: {
        '/': (BuildContext context) => HomePage(),
        '/event': (BuildContext context) => EventPageHeroImage(),
      },
    );
  }
}
