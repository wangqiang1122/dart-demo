/**
 * 如果只需要导入库的一部分，有两种模式
 *  模式一：只导入需要的部分，使用show关键字，如例子所示
 *     import 'package:lib1/lib1.dart show foo'
 * 
 *  模式二 隐藏不需要的部分，使用hide关键字 如下面的例子
 *     import 'package:lib1/lib1.dart hide foo'
 * 
 * 
 * 
 * 
 */


// import './lib/myMath.dart' show getSex;
// import './lib//myMath.dart' hide getSex;
// 全部引入
import './lib//myMath.dart';

main() {
  getSex();
}