class Person{
  String name = '好好睡';
  int age = 11;
  String _sex = '哪呢';
  Person(this.name);
  Person.now () {
    print('我是命名构造函数');
  }
  Person.set(this.name);
  personInfo() {
    print('${this.name}');
  }
  String getSex() {
    return this._sex;
  }
  // 私有方法一样
  void _file() {

  }
  void runFile() {
    this._file();
  }
}