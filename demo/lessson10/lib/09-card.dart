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
          title: Text('Card 示例'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                // elevation: 0.0,
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'images/tzd.jpg',
                      width: double.infinity,
                      height: 150.0,
                      fit: BoxFit.fill,
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.favorite),
                        ),
                        Expanded(
                          // 类似于 flex布局中  剩余部分
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '棒棒的！',
                                style: TextStyle(fontSize: 18.0),
                              ),
                              Text(
                                '5000',
                                style: TextStyle(fontSize: 14.0),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.home,
                                color: Colors.orange,
                              ),
                              Text('1111')
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
