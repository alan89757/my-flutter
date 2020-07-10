import 'package:flutter/material.dart';
import 'dart:math';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          // 脚手架
          appBar: AppBar(
            title: Text('Container示例'),
          ),
          body: Center(
            // container 我们理解成   前端  div
            child: Container(
              // color: Colors.red,
              padding: EdgeInsets.all(10.0),
              // EdgeInsets.only(left: 10,top: 10)
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                  color: Colors.blue,
                  width: 5.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                // color:
              ),
              transform: Matrix4.rotationZ(-pi / 9),
            ),
          ),
        ),
      );
}
