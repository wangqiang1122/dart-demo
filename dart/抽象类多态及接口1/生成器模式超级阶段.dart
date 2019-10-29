/**
 * 这个是用抽象工厂模式来制造披萨
 * 就是类之间的互相组合
 * 工厂模式只是单一的产品
 * 抽象工厂模式一个产品的集合 是一个产品池
 */

// 需要建立一个原料厂(也就是总接口) 其他的一些类比较继承自他

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
   createDough(){}
    @override
   createSauce(){}
    @override
   createCheese(){}
    @override
   createPepperoni(){}
    @override
   createClam(){}
   @override
   createVeggies(){
     return [];
   }
}
// 需要重新写披萨放方法