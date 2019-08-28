// final 开始不赋值，运行时才赋值，const 开始必须赋值

void main() {
  const str = 'ddddd';
  final a = new DateTime.now();
  int num = 2222;
  bool h = false;
  print(str);
  print(num);
  print(a);
  print(h);
  f();
}

f() {
  print('2222');
}