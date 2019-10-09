/** 
 * 面向对象的三大特性 封装 继承 多态
 * 
 * dart中的类继承：
 *  1 子类使用extends关键词来继承父类
 *  2 子类会继承父类里面可见的属性和方法 但是不会继承构造函数
 *  3 子类能腹写父类的方法 getter和 setter
*/

class Person {
  String name;
  num age = 40;
  void printInfo() {
    print('${this.name}--${this.age}');
  }

}
class Web extends Person{
   Web():super();
}
void main() {
 Web a = new Web();
 print(a.age); 
}