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
class Pizza{
  
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