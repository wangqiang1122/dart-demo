/**
 * 1 从下面网址找用的库
 *    https://pub.dev/packages
 *    https://pub.flutter-io.cn/packages
 *    https://pub.dartlang.org/flutter/
 * 2 创建一个pubspec.yaml文件，内容如下
 * name：xxx
 * description :A new flutter module project
 * despendencies:
 *   http: ^0.12.0+2
 *   data_format: ^1.0.6
 * 3 配置dependencies 
 * 4 运行pub get 获取远程库
 * 5 看问文档引用库使用
 */
import 'package:date_format/date_format.dart';

main() {
    print(formatDate(DateTime(1989, 2, 21), [yyyy, '-', mm, '-', dd]));
}