import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  GlobalKey<FormState> _loginKey = GlobalKey<FormState>();
  String _username;
  String _password;

  void _login() {
    var _loginForm = _loginKey.currentState;
    if (_loginForm.validate()) {
      _loginForm.save();
      print('name: $_username; password: $_password');
    }
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('表单示例')),
          body: Center(
            child: Container(
              padding: EdgeInsets.all(40.0),
              child: Form(
                key: _loginKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: '请输入用户名',
                        hintText: 'Eason',
                        labelStyle: TextStyle(fontSize: 20.0),
                      ),
                      onSaved: (value) {
                        _username = value;
                        print('onSaved: $value');
                      },
                      onFieldSubmitted: (value) {
                        print('onFieldSubmitted: $value');
                      },
                      validator: (value) => value == '' ? '用户名不能为空' : null,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: '请输入密码',
                        hintText: '123456',
                        labelStyle: TextStyle(fontSize: 20.0),
                      ),
                      onSaved: (value) {
                        _password = value;
                      },
                      onFieldSubmitted: (value) {},
                      validator: (value) {
                        return value.length > 6 || value.length < 2
                            ? '密码长度不能小于2或者大于6'
                            : null;
                      },
                    ),
                    Container(
                      width: 400.0,
                      padding: EdgeInsets.only(top: 40.0),
                      child: RaisedButton(
                        child: Text('登录'),
                        onPressed: _login,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
