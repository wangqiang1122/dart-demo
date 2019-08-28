main() {
List list = new List<num>(); // 添加的数据必须复合泛型
list.add(111); // 不报错
// list.add('222'); // 报错
Person a = new Person<int>(); // 添加的参数必须是泛型的
a.add(111);
a.add(222);  // 运行起来会报错
a.printInfo();
}

// 自定义的泛型类
class Person<T>{
  List list = new List<T>(); // list添加数据的校验
  void add(T value) { // 对add传入的参数进行校验
    this.list.add(value);
  }
  void printInfo() {
    this.list.forEach((item)=>
        print(item)     // 这种方式只能写一行
    );
  }
}