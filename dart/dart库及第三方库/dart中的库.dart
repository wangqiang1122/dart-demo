/**
 * 在dart中，库的使用时通过import关键字引入的
 * library指令可以创建一个库，每个dart文件都是一个库，即使没有使用library指令来指定
 *
 * dart中的库只要有三种 
 *  1、我么自定义的库
 *     import 'lib/xxx.dart' ;
 *  2、系统内置库
 *     import 'dart:math';
 *     import 'dart:io';
 *  3、pub包管理系统中的库
 *    https://pub.dev/packages
 *    https://pub.flutter-io.cn/packages
 *    https://pub.dartlang.org/flutter/
 *   1 需要在自己的项目根目录新建一个pubspec.yaml
 *   2 在 pubspec.yaml文件 然后配置名称、描述、依赖等信息
 *   3 然后运行pub get 获取包下载到本地
 *   4 项目中引入 import ‘packdages:http/http.dart’ as http 看文档说明使用
 */


