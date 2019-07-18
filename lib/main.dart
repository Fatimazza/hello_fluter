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
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text('Error',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    border: Border.all(color: Color(0x0FF000000))),
              ),
            ),
            Expanded(
              child: Text('Grid of Multiple Images'),)
          ],
        ),
      ),
    );
  }
}
