void main() {
  Person a = new Person();
  print(Person.a());
}

class Person{
   //定义静态属性 static
   // 在dart中静态方法 不能访问非静态的属性或方法
   // 非静态的方法可以访问 静态的成员和静态的方法
   static String name = '111';
   num age = 1111;
   static show() {
     print('${name},,,');
   }
   user() {
     print('${name},,,${this.age}');
   }

   static  a() {  // 静态方法
     show();    //静态方法
   } 
}