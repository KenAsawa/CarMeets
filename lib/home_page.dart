import 'package:flutter/material.dart';

import './placeholder.dart';
import 'event_details.dart';
import 'event_page_details_info.dart';

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
    EventPageDetails(EventDetails(
        title: "Saran's Killing",
        startTime: DateTime(2019, 2, 2, 20, 0),
        endTime: DateTime(2019, 2, 2, 22, 30),
        location: "UTD")),
    PlaceHolder(Colors.lightBlueAccent),
    PlaceHolder(Colors.redAccent)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar:
          BottomNavigationBar(currentIndex: _currentIndex, onTap: onTabTapped, items: [
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
