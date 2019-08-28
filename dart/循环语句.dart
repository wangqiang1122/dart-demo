void main() {
var arr = [2,34,6];

 final a  = List.generate(3, (item)=>
  // print(item);
  'ff${arr[item]}'
  // return 1
); 
print(a);
var g = ['g','h'];
final b  = List.generate(2, (item) =>
  // print(item);
  '京津冀${g[item]}'
  // return 1
); 
print(b);
}