import 'package:flutter/material.dart';

class EventList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RefreshIndicator(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return buildCard(context);
        },
      ),
      onRefresh: refreshList,
    );
  }

  Future<Null> refreshList() async {
    //network call and setState so that view will render the new values
    print("refresh");
  }

  Widget buildCard(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 74, 96, 0.9)),
        child: buildListTile(context),
      ),
    );
  }

  Widget buildListTile(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: BoxDecoration(
            border:
                Border(right: BorderSide(width: 1.0, color: Colors.white24))),
        child: Icon(
          Icons.autorenew,
          color: Colors.white,
        ),
      ),
      title: Text(
        "Event Number 1",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: <Widget>[
          Icon(
            Icons.linear_scale,
            color: Colors.yellowAccent,
          ),
          Text(
            " Feb 2 Sat. 1-2PM",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        color: Colors.white,
        size: 30.0,
      ),
    );
  }
}
