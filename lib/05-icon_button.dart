import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('图标按钮'),
      ),
      body: Center(
        child: Column(children: <Widget>[
          Icon(
            Icons.person,
            size: 100.0
          ),
          SizedBox(height: 40.0,),
          RaisedButton(
            child: Text('基本按钮'),
            onPressed: ()=> print("I'm click"),
          ),
          FlatButton(onPressed: ()=> print('点击了flat button'), child: Text('FlatButton'))
        ],)
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=>print('点击了浮动按钮'), child: Icon(Icons.add),),
    )
  );
}