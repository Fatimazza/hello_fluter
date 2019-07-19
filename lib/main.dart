import 'package:flutter/material.dart';

void main() => runApp(PageRoutingApp());

class PageRoutingApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Routing App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Routing App'),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              RaisedButton(
                child: Text('Page A'),
              ),
              RaisedButton(
                child: Text ('Page B'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
