void main() {
  var a = new React(10, 10);
  // print(a.area); // 直接用调用属性的方式 调用get方法
  a.areaheight = 5;  // 使用set方法
  print(a.area);

}
class React{
  num height;
  num width;
  React(this.height,this.width);
  get area{
    return this.width*this.height;
  }
  set areaheight(value) {
    this.height = value;
  }
}

