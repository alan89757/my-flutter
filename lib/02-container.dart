import 'dart:math';

import 'package:flutter/material.dart';

main(List<String> args) {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(appBar: AppBar(
      title: Text("container示例")),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(
              color: Colors.blue,
              width: 5.0
            ),
            borderRadius: BorderRadius.all(Radius.circular(30.0))
          ),
          transform: Matrix4.rotationZ(-pi / 9),
        )
      )
    ),
    
  )
}
