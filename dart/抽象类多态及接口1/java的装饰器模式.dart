abstract class Beverage {
  var description;
  Beverage(description) {
     this.description = description;
  }
  cost();
}

class DarkRoast extends Beverage {
  DarkRoast(d) : super(d);
  @override
  cost() {
    return 1;
  }
}