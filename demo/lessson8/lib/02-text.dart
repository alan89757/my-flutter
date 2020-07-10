import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          // 脚手架
          appBar: AppBar(
            title: Text('Text 示例'),
          ),
          body: Center(
              // container 我们理解成   前端  div
              child: Column(
            children: <Widget>[
              Text(
                '做一家受人尊敬的企业，做一位受人尊敬的老师！是我们动脑学院一直以来的追求！',
                maxLines: 2,
                // textAlign: TextAlign.end,
                overflow: TextOverflow.ellipsis,
                softWrap: false, // 是否自动换行
                style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xff00ffff),
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.red,
                    decorationStyle: TextDecorationStyle.double),
              ),
              SizedBox(
                height: 40.0,
              ),
              // DefaultTextStyle(
              //     // 用于设置 默认的文本样式
              //     ),
              RichText(
                  text: TextSpan(
                      style: TextStyle(
                        fontSize: 50.0,
                      ),
                      children: <TextSpan>[
                    TextSpan(
                      text: '做一家受人尊敬的企业',
                      style: TextStyle(color: Colors.lightGreen),
                    ),
                    TextSpan(
                        text: '做一位受人尊敬的老师',
                        style: TextStyle(color: Colors.orange, fontSize: 20.0),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            String url = 'http://www.baidu.com';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'error $url';
                            }
                          }),
                  ])),
              Text.rich(TextSpan(children: <TextSpan>[])),
            ],
          )),
        ),
      );
}
