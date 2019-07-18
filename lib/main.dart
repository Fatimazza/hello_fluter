import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Asset> images = List<Asset>();
  String _error = 'No Error Dectected';

  @override
  void initState() {
    super.initState();
  }

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
                    onPressed: loadAssets)
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

  Future<void> loadAssets() async {
    setState(() {
      images = List<Asset>();
    });

    List<Asset> resultList = List<Asset>();
    String error = 'No Error Dectected';

    try {
      resultList = await MultiImagePicker
          .pickImages(
          maxImages: 10,
          enableCamera: true,
          options: CupertinoOptions(takePhotoIcon: "chat")
      );
    } on PlatformException catch (e) {
      if (!mounted)
        return;
      setState(() {
        images = resultList;
        _error = error;
      });
    }
  }
}
