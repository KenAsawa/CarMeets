import 'package:flutter/material.dart';

import './placeholder.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceHolder(Colors.greenAccent),
    PlaceHolder(Colors.lightBlueAccent),
    PlaceHolder(Colors.redAccent)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar:
          BottomNavigationBar(currentIndex: 0, onTap: onTabTapped, items: [
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
