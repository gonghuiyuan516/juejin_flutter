import 'package:bruno/bruno.dart';
import 'package:flutter/material.dart';
import 'package:flutter_juejin/page/mine/mine_view.dart';
import 'package:get/get.dart';

import 'home_logic.dart';

class HomePage extends StatelessWidget {
  final logic = Get.put(HomeLogic());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(child: MinePage()),
          BrnBottomTabBar(
            fixedColor: Colors.blue,
            currentIndex: 0,
            isInkResponse: true,
            badgeColor: Colors.red,
            items: <BrnBottomTabBarItem>[
              tabItem("assets/images/tab_home_normal.webp",
                  "assets/images/tab_home.webp", "首页"),
              tabItem("assets/images/tab_activity.webp",
                  "assets/images/tab_activity_press.webp", "沸点"),
              tabItem("assets/images/tab_find_normal.webp",
                  "assets/images/tab_find.webp", "发现"),
              tabItem("assets/images/tab_xiaoce_normal.webp",
                  "assets/images/tab_xiaoce.webp", "课程"),
              tabItem("assets/images/tab_profile_normal.webp",
                  "assets/images/tab_profile.webp", "我"),
            ],
          )
        ],
      ),
    );
  }

  /// 构建Tab
  BrnBottomTabBarItem tabItem(String icon, String activeIcon, String txt) {
    return BrnBottomTabBarItem(
        backgroundColor: Colors.white,
        icon: Image(image: AssetImage(icon), width: 24, height: 24),
        activeIcon: Image(image: AssetImage(activeIcon), width: 24, height: 24),
        title: Text(txt));
  }

}
