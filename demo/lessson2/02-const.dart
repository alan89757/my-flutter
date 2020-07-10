main(List<String> args) {
  // 常量的定义  final   const
  final String a = 'abc';
  final b = 'bcd';

  // a = 'aaa';// x

  // b = 'bbb';

  // 刚才讲了 var
  // final var c = 'ccc';
  // const var d = 'ddd';

  const List ls = const [11, 2, 3];

  // ls.add(20);
  print(ls);


  final ls1 = [1,2,3];
  ls1[0] = 2;
  print(ls1);


}
