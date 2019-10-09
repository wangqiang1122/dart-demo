/**
 * Dart多态
 * 允许将子类类型的指针赋值给父类类型的指针，同一个函数会有不同的执行效果
 * 子类的是累赋值给父类的引用
 * 多态就是父类定义一个方法不去实现，让继承他的子类去实现，每个子类有不同的表现
 * 
 */

 abstract class Animal {
   eat();// 抽象方法 继承的子类必须实现
   printInfo(){
     print('我是不同的');
   }
}

class Cat extends Animal {
  @override
  eat() {
    print('小猫在吃鱼');
  }
  run() {}
}

main() {
    Animal a = new Cat(); // 把子类的赋给赋给了父类的引用 就没有run方法了
    a.eat();
    a.printInfo();
}  