import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_juejin/page/home/home_view.dart';

import 'common/JueJinColors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterDisplayMode.setHighRefreshRate();
    setAndroidSystemBar();
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData.light(),
      theme: ThemeData(
        backgroundColor: color_fdfdfd,
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }

  //设置android状态栏为透明色
  setAndroidSystemBar() {
      // 设置android状态栏为透明
      // MaterialApp组件会覆盖掉这个值。
      SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}
