

class Person {
  String name;
  num age;
  Person(this.name,this.age);
  Person.XXX(this.name,this.age);
  void printInfo() {
    print('${this.name}--${this.age}');
  }
}

// 在构造函数执行之前 把子类传过来的参数先 赋给父类构造函数 赋值
class Web extends Person{
  String sex;
  // Web(String name, num age, String sex) : super(name, age){
  //    this.sex = sex;
  // } // 
  Web(String name, num age, String sex) : super.XXX(name,age){
     this.sex = sex;
  }
  // 命名构造函数传参数

  run(){
        print('${this.name}--${this.age}---${this.sex}');

  }

}
void main() {
  Web v = new Web('fff', 22222,'女');
  v.run();
}