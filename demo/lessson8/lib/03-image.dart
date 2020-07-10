import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

void main(List<String> args) => runApp(MyApp());

// https://pub.dev   所有第三方包的 仓库

// stl
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('图片的使用'),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Image.network(
                  'http://b.hiphotos.baidu.com/image/pic/item/32fa828ba61ea8d3fcd2e9ce9e0a304e241f5803.jpg',
                  width: 50.0,
                ),
                Image.asset(
                  'images/tzd.jpg',
                  width: 100.0,
                ),
                MemoryImageWidget(),
                FileImageWidget(),
              ],
            ),
          ),
        ),
      );
}

// 封装成一个组件
class MemoryImageWidget extends StatefulWidget {
  @override
  _MemoryImageWidgetState createState() => _MemoryImageWidgetState();
}

class _MemoryImageWidgetState extends State<MemoryImageWidget> {
  Uint8List bytes;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    rootBundle.load('images/tzd.jpg').then((data) {
      if (mounted) {
        setState(() {
          bytes = data.buffer.asUint8List();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final decoration = BoxDecoration(
        image: bytes == null
            ? null
            : DecorationImage(
                image: MemoryImage(bytes),
              ));

    return Container(
      decoration: decoration,
      width: 200.0,
      height: 200.0,
    );
  }
}

class FileImageWidget extends StatefulWidget {
  @override
  _FileImageWidgetState createState() => _FileImageWidgetState();
}

class _FileImageWidgetState extends State<FileImageWidget> {
  File _image;

  Future getImg() async {
    var image = await ImagePicker.pickImage(
      source: ImageSource.gallery,
    );
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          children: <Widget>[
            _image == null
                ? Text('未选择图片')
                : Image.file(_image, width: 200.0, height: 150.0),
            FlatButton(
              child: Text('请选择图片'),
              onPressed: getImg,
              color: Colors.greenAccent,
            )
          ],
        ),
      );
}
