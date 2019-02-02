import 'package:flutter/material.dart';

class EventPageHeroImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: Text(
                "Car Meets",
              ),
              leading: BackButton(),
              actions: <Widget>[],
              backgroundColor: Colors.black87,
              expandedHeight: 200,
            ),
          ];
        },
        body: Container(
          height: 150,
        ),
      ),
    );
  }
}
