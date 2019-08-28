void main() {
  //  var list = ['2','3','4'];

  //  print(list.isNotEmpty);
  //  print(list.reversed); // 反转
  //  print(list.reversed.toList()); // 反转后转成数组
  //  // 天加数组
  //  list.add('桃子');
  //  list.addAll(['ss','dd']); // 和jsconcat差不多
  //  // 删除
  //  list.removeAt(1); // 删除传入的索引值
  //  list.remove('2'); // 删除传入的值
  // //  list.fillRange(1, 3,'大民'); // 修改 开始位置 结束位置
  // // list.insert(0, '插入'); // 指定位置插入数据
  // list.insertAll(1, ['h','h1']);
  //  print(list);

  // var list = ['西瓜','苹果','香蕉'];
  // print(list.join('2')); // 数组链接
  // var str = '西瓜2苹果2香蕉';
  // print(str.split('2'));
  // var obj = new Set(); // 新建集合 并且去重
  // obj.add('da');
  // obj.add('ddd');
  // obj.add('da');
  // print(obj.toList());
   var list = ['西瓜','苹果','香蕉','苹果','香蕉'];
   print(list.toSet());


}