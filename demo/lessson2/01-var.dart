main(List<String> args) {
  // var a;
  // 变量，没有初始值，那么它可以是 任何类型
  // a= 'dongnao';
  // a = 123;
  // a = true;
  // a = {'key': 'value'};
  // a = ['123','abc'];
  // print(a);

  // Object b = 'string';
  // b = 123;
  // b = {'key':'value'};
  // print(b);

  // dynamic c = 'string';
  // a = 123;

  // var d = 123;
  // d = 'string';
  // 使用var 声明的时候，如果 没有初始值 ，后边可以作为任意类型。如果有初始值，则类型被锁定。

  String a;
  bool b;
  num c; // dart中的 数值 类型
  // int   double
  // 使用强类型声明的时候，类型被锁定。
  c = 123;
  c = 123.123;
  int d;
  // d = 123.12;
  // print(b);
  d = 1;
  d = 0xeeadbef;

  double e;
  e = 1.1;
  e = 1.13e5;

  // 基础运算符
  // + - * / %
  // 1 +1;

  // 为了表示 布尔值，dart 使用了一种 名为 bool
  // true 和 false  ,他们都是编译时常量

  //  检查 是否为0
  num number = 0;
  // assert(number);
  // if(number){

  // }

  // utf-16 的 字符组成
  String str = '123';
  String str2 = "dddd";

  // 字符串模板
  String s = 'hello world';
  
  String s1 = '输入一个大写的${s.toUpperCase()}';

  var s2 = 'hello' + ' ' + 'world';

  var s3 = '''
  今天天气好，
  出门去玩！''';
  print(s3);

  print(s1);
}
