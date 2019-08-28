/* 赋值运算符
// 基础赋值运算符 =    ??=
// 复合赋值运算符 += -= *= /= %= ～/=
*/

void main() {
  // print('2');

  int a=2;
  a??=10; // a如果为空把10赋给a
  print(a);
  int b = 11;
  print(b~/=2); // 取整数赋值
  ///
  var c=2;
  var d = 'dart';
  print(c??d);

}