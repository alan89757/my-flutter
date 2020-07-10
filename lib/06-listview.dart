import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('listView 示例'),),
      body: ListView.separated(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.favorite_border),
            title:Text('喜欢食物'),
            subtitle: Text('吃苹果$index'),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return index.isOdd ? Divider(color: Colors.greenAccent) : Divider(color: Colors.red);
        },
      ),
    ),
  );
  ListView _buildListViewBuilder() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return index.isOdd ? Divider(color: Colors.red,) : ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('喜欢的食物$index'),
          subtitle: Text('喜欢的水果$index'),
          trailing: Icon(Icons.arrow_forward_ios),
        );
      }
    );
  }

  ListView _buildListView() {
    MediaQueryData data = MediaQueryData.fromWindow(ui.window);
    print(data.size.width);
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('喜欢的水果'),
          subtitle: Text('吃苹果，吃香蕉'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(color: Colors.greenAccent,),
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('喜欢的水果'),
          subtitle: Text('吃苹果，吃香蕉'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(color: Colors.greenAccent,),
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('喜欢的水果'),
          subtitle: Text('吃苹果，吃香蕉'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ]
    );
  }
}

class GenerateListView extends StatelessWidget {
  const GenerateListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(40, (index) {
        print(index);
        return index.isOdd ? Divider(color: Colors.red) : ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('喜欢水果$index'),
          subtitle: Text('苹果香蕉'),
          trailing: Icon(Icons.arrow_forward_ios),
        );
      }),
    );
  }
}

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    Key key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      itemExtent: 140,
      children: <Widget>[
        Container(color: Colors.black),
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.green),
        Container(color: Colors.yellow),
        Container(color: Colors.orange)
      ],
    );
  }
}

