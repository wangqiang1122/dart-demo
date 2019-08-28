import 'lib/person.dart';


void main() {
  var a = new Person('222');
  // print(a._sex);  // 私有乌无法访问
  print(a.getSex());
}

// class Person{
//   String name = '好好睡';
//   int age = 11;
//   String _sex ='男';   // 在一个文件里可以访问 必须要单独成立成一个文件
//   Person(this.name);
//   Person.now () {
//     print('我是命名构造函数');
//   }
//   Person.set(this.name);
//   personInfo() {
//     print('${this.name}');
//   }
// }