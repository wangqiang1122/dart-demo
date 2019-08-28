void main() {
  React a = new React();
  print(a.area);
}

class React{
  num height;
  num width;
  React():height=11,width=5; // 在执行构造函数之前 先执行冒号后面的赋值在执行构造函数
  get area{
    return this.width*this.height;
  }
  set areaheight(value) {
    this.height = value;
  }
}