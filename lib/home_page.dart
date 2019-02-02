import 'package:flutter/material.dart';

import './placeholder.dart';
import './event_map.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> _children = [
    Padding(
      child: EventMap(),
      padding: EdgeInsets.only(top: 50),
    ),
    PlaceHolder(Colors.yellowAccent),
    PlaceHolder(Colors.redAccent)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Events Page")),
            BottomNavigationBarItem(
                icon: Icon(Icons.book), title: Text("Saved Events")),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text("Settings"))
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
