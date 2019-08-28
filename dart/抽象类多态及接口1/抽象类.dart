/**
 * Dart中的抽象类：Dart抽象类主要用于定义标准，子类可以继承，也可以实现抽象类接口
 * 
 * 1 抽象类通过abstract 关键字来定义
 * 2 Dart中的抽象方法不能用abstract声明，Dart中没有方法体的方法我们称之为抽象方法
 * 3 如果子类继承抽象类必须实现里面的抽象方法
 * 4 如果把抽象类当做接口实现的话必须得实现抽象类里面定义的所有属性和方法
 * 5 抽象类不能被实例化，只有继承他的子类
 * 
 * extends抽象类和implements的区别：
 * 1 如果要复用抽象类里面的方法，并且要用抽象方法约束子类的话我们就用extends继承
 * 抽象类
 * 2 如果只是把抽象类当作标准的话我们就用implements来实现抽象类
 *
 * 案例 定义一个Animal 类要求他的子类必须包含eat方法 
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
}

main() {
    Cat a = new Cat();
    a.eat();
    a.printInfo();
}  