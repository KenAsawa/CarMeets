import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './event_details.dart';
import './string_utils.dart';

class EventPage extends StatelessWidget {
  final EventDetails _eventDetails;

  EventPage(this._eventDetails);

  @override
  Widget build(BuildContext context) => Container(
          child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          titleDetails(),
          Divider(height: 30),
          timeDetails(),
        ],
      ));

  Widget timeDetails() {
    var startTimeFormat = timeFormat(_eventDetails.startTime);
    var endTimeFormat = timeFormat(_eventDetails.endTime);
    return Row(
      children: <Widget>[
        SizedBox(width: 10),
        Icon(Icons.alarm),
        SizedBox(width: 10),
        Text(
          DateFormat("EEEE, MMMM d, y 'at' $startTimeFormat - ")
                  .format(_eventDetails.startTime) +
              DateFormat(endTimeFormat).format(_eventDetails.endTime),
          style: TextStyle(fontSize: 17),
        )
      ],
    );
  }

  Widget titleDetails() => Row(
        children: <Widget>[
          SizedBox(width: 10),
          Column(
            children: <Widget>[
              Text(
                DateFormat.MMMM()
                    .format(_eventDetails.startTime)
                    .substring(0, 3)
                    .toUpperCase(),
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
              SizedBox(height: 10),
              Text(
                DateFormat.d().format(_eventDetails.startTime),
                style: TextStyle(
                  fontSize: 30,
                ),
              )
            ],
          ),
          SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Cars and Comets",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              Opacity(
                  opacity: 0.7,
                  child: Text("Hosted by The Drivers Club at UT Dallas",
                      style: TextStyle(fontSize: 16)))
            ],
          )
        ],
      );
}
