import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class ViewImages extends StatefulWidget {
  final int _index;
  final Asset _asset;

  ViewImages(
      this._index, this._asset, {Key key}) : super(key: key);

  @override
  State<StatefulWidget>
  createState() => AccessState();
}

class AccessState extends State<ViewImages> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}
