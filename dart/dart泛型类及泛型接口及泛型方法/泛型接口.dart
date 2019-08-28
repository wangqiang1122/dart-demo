/**
 * Dart中的泛型接口：
 * 实现数据循环的功能，有文件缓存，和内存缓存，内存缓存和文件缓存按照接口约束实现
 * 1 定义一个泛型接口与 约束实现它的子类必须要有getByKey(key)和
 * setByKey(key,value)
 * 2 要求setByKey的时候的value的类型和实例化子类的时候的类型一致
 * 
 * 
 */

// // 代码冗余
// abstract class objectCache {
//   getByKey(String key);
//   void setByKey(String key, Object value);
// }
// abstract class stringCache {
//   getByKey(String key);
//   void setByKey(String key, String value);
// }
// 泛型的接口
abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key, T value);
}
// 继承泛型接口 传入特定的值

class FileCache<T> implements Cache<T> {  //T限制特性的泛型值
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print('我是file');
  }
   
}
class Memory<T> implements Cache<T> {
  @override
  getByKey(String key) {
    // TODO: implement getByKey
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print('我是me');
  }
  
}

main() {
  Memory m = new Memory<String>();
  m.setByKey('222','1');
}