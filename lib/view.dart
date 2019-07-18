import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class ViewImages extends StatefulWidget {
  final int _index;
  final Asset _asset;

  ViewImages(
      this._index, this._asset, {Key key}) : super(key: key);

  @override
  State<StatefulWidget>
  createState() => AccessState(this._index, this._asset);
}

class AccessState extends State<ViewImages> {
  int _index = 0;
  Asset _asset;

  AccessState(this._index, this._asset)

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  void _loadImage() async {
    await this._asset.requestThumbnail(300, 300, quality: 50);
    if (this.mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}
