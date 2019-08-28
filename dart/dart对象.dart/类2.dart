
void main() {
  Person v = new Person('222');
  v.personInfo();
}

// class Person{
//   String name = '好好睡';
//   int age = 11;
//   Person([name]) {
//     // if (name==null) {
//     //   this.name = '111';
//     // }
//     this.name = name==null?name:'空';
//   }
//   personInfo() {
//     print('${this.name}');
//   }
// }
// 构造函数简写
class Person{
  String name = '好好睡';
  int age = 11;
  Person(this.name);
  personInfo() {
    print('${this.name}');
  }
}