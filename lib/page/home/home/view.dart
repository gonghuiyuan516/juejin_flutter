import 'package:bruno/bruno.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class HomePage extends StatelessWidget {
  final logic = Get.put(HomeLogic());

  @override
  Widget build(BuildContext context) {
    var titles = ['One', 'Two', 'Three', 'Four', 'Five','Six'];

    return Scaffold(
        body: Column(children: [
          BrnBottomTabBar(
            fixedColor: Colors.blue,
            currentIndex: 0,
            badgeColor: Colors.red,
            items: const <BrnBottomTabBarItem>[
            BrnBottomTabBarItem(icon: Image(image: AssetImage("assets/images/tab_home_normal.webp")),activeIcon:Image(image: AssetImage("assets/images/tab_home.webp")), title: Text("titles[1]")),
            BrnBottomTabBarItem(icon: Image(image: AssetImage("assets/images/tab_activity.webp")),activeIcon:Image(image: AssetImage("assets/images/tab_activity_press.webp")), title: Text("titles[1]")),
            BrnBottomTabBarItem(icon: Image(image: AssetImage("assets/images/tab_find_normal.webp")),activeIcon:Image(image: AssetImage("assets/images/tab_find.webp")), title: Text("titles[1]")),
            BrnBottomTabBarItem(icon: Image(image: AssetImage("assets/images/tab_xiaoce_normal.webp")),activeIcon:Image(image: AssetImage("assets/images/tab_xiaoce.webp")), title: Text("titles[1]")),
            BrnBottomTabBarItem(icon: Image(image: AssetImage("assets/images/tab_profile_normal.webp")),activeIcon:Image(image: AssetImage("assets/images/tab_profile.webp")), title: Text("titles[1]")),
            BrnBottomTabBarItem(icon: Image(image: AssetImage("assets/images/tab_home_normal.webp")),activeIcon:Image(image: AssetImage("assets/images/tab_home.webp")), title: Text("titles[1]")),
            ],
          )
        ],),

    );
  }
}
