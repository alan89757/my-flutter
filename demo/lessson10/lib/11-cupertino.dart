import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Icon(CupertinoIcons.home),
          middle: Text('IOS风格'),
        ),
        child: Center(
          child: Text('IOS风格'),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => CupertinoApp(
        title: 'app的名称',
        home: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                title: Text('首页'),
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.mail),
                title: Text('消息'),
              ),
            ],
          ),
          tabBuilder: (context, index) => CupertinoTabView(
            builder: (context) {
              switch (index) {
                case 0:
                  return MyHome();
                case 1:
                  return MyMessage();
                default:
                  return null;
              }
            },
          ),
        ),
      );
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Icon(
          CupertinoIcons.back,
          color: Color(0xff000000),
        ),
        middle: Text('我的首页'),
        trailing: Icon(CupertinoIcons.search),
      ),
      child: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('我的首页'),
              CupertinoButton(
                child: Text('ios按钮'),
                color: Color.fromRGBO(255, 20, 0, 1),
                onPressed: () {},
              ),
              CupertinoAlertDialog(
                title: Text('ios对话框'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Text('请问是否删除？'),
                      Text('删除后不可恢复！'),
                    ],
                  ),
                ),
                actions: <Widget>[
                  CupertinoButton(
                    child: Text('确定'),
                    onPressed: () {
                      print('确定删除');
                    },
                  ),
                  CupertinoButton(
                    child: Text('取消'),
                    onPressed: () {
                      print('取消删除');
                    },
                  )
                ],
              ),
              CircularProgressIndicator(),
              CupertinoActivityIndicator(
                radius: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Icon(
          CupertinoIcons.back,
          color: Color(0x00fffff00),
        ),
        middle: Text('消息'),
        trailing: Icon(CupertinoIcons.search),
      ),
      child: Center(
        child: Text('我的消息'),
      ),
    );
  }
}
