void main() {
  a();
// (){
//   print('我是自执行方法');
// }();
fn(5);
add(1);
}

// 匿名方法
var a = (){
  print('222');
};

// 递归
var sum = 1;
fn(num) {
   sum = sum*num;
   if (num==1){
     print(sum);
     return;
   } 
    fn(num-1);
   }


 // 通过递归求一到100的和
 var he = 0;
 add(int num) {
   he+=num;
   if(num==100) {
     print(he);
     return;
   }
   add(num+1);
 } 
  
