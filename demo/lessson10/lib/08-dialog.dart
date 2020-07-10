import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: HomePage(),
      );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('对话框示例'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildSimpleDialog(),
              RaisedButton(
                child: Text('删除'),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            title: Text('警告！'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Text('是否删除?dddddd'),
                                  Text('删除后不可恢复！'),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              FlatButton(
                                child: Text('确定'),
                                onPressed: () {
                                  print('点击了确定');
                                  Navigator.of(context).pop();
                                },
                              ),
                              FlatButton(
                                child: Text('取消'),
                                onPressed: () {
                                  print('点击了取消');
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          ));
                },
              ),
            ],
          ),
        ),
      );

  SimpleDialog _buildSimpleDialog() {
    return SimpleDialog(
      title: Text('对话框的标题'),
      children: <Widget>[
        SimpleDialogOption(
          child: Text('选项1'),
          onPressed: () {
            print('确定');
          },
        ),
        SimpleDialogOption(
          child: Text('选项2'),
          onPressed: () {
            print('取消');
          },
        ),
        SimpleDialogOption(
          child: Text('选项3'),
          onPressed: () {
            print('选项3');
          },
        ),
      ],
    );
  }
}
