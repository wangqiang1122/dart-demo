// 有一些其他的店 有需要一些更加自由的发挥自己店特色的产品及方法
// 需要更改写法
// 我们只需要给比萨店使用的框架
// 里面的产品及方法可以让其他的比萨店(也就是类) 自由的去继承或者是写自己特色的产品及方法
// 工厂方法模式制造披萨

// 原味披萨的类
class Pizza{
  prepare() {
    print('prepare');
  }
  bake() {
    print('bake');
  }
  cut() {
    print('cut');
  }
  box() {
    print('box');
  }
}
/***
 *  工厂方法模式
 *  这种方式可以让每个店面更加自由的出产自己的产品及贩卖方式(类及类的方法)可以自己定义
 *  方法及产品比较灵活
 *  
 * */

// 店1的特色产品及方法
class LaweiPizza extends Pizza {
   @override 
   prepare(){
     print('我放辣椒了');
   }
   thunk() {
     print('我会赠送大卡车');
   }
}
// 店2的特色产品及方法
class YangweiPizza extends Pizza {
  @override
  prepare() {
    print('我放羊杂了');
  }
}
//
// 写一个接口(或者是类) 里面是方法
// PizzaStore让各个子类可以定义自己特色的方法及产品

abstract class PizzaStore{ // 这个只是一个总的方法 需要给其他的类去用
  orderPizza(String type) {
    var pizza;
    pizza = createPizza(type);
    pizza.prepare();
    return pizza;
  }
  createPizza(String type);
}

// 店一的比萨店 每个店可以有特色的产品 
// createPizza是个每个店可以定制化制造自己的披萨
class Dian1 extends PizzaStore {
  @override
  createPizza(String type) {
    var  pizza;
    if (type =='lawei') {
       pizza = new LaweiPizza();
    } else if (type =='yuanwei') {
       pizza = new Pizza();
    }
    return pizza;
  }
}


main() {
  var a = new Dian1();
  // 店1新建一个辣味披萨
  var h = a.orderPizza('lawei'); // 这个披萨会送大卡车
  h.thunk();
}
