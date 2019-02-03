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

/*
        body: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: [
              new Container(
                child: DescriptionCards(title: 'This is my Description', text: 'Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free. Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free. Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free. Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free.')
              ),
              new Container(
                child: DescriptionCards(title: 'Another One', text: 'Bites the Dust'),
              )
            ]
          )
        ),
 */