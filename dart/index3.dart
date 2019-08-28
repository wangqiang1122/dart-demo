import 'dart:isolate';

void main(){
  var a = new List();
  a.add(2);
  a.add(5);
  print(a);
  var b = new List<String>(); // 指定类型
  b.add('2');
  b.add('value');
  // 定义map类型
  var obj = {
    'name': 'hahah',
    'age': '14'
  };
  print(obj);
  print(obj['age']);
  var p = new Map();
  p['name'] = 'ddd';
  p['age'] = '15';
  print(p);
  // is 关键词判断类型
  print(1.2 is int);

}