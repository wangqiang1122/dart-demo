/**
 * dart 对象操作符号
 * ？ 条件运算符号
 * as 类型转换
 * is 类型判断
 * .. 忌廉操作（）相当与jq的链式操作 
 * 
 *  */

 class Person {
   String name;
   num age;
   Person(this.name,this.age);
   void printInfo() {
     print('${this.name}${this.age}');
   }
 }

 void main() {
  //  Person p = new Person('2', 2);
  // //  p?.printInfo();
  // print(p is Person);
  // print(p is Object);

  // var p ;
  // p = '';
  // p = new Person('name', 444);
  // // (p as Person).printInfo();
  // p.printInfo(); // 不建议这样写


  /// 链坠操作
  Person p = new Person('2',6);

  p..name='我是'
   ..age=2
   ..printInfo()
   ..age =9
   ..printInfo();
 }