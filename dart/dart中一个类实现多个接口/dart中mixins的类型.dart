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
class C  extends Person with A,B{

}
void main() {
  C hi =  new C();
  print(hi is A);
  print(hi is B);
  print(hi is Person);

}