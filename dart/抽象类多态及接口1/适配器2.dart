// 客户以为是调的是鸭子的方法 其实我们是调用的火鸡方法

// 枚举

// enum Enumeration{
//   hasMoreElements,
//   nextElement,
// }

/***分割线***/

// 目标接口1

 abstract class Iterator {
   hasNext();
   next();
   remove();
 }

 // 枚举接口
abstract class Enumeration {
  hasMoreElements();
  nextElement();
}
// 需要适配器 我们用户想调的是 目标接口一的方法 其实用户调用的是枚举接口的方法 
class EnumerationIterator extends Iterator{
  Enumeration enumeration;
  EnumerationIterator(Enumeration enumeration) {
    this.enumeration = enumeration;
  }
   @override
  hasNext() {
    this.enumeration.hasMoreElements();
  }
   @override
  next() {
    this.enumeration.nextElement();
  }
  @override
  remove() {
    print('remove');
  }
}


main() {
  
}