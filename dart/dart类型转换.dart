void main() {
  var a = '1';
  print(int.parse(a) is int);
  var b= 2;
  print(b.toString() is String);
  var c = '1231.22';
  print(double.parse(c));

  //  捕获错误
  var d = '0';
  var num;
  try{ 
    num = double.parse(d);
   print(double.parse(d));
  }catch(e){
   print(num);
  }
  // 其他类型布尔类型
  var e = ''; // 是不是为空
  print(e.isEmpty);
  var h='';
  print(h==0);
}