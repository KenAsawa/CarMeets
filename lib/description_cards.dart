import 'package:flutter/material.dart';

class DescriptionCards extends StatefulWidget {
  final String title;
  final String text;

  DescriptionCards({String title, String text})
      : this.title = title,
        this.text = text;

  _DescriptionCardsState createState() => new _DescriptionCardsState();
}

class _DescriptionCardsState extends State<DescriptionCards> {
  String firstHalf;
  String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 200) {
      firstHalf = widget.text.substring(0, 200);
      secondHalf = widget.text.substring(200, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new ListTile(
              title: Text(widget.title),
            ),
            new Divider(
              height: 0.0,
              color: Colors.grey[700],
            ),
            new Container(
              padding:
                  new EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: secondHalf.isEmpty
                  ? new Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Text(firstHalf),
                      ],
                    )
                  : new Column(
                      children: <Widget>[
                        new Text(flag
                            ? (firstHalf + "...")
                            : (firstHalf + secondHalf)),
                        new InkWell(
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Text(
                                flag ? "Show More" : "Show Less",
                                style: new TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                          onTap: () {
                            setState(() {
                              flag = !flag;
                            });
                          },
                        ),
                      ],
                    ),
            )
          ],
        ),
      ),
    );
  }
}
