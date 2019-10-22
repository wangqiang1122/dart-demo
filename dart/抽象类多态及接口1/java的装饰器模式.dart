
abstract class Beverage {
  String description;
  Beverage(String description) {
     this.description = description;
  }
  String getDescription(){
    return this.description;
  }
  cost();
}

// 调料接口
abstract class CondimentDecorator extends Beverage {
  CondimentDecorator() : super(null){}
  getDescription();
  cost(){}
}
/// 新的饮料名字1
class Espress extends Beverage {
  Espress(): super('Espress');
  @override
   cost() {
    return 1.99;
  }
}
// 新的饮料名字2
class HouseBlend extends Beverage{
  HouseBlend(): super('House Blend');
  @override
   cost() {
    return .89;
  }
}
//新的饮料名字3
class DrakRoast extends Beverage{
  DrakRoast(): super('DrakRoast');
  @override
   cost() {
    return .89;
  }
}

// 写调料代码
// 摩卡
class Mocha extends CondimentDecorator{
  Beverage beverage;
  Mocha(Beverage beverage) {
    this.beverage = beverage;
  }
  getDescription() {
    print(this.beverage.getDescription());
    return '${this.beverage.getDescription()}  Mocha';
  }
   cost() {
    return 0.2+ this.beverage.cost();
  }
}
// 气泡
class Whip extends CondimentDecorator{
  Beverage beverage;
  Whip(Beverage beverage) {
    this.beverage = beverage;
  }
  getDescription() {
    return '${this.beverage.getDescription()}  Whip';
  }
   cost() {
    return (0.1+ this.beverage.cost()).toStringAsFixed(2);
  }
}
// Soy
class Soy extends CondimentDecorator{
  Beverage beverage;
  Soy(Beverage beverage) {
    this.beverage = beverage;
  }
  getDescription() {
    return '${this.beverage.getDescription()}  Soy';
  }
   cost() {
    return 1.1+this.beverage.cost();
  }
}
// 调料和饮料加在一起



main() {
  Beverage beverage = new Espress();
  print('${beverage.getDescription()}${beverage.cost()}');
  Beverage beverage2 = new DrakRoast();
  beverage2 = new Mocha(beverage2);
  beverage2 = new Mocha(beverage2);
  beverage2 = new Whip(beverage2);
  print('${beverage2.getDescription()}金额： ${beverage2.cost()}');
}