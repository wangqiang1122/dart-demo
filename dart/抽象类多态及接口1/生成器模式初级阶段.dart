/**
 * dart 模拟java的生成器模式
 */
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
// 芝士披萨的类
class ChesePizza extends Pizza{
  prepare() {
    print('ChesePizzaprepare');
  }
  bake() {
    print('ChesePizza-bake');
  }
  cut() {
    print('ChesePizza-cut');
  }
  box() {
    print('ChesePizza-box');
  }
}

// orderPizza 是一个可以定制披萨的超类 但是你可能需要很多个不同口味的披萨 不只是原味的
Pizza orderPizza(String type) {
  Pizza pizza;
   // 把会变化的pizza 会变化的类 变成一个工厂函数 工厂函数作用就是创建客户需要的披萨
  if (type =='yuan') {
     pizza = new Pizza();
  } else if (type =='ChesePizza') {
     pizza = new ChesePizza();
  }
  pizza.prepare();
  return pizza;
}

// 工厂函数的类  只有作用只是帮助我们的客户创建披萨
// 优点所有的类都可以继承他的所有披萨
// 缺点就是如果有一些加盟店需要有自己的的特色披萨，但是其他的店没有或者其他的店卖的不好店披萨
// 想要除掉操作起来不是方便优雅
// 你工厂里那写方法并不适合所有的店 所有有一些店需要修改你类里面的方法
// 这是在高级里
class SimplePizzaFactory{
  Pizza pizza = null; 
  createPizza(String type){
    if (type =='yuan') {
      pizza = new Pizza();
    } else if (type =='ChesePizza') {
      pizza = new ChesePizza();
    }
    return pizza;
  }
}
// 需要重写pizza的类 也
// 新建一个PiaazStore 披萨加工工厂的类
// PiaazStore不能定义自己的特色的产品 及方法 不灵活
class PiaazStore{
  SimplePizzaFactory factory;
  PiaazStore(SimplePizzaFactory factory){
    this.factory = factory;
  }
  orderPizza(String type){
    Pizza pizza;
    pizza = this.factory.createPizza(type);
    pizza.prepare();
    return pizza;
  }
}

main() {
  // 宅急送新建一个
  var b = new PiaazStore(new SimplePizzaFactory());
  var n = b.orderPizza('yuan');
}