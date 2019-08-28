void main() {
  Person a = new Person('我是参数');
  a.getInfo();
}


class Person{
  Person(Key) {
     this.name = Key;
  }
  String name = '我是谁';
  int age = 21;
  getInfo() {
    print('${this.name}');
  }
}
