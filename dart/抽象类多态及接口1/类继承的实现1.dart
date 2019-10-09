abstract class Anmail{
  makeSound();
}

class Dog implements Anmail {
   bark(){
    print('狗叫了');
  }
  @override
  makeSound() {
    bark();
  }
}
class Cat implements Anmail {
  @override
  makeSound() {
   bark();
  }
   bark(){
    print('猫叫了');
  }
}

main(){
Dog d = new Dog();
d.makeSound();

Anmail anmail = new Dog();
anmail.makeSound();
}
