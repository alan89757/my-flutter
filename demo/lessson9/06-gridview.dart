import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('GridView 示例'),
          ),
          // body: _buildGridViewCount(),
          body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1 / 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 5.0,
            ),
            itemCount: 99,
            itemBuilder: (BuildContext context, int index) {
              print(index);
              return Container(
                color: Colors.orange,
                child: Text(
                  '$index',
                  style: TextStyle(fontSize: 20.0),
                ),
              );
            },
          ),
        ),
      );

  GridView _buildGridViewCount() {
    return GridView.count(
      crossAxisCount: 2, // 交叉轴
      scrollDirection: Axis.horizontal,
      childAspectRatio: 2 / 3,
      children: List.generate(
          100,
          (index) => Container(
                color: Colors.orange,
                margin: EdgeInsets.all(10.0),
                child: Text(
                  '$index',
                  style: TextStyle(fontSize: 20.0),
                ),
              )),
    );
  }
}
