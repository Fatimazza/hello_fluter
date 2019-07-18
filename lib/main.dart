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
    // TODO: implement build
    return new MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: const Text('Multiple Image Picker App'),
        ),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Select Multiple Images'),
                RaisedButton(
                    child: Text(
                      'Click',
                      style: TextStyle(color: Colors.white
                      ),
                    ),
                    color: Colors.blue,
                    onPressed: null)
              ],
            )
          ],
        ),
      ),
    );
  }
}


