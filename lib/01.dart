import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomePage(title: '应用标题'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);  // 注册一个监听器
  }
  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this); // 移除监听器
  }
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    print('$state');
    if(state == AppLifecycleState.resumed) {
      print("welcome");
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    debugPaintBaselinesEnabled = true;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'you have pushed the button this many times',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline1,
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(onPressed: _incrementCounter, tooltip: 'Increment', child: Icon(Icons.add)),
    );
  }
}
