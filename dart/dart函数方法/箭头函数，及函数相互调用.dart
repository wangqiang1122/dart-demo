void main() {
  // List list = ['苹果','f'];
  // list.forEach((item)=>print(item));
  // list.forEach((item)=>{
  //   print(item)           // 在这个箭头函数里只能写一句话
  // });

  // 修改数组里面的数据，让数组中大于2的值乘以2
  List list = [1,23,4,5];
  // var a = list.map((item){
  //    return item>2?item*2:item;
  // });
  // print(a);
  // var a = list.map((item)=>item>2?item*2:item);
  // print(a);




  // 定义一个方法isEvenNumber来判断是否是偶数
  // 定义一个方法打印1-n以内的偶数
  isEvenNumber(int Num) {
    return Num%2==0;
  }
  print(isEvenNumber(3));

  printNum(int num){
   var a = num;
   for (var i =1;i<num;i++) {
     if(isEvenNumber(i)){
       print(i);
     }
   }
  }
  printNum(100);
}