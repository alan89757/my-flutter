import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('text 示例')
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'hello world',
              maxLines: 2,
              overflow:TextOverflow.ellipsis,
              softWrap: false,
              style: TextStyle(
                fontSize: 30.0,
                color: Color(0xff00ffff),
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.double
              )
            ),
            SizedBox(
              height: 40.0,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 50.0
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '我是alan',
                    style: TextStyle(color: Colors.lightGreen)
                  ),
                  TextSpan(
                    text: '只为自己代言',
                    style: TextStyle(color: Colors.orange, fontSize: 20.0),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        String url = 'http://www.baidu.com';
                        if(await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'error $url';
                        }
                      }
                  )
                ]
              ),
            ),
            Text.rich(TextSpan(children: <TextSpan>[]))
          ]
        ),
      ),
      )
  );
}

