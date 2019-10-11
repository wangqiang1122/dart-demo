// 人的超类 所有的人行 必须继承与他
import 'dart:io';

abstract class Charactor{
  WeaponBehavior Weapon;
  flight();
  setWeaponBehavior(WeaponBehavior w){
    this.Weapon  = w;
  }
}

// 武器类
abstract class WeaponBehavior{
  useWeapon();
}

// 国王
class King extends Charactor {
  @override
  flight(){
      this.Weapon.useWeapon();
  }
}
// 皇后
class Queen extends Charactor{
  @override
  flight() {
    this.Weapon.useWeapon();
  }
}
// 怪兽
class Troll extends Charactor{
  @override
  flight() {
  }
}
// 武器类的继承
// 剑
class SwordBehavior extends WeaponBehavior {
   @override
   useWeapon(){
     print('我用的剑');
   }
}
// 弓箭
class BowAddArrorBehavior extends WeaponBehavior {
  @override
  useWeapon() {
     print('我是使用弓箭射击');
  }
}


main() {
  Charactor king = new King();
  Charactor queen = new Queen();
  king.setWeaponBehavior(new SwordBehavior());
  queen.setWeaponBehavior(new BowAddArrorBehavior());
  king.flight();
  queen.flight();
}


