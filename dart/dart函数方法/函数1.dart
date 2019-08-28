void main() {
  var a = getNum();
   print(a);
   print(getList());
   print(addNum(1,90));
   print(addNum(1,60));
   print(printUserName('www',(){return '我是谁';}));
}
int getNum() {
  return 1;
}
List getList() {
  return ['hh','gg'];
}

// 1到90的和 或1到60的和 
int addNum(int start,int end) {
  var sum = start;
  for(var a =start; a<=end;a++) {
     sum+=a;
  }
  return sum;
}
// 打印用户信息方法
// String printUserName(String name,[int age,String d]) { // 可选参数
//   // var str = age!=null?age:'保留';
//   return '姓名：$name,年龄：${age!=null?age:'保留'}';
// }

// 定义带默认参数
// String printUserName(String name,[int age,String d="2222"]) { // 可选参数
//   // var str = age!=null?age:'保留';
//   return '姓名：$name,年龄：${age!=null?age:'保留'}$d';
// }


// 定义一个命名参数的函数方法
// String printUserName(String name,{int age,String d="男"}) { // 可选参数
//   // var str = age!=null?age:'保留';
//   return '姓名：$name,年龄：${age!=null?age:'保留'}$d';
// }

// 实现一个参数当作方法参数的方法
printUserName(String name,callback) {
  var a = callback();
  return '姓名:$name,回调函数${a}';
}

