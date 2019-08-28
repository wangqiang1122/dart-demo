void main() {
  Map person = {
    'name': '占桑',
    'age': '11',
  };
  var m = new Map();
  m['name'] = '里斯';
  // print(m.keys);
  // person.addAll({'work':['1','2']});
  // person.remove('age');
  // print(person.containsValue('11')); // 查找map里的值里是否有11
  print(person.containsKey('age')); // 查找map里的keys里是否有age
}