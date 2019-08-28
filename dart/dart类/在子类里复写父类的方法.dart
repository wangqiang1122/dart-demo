class Person {
  String name;
  num age;
  Person(this.name,this.age);
  void printInfo() {
    print('${this.name}--${this.age}');
  }
  void work() {
    print('dddd');
  }
}

class Web extends Person{
  String sex;
  Web(String name, num age, String sex) : super(name, age){
     this.sex = sex;
  }
  run() {
    super.work();
  }
  @override
  void printInfo() {
        print('${this.name}--${this.age}---${this.sex}');

  } 
}

void main() {
  Web a = new Web('name', 111, 'sex');
  a.printInfo();
  a.run();

}