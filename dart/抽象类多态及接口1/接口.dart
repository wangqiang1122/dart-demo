/**
 * 和java一样 dart页没有接口，但是和java还有又区别的
 *  首先，dart的接口没有interface关键字定义接口，而是普通类或抽象类都可以作为接口实现
 * 同样是implements关键字进行实现
 * 但是dart的接口有点奇怪，如果实现的类是普通类，会将普通类和抽象中的属性的方法
 * 全部需要覆写一遍
 * 
 * 而因为抽象类可以定义抽象方法，普通类不可以，所以一般如果要实现java接口那样的方式
 * ,一般会使用抽象类
 * 建议使用抽象类定义接口
 */

 // 定义一个db库， 支持mysql mssql mongodb

 abstract class Db { // 当作接口
   // 子类必须实现的抽象方法
   // 接口就是约定
   String uri;
   add(String data);
   save();
   delete();
 }

 class Mysql implements Db {
   
  @override
  String uri = '2222';
  add(data) {
    print('${data}哈哈哈哈');
  }
  @override
  save() {
    // TODO: implement save
    return null;
  }
  @override
  delete() {
    // TODO: implement delete
    return null;
  }

 }

 main() {
  Mysql a = new Mysql();
  a.add('2222');

 }