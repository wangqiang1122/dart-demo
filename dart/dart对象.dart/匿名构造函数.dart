void main() {
  Person a = new Person.now();
  Person b = new Person.set('dd');
  b.personInfo();
}

// dart 里构造函数可以写多个命名构造函数

class Person{
  String name = '好好睡';
  int age = 11;
  Person(this.name);
  Person.now () {
    print('我是命名构造函数');
  }
  Person.set(this.name);
  personInfo() {
    print('${this.name}');
  }
}