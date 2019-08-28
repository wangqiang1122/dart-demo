/**
 * mixins的中文意思是混入，就是在类中混入其他功能
 * 在Dart中可以使用mixins实现类似多继承得功能
 * 因为mixins使用的条件，随着dart版本一直在变，这里讲的Dart2.x中使用的mixins的条件
 * 1 作为mixins的类只能继承来自object，不能继承吉他类
 * 2 作为mixins的类不能有构造函数
 * 3 一个类可以mixins多个mixins类
 * 4 mixins绝不是继承，也不是接口，而是一种全新的特性
 * dart 没有多继承 只有多继承接口
 */
class Person{}

class A { // 不能是继承来自其他的类
 String name = '22222';
  void printA(){
    print('A');
  } 
}
class B{ // 作为mixins的类 不能有构造函数
  void printB(){
    print('B');
  }
}
class C with A,B{

}
void main() {
  C hi =  new C();
  hi.printB();
  print(hi.name); 
}

