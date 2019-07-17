import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Camera Image Picker',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Camera Image Picker'),
        ),
        body: new Center(
          child: new Text('No Image Selected')
        ),
        floatingActionButton: new FloatingActionButton(
          tooltip: 'Pick Image',
          child: new Icon(Icons.camera),
        ),
      ),
    );
  }
}
