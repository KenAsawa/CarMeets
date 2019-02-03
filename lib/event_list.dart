import 'package:car_meets/event_details.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './string_utils.dart';

class EventList extends StatelessWidget {
  final List<EventDetails> eventDetails;

  const EventList(this.eventDetails);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return buildCard(context, index);
        },
      ),
      onRefresh: refreshList,
    );
  }

  Future<Null> refreshList() async {
    //network call and setState so that view will render the new values
    print("refresh");
  }

  Widget buildCard(BuildContext context, int index) {
    return Card(
      elevation: 8.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 74, 96, 0.9)),
        child: buildListTile(context, index),
      ),
    );
  }

  Widget buildListTile(BuildContext context, int index) {
    return ListTile(
      contentPadding: EdgeInsets.fromLTRB(10, 20, 20, 20),
      leading: Container(
        padding: EdgeInsets.only(right: 0),
        child: Image.asset(
          "assets/images/food.jpg",
          fit: BoxFit.cover,
        ),
        width: 120.0,
        height: 90.0,
      ),
      title: Text(
        eventDetails[index].title,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0),
      ),
      subtitle: timeDetails(eventDetails[index]),
      trailing: Container(
          padding: EdgeInsets.fromLTRB(5.0, 0, 0, 0),
          height: 100.0,
          child: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
            size: 30.0,
          ),
          decoration: BoxDecoration(
              border:
                  Border(left: BorderSide(width: 2.0, color: Colors.white24)))),
    );
  }

  Widget timeDetails(EventDetails _eventDetails) {
    return Row(
      children: <Widget>[
        Container(
            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
            width: 75,
            child: Text(
              DateFormat("MMM d").format(_eventDetails.startTime),
              style: TextStyle(color: Colors.white70, fontSize: 20.0),
            )),
        Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              DateFormat(timeFormat(_eventDetails.startTime))
                  .format(_eventDetails.startTime),
              style: TextStyle(color: Colors.white, fontSize: 19.0,  fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
