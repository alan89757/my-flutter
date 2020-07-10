/// flutter中 ListView 可以沿一个方向去滚动 （  水平方向/垂直方向）

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('ListView 示例'),
          ),
          // body: _buildListView(),  // 右键 -- refactor ---> extract method/widget
          // body: HorizontalListView(),
          // body: GenerateListView(),
          // body: _buildListViewBuilder(),
          body: ListView.separated(
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Icon(Icons.favorite_border),
                title: Text('我的爱好$index'),
                subtitle: Text('吃饭睡觉打豆豆$index'),
                trailing: Icon(Icons.arrow_forward_ios),
              );
            },
            separatorBuilder: (BuildContext context, int index) => index.isOdd
                ? Divider(color: Colors.greenAccent)
                : Divider(color: Colors.red),
          ),
        ),
      );

  ListView _buildListViewBuilder() {
    return ListView.builder(
      // 另一个构造函数，适用于 创建很多项子列表元素
      /// 有两个关键参数
      /// itemBuilder  是创建列表项的方法。当列表滚动到相应的位置，ListView才会调用该方法创建
      /// itemCount    列表项的数量，如果为空的时候，表示ListView为无限列表
      // itemCount: 100,
      // itemExtent: 60.0, // 列表项的高度
      itemBuilder: (BuildContext context, int index) {
        return index.isOdd
            ? Divider(
                color: Colors.red,
              )
            : ListTile(
                leading: Icon(Icons.favorite_border),
                title: Text('我的爱好$index'),
                subtitle: Text('吃饭睡觉打豆豆$index'),
                trailing: Icon(Icons.arrow_forward_ios),
              );
      },
    );
  }

  // for 循环去生成

  // 普通用法
  ListView _buildListView() {
    MediaQueryData data = MediaQueryData.fromWindow(ui.window);
    print(data.size.width);
    return ListView(
      children: <Widget>[
        // 普通的用法，挨个加入 子组件
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('我的爱好'),
          subtitle: Text('吃饭睡觉打豆豆'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(
          color: Colors.greenAccent,
        ),
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('我的爱好'),
          subtitle: Text('吃饭睡觉打豆豆'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('我的爱好'),
          subtitle: Text('吃饭睡觉打豆豆'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text('我的爱好'),
          subtitle: Text('吃饭睡觉打豆豆'),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}

// 通过生成器的语法 去生成多个 item
/// 这种方法 其实  也是同步生成的
class GenerateListView extends StatelessWidget {
  const GenerateListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(40, (index) {
        print(index);
        return index.isOdd
            ? Divider(color: Colors.red)
            : ListTile(
                leading: Icon(Icons.favorite_border),
                title: Text('我的爱好$index'),
                subtitle: Text('吃饭睡觉打豆豆'),
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
      scrollDirection: Axis.horizontal, // 水平方向滚动
      itemExtent: 140, // item的延展尺寸
      children: <Widget>[
        Container(color: Colors.black),
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.green),
        Container(color: Colors.yellow),
        Container(color: Colors.orange),
      ],
    );
  }
}
