import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main(List<String> args) =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title:Text('图片示例')
      ),
      body: Center(
        child: Column(children: <Widget>[
          Image.network(
            'http://img0.bdstatic.com/static/searchdetail/img/logo-2X_0c4ef02.png',
            width: 50.0
          ),
          Image.asset(
            'images/haha.jpg',
            width: 100.0
          ),
          MemoryImageWidget(),
          FileImageWidget(),
        ],)
      )
    )
  )
}

class MemoryImageWidget extends StatefulWidget {
  @override
  _MemoryImageWidgetState createState() => _MemoryImageWidgetState();
}

class _MemoryImageWidgetState extends State<MemoryImageWidget> {
  Uint8List bytes;

  @override
  void initState() {
    super.initState();
    rootBundle.load('images/haha.jpg').then((data) => {
      if(mounted) {
        setState((){
          bytes = data.buffer.asUint8List();
        })
      }
    });
  }

  Widget build(BuildContext context) {
    final decoration = BoxDecoration(
      image: bytes == null ? null : DecorationImage(image: MemoryImage(bytes))
    );
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
      source:ImageSource.gallery,
    );
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          _image == null ? Text('未选择图片')
          : Image.file(_image, width: 200.0, height: 150.0),
          FlatButton(child: Text('请选择图片'),
          onPressed: getImg,
          color: Colors.greenAccent,
          )
        ]
      ),
    );
  }
}
