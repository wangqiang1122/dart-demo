class Myclass{
  static myclass() {

  }
  static getInstance() {
    return new Myclass();
  }
}

class Singleton{
  static Object uniqueInstance=null;
  Singleton() {
  }
  static getInstance() {
    if (uniqueInstance==null) {
       uniqueInstance = new Singleton();
     }
     return uniqueInstance;
  }
}

main() {
  var a = Singleton.getInstance();
  var b = Singleton.getInstance();
  print(a==b);
}