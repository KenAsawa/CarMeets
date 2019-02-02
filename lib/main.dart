import 'package:flutter/material.dart';

import './description_cards.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget { //Stateless takes less resources than Stateful
  @override // Stateless do not change, but can contain Stateful widgets.
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue, //Changes app color
        //accentColor: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar( //Top of the app
          title: Text('Basic AppBar'),
        ),
        body: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: [
              new Container(
                child: DescriptionCards(title: 'This is my Description', text: 'Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free. Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free. Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free. Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free.')
              )
            ]
          )
        ),
        //Calls the ProductManager for the Body
      ),
    );
  }
}
