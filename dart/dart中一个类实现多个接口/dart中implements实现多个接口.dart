/**
 * Dart中一个类实现多个接口
 * 
 */

// 抽象类接口
abstract class A {
  String name; 
  printA();
}
abstract class B{
  printB();
}
class C implements A,B{
  @override
  String name = '1';
  @override
  printA([String data]) {
    // TODO: implement printA
    print('${this.name}');
  }
  @override
  printB() {
    // TODO: implement printB
    return null;
  }
}


main() {
 C n = new C();
 n.printA();
}
