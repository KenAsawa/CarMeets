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
      contentPadding: EdgeInsets.fromLTRB(10, 20, 20, 20),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: BoxDecoration(
            border:
                Border(right: BorderSide(width: 2.0, color: Colors.white24))),
        child: Image.asset(
          "assets/images/food.jpg",
          fit: BoxFit.cover,
        ),
        width: 120.0,
        height: 90.0,
      ),
      title: Text(
        "UTD Car Club",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0),
      ),
      subtitle: Row(
        children: <Widget>[
          Icon(
            Icons.linear_scale,
            color: Colors.greenAccent[400],
          ),
          Text(
            " Feb 2 Sat. 1-2PM",
            style: TextStyle(color: Colors.white, fontSize: 19.0),
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
