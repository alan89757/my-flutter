import 'package:flutter/material.dart';

void main(List<String> args) {
  return runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _selectedIndex = 0;
  final List<Map<String, void>> tabsList =  [
    {"key": 1, "label": '关注'},
    {"key": 2, "label": '软件'},
    {"key": 3, "label": '资讯'},
    {"key": 4, "label": '推荐'},
    {"key": 5, "label": '问答'},
    {"key": 6, "label": '博客'},
    {"key": 7, "label": '英文'}
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      '关注',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold
      )
    ),
    Text(
      '软件',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold
      )
    ),
    Text(
      '资讯',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold
      )
    ),
    Text(
      '推荐',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold
      )
    ),
    Text(
      '问答',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold
      )
    ),
    Text(
      '博客',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold
      )
    ),
    Text(
      '英文',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold
      )
    )
  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 7, 
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(text: '关注'),
                Tab(text: '软件'),
                Tab(text: '资讯'),
                Tab(text: '推荐'),
                Tab(text: '问答'),
                Tab(text: '博客'),
                Tab(text: '英文'),
              ]
            )
          ),
          body: _widgetOptions.elementAt(_selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                title: Text('综合'),
                icon: Icon(Icons.home)
              ),
              BottomNavigationBarItem(
                title: Text('动弹'),
                icon: Icon(Icons.business)
              ),
              BottomNavigationBarItem(
                title: Text('+'),
                icon: Icon(Icons.school)
              ),
              BottomNavigationBarItem(
                title: Text('发现'),
                icon: Icon(Icons.school)
              ),
              BottomNavigationBarItem(
                title: Text('我的'),
                icon: Icon(Icons.school)
              ),
            ],
            onTap: _onItemTapped,
            // backgroundColor: Color(0xff63ca6c),
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            type: BottomNavigationBarType.fixed,
          ),
        ),
      )
    );
  }
}
