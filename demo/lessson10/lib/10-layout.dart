import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('布局组件')),
          // body: _buildContainer(),
          // body: _buildRow(),
          // body: _buildColumn(),
          body: Stack(
            //  基于文档流
            children: <Widget>[
              Container(
                color: Colors.yellow,
                width: 300.0,
                height: 300.0,
              ),
              Positioned(
                left: 18.0,
                top: 20.0,
                child: Container(
                  color: Colors.green,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Positioned(
                left: 19.0,
                top: 70.0,
                child: Text(
                  'Stack 提供了一个层叠布局的容器，Positioned 用于设置 left top right bottom',
                  style: TextStyle(fontSize: 10.0),
                ),
              ),
              Positioned(
                left: 20.0,
                top: 80.0,
                child: Container(
                  color: Colors.orange,
                  width: 30.0,
                  height: 30.0,
                ),
              )
            ],
          ), // Positioned  ===> Stack
        ),
      );

  Column _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          color: Colors.yellow,
          width: 60.0,
          height: 80.0,
        ),
        Container(
          color: Colors.red,
          width: 100.0,
          height: 180.0,
        ),
        Container(
          color: Colors.black,
          width: 60.0,
          height: 80.0,
        ),
        Container(
          color: Colors.orange,
          width: 60.0,
          height: 80.0,
        ),
      ],
    );
  }

  Row _buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Colors.yellow,
          width: 60.0,
          height: 80.0,
        ),
        Container(
          color: Colors.red,
          width: 100.0,
          height: 180.0,
        ),
        Container(
          color: Colors.black,
          width: 60.0,
          height: 80.0,
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.orange,
            height: 80.0,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.green,
            height: 60.0,
          ),
        )
      ],
    );
  }

  Container _buildContainer() {
    return Container(
      // padding: EdgeInsets.fromLTRB(10.0, 15.0, 5.0, 20.0),
      // padding: EdgeInsets.all(20.0),
      // padding: EdgeInsets.only(left: 50.0, top: 20.0),
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
      // symmetric   设置 水平 与 垂直方向
      //  all 用于设置四周
      // only 里边的参数都是可选的
      width: 180.0,
      height: 240.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text('做一家受人尊敬的企业，做一名受人尊敬的老师，是动脑学院一直以来追求的宗旨！'),
    );
  }
}

///  Container   设置宽高，margin  padding
///  Padding
///  Center  居中布局
///  Align  用于设置对齐方式
///
///
/// Row   Coloumn      用于 横向布局 或者 纵向布局
/// Expanded  用于设置 伸缩的 布局元素
