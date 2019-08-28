void main() {
  var a =h();
  print(a());
  print(a());
}

 h() {
  var a = 1;
  // var b = 2;
  return () {
    return a++;
  };
}