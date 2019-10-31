/**
 * 这个是用抽象工厂模式来制造披萨
 * 就是类之间的互相组合
 * 工厂模式只是单一的产品
 * 抽象工厂模式一个产品的集合 是一个产品池
 */

// 需要建立一个原料厂(也就是总接口) 其他的一些类比较继承自他
// 每个店的原料定制化 设置
 abstract class PizzaIngredientFoctory{
   createDough();
   createSauce();
   createCheese();
   List createVeggies();
   createPepperoni();
   createClam();
 }
// 继承接口的原料厂(纽约的原料产)
// 需要自己写里面的实现方法
class NYPizzaIngredientFoctory extends PizzaIngredientFoctory {
   @override
   createDough(){
     print('NYcreateDough');
   }
    @override
   createSauce(){
      print('NYSauce');
   }
    @override
   createCheese(){
     print('NYCheese');
   }
    @override
   createPepperoni(){
     print('NYPepperoni');
   }
    @override
   createClam(){
     print('NYClam');
   }
   @override
   createVeggies(){
     return [];
   }
}
// 需要重新写披萨放方法
abstract class Pizza{
  String name;
  Pizza() {}
  prepare(); // 工厂所需的原料需要自己自己写
  bake() {
    print('bake');
  }
  cut() {
    print('cut');
  }
  box() {
    print('box');
  }
  setName(name){
    this.name = name;
  }
  getName() {
    return this.name;
  }
}
// 芝士披萨
class CheesePizza extends Pizza{
  PizzaIngredientFoctory foctory;
  CheesePizza(PizzaIngredientFoctory foctory) {
    this.foctory = foctory;
  }
  prepare() {
    this.foctory.createCheese();
    this.foctory.createClam();
  }
}
// 蛤骊披萨
class ClamPizza extends Pizza{
  PizzaIngredientFoctory foctory;
  ClamPizza(PizzaIngredientFoctory foctory) {
    this.foctory = foctory;
  }
  prepare() {
    this.foctory.createCheese();
    this.foctory.createClam();
  }
}

abstract class PizzaStore{ // 这个只是一个总的方法 需要给其他的类去用
  orderPizza(String type) {
    var pizza;
    pizza = createPizza(type);
    pizza.prepare();
    return pizza;
  }
  createPizza(String type);
}
// 建立纽约披萨店
class NYStorePizza extends PizzaStore{
  createPizza(String type) {
    PizzaIngredientFoctory foctory = new NYPizzaIngredientFoctory();
    if (type =='cheese') {
      return new CheesePizza(foctory);
    }
  }
}

main() {
   var cheese = new NYStorePizza();
   cheese.orderPizza('cheese');
  //  cheese.orderPizza(type)
}