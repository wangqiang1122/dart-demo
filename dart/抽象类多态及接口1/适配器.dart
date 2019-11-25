import '类继承的实现2.dart';

/**
 *  一个鸭子的接口
 **/
abstract class Duk{
   quack();
   fly();  
}

// 正常的鸭子的类
class MallardDuck implements Duk{
  @override
  quack() {
    print('MallardDuck');
  }
  @override
  fly() {
    print('MallarFly');
  }
}

// 一个火鸡的类
abstract class Turkey{
  gobble();
  fly();
}
// 新建一个火鸡的类
class WildTurkey implements Turkey{
  @override
  gobble() {
    print('Gooble gooble');
  }
  @override
  fly() {
    print('i am flying a short distance');
  }
}
// 新建一个鸭子的适配器
class TurkeyAdapter implements Duk{
  // 火鸡的类
  Turkey turkey;
  TurkeyAdapter(Turkey turkey) {
    this.turkey = turkey;
  }
  @override
  quack() {
     this.turkey.gobble();
  }
  @override
  fly() {
    // 因为火鸡的飞行距离段 所以要飞行五次才能模拟鸭子飞行
    for(int i=0;i<5;i++) {
      this.turkey.fly();
    }
  }
}
// 将一只鸭子伪装成火鸡
class DuckAdapter extends Turkey  {
  Duk duk;
  DuckAdapter(Duk duk) {
   this.duk = duk;
  }
  @override
  gobble(){
    this.duk.quack();
  }
  @override
  fly() {
     // fly的方法 鸭子和火鸡不一样 火鸡飞行的时间段 鸭子和长时间飞行 不能直接用鸭子的飞行
     this.duk.fly();
  }
}


main() {
  MallardDuck mallardDuck = new MallardDuck();
  Turkey wildTurkey = new WildTurkey();
  TurkeyAdapter turkeyAdapter = new TurkeyAdapter(wildTurkey);
  // wildTurkey.gobble();
  // wildTurkey.fly();
  // turkeyAdapter.quack();
  //正常的鸭子
  testduck(mallardDuck);
  // 火鸡伪装的鸭子
  testduck(turkeyAdapter);
}

testduck(Duk duck) {
  duck.quack();
  duck.fly();
}