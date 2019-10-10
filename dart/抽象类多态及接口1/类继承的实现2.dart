// 鸭子的超类

abstract class Duck{
  // 有鸭子不会变化的公共部分
  FlyBehavior flyBehavior;
  QuackBehavior quackBehavior;
  Duck(this.flyBehavior,[this.quackBehavior]);
  preformquack() {
    quackBehavior.quack();
  }
  preformfly() {
    flyBehavior.fly();
  }
}

// 鸭子飞行的行为接口
abstract class FlyBehavior{
   fly();
}
// 鸭子头颜色的接口
abstract class QuackBehavior{
   quack();
}

// 绿头鸭叫
class Quack extends QuackBehavior{
  quack() {
    print('嘎嘎叫');
  }
}
// 飞
class Fei extends FlyBehavior{
  fly(){
    print('飞');
  }
}

class FlyWithWings extends Duck{
  FlyWithWings():super(new Fei(),new Quack());
}

main(){
FlyWithWings d = new FlyWithWings();
d.preformfly();
d.preformquack();
}