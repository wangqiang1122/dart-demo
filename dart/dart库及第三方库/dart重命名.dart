import 'lib/person.dart';
import 'lib/person1.dart' as lib;
main() {
  Person p1 = new Person('dddd');
  lib.Person p2 = new lib.Person('333');
  print(p1.personInfo());
  print(p2.personInfo());

}