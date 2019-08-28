void main() {
   var  arr = new List<String>();
   arr.add('3');
   arr.add('4');
   for (var i=0; i<arr.length;i++) {
     print(arr[i]);
   }
   arr.forEach((item){
     print(item);
   });
}