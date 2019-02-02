import 'package:flutter/material.dart';
import 'package:map_view/map_view.dart';

class EventMap extends StatelessWidget {
  final String name = "Car Meet Event";
  final DateTime timestamp = new DateTime.now().add(Duration(days: 3));
  final String street = "1370 Ringway Blvd. #193";
  final _mapView = MapView();

  void showMap() {
    this._mapView.show(new MapOptions(showUserLocation: true));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          title: Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
            textScaleFactor: 2,
          ),
          contentPadding: EdgeInsets.only(left: 70),
        ),
        ListTile(
          title: Text(timestamp.toString()),
          leading: Icon(Icons.calendar_today),
        ),
        ListTile(title: Text(street), leading: Icon(Icons.map), dense: true),
        ButtonTheme.bar(
          child: ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Text("VIEW"),
                onPressed: showMap,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
