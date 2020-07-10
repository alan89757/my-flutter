import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          // 脚手架
          appBar: AppBar(
            title: Text('图标和按钮'),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.person,
                  size: 100.0,
                ),
                SizedBox(height: 40.0),
                RaisedButton(
                  child: Text('我是基本按钮'),
                  onPressed: () => print('我点击了图标'),
                ),
                FlatButton(
                  child: Text('FlatButton'),
                  onPressed: () => print('我点击了flat Button'),
                  // color: Colors.grey,
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            // child: Text('图标'),
            child: Icon(Icons.add),
            onPressed: () => print('我点击了浮动按钮'),
          ),
        ),
      );
}
