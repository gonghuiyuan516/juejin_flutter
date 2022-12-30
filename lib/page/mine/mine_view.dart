import 'package:bruno/bruno.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_juejin/common/JueJinColors.dart';
import 'package:get/get.dart';

import 'mine_logic.dart';

class MinePage extends StatelessWidget {
  final logic = Get.put(MineLogic());

  MinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildAppBar(),
        buildUserInfo(),
        buildLikeInfo(),
        buildBanner()
      ],
    );
  }

  /// 应用Bar部分
  Widget buildAppBar() {
    return BrnAppBar(
      brightness: Brightness.light,
      automaticallyImplyLeading: false,
      actions: <Widget>[
        BrnIconAction(
          iconPressed: () {},
          child: const Icon(Icons.dark_mode_outlined, color: color_999999),
        ),
        BrnIconAction(
          iconPressed: () {},
          child: const Icon(Icons.notifications_outlined, color: color_999999),
        ),
        BrnIconAction(
          iconPressed: () {},
          child: const Icon(Icons.settings_outlined, color: color_999999),
        ),
      ],
    );
  }

  /// 用户信息
  Widget buildUserInfo() {
    return Column(children: [
      Row(
        children: const [
          Padding(
              padding: EdgeInsets.only(left: 24),
              child: Image(
                  image: AssetImage("assets/images/empty_avatar_user.webp"),
                  width: 54,
                  height: 54)),
          Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text(
                "登录/注册",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
        ],
      )
    ]);
  }

  //点赞信息
  Widget buildLikeInfo() {
    return Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            //交叉轴的布局方式，对于column来说就是水平方向的布局方式
            crossAxisAlignment: CrossAxisAlignment.center,
            //就是字child的垂直布局方向，向上还是向下
            verticalDirection: VerticalDirection.down,
            children: [
              Column(children: const [
                Text("0",
                    style: TextStyle(
                        fontSize: 22,
                        color: color_333333,
                        fontWeight: FontWeight.bold)),
                Text("点赞", style: TextStyle(fontSize: 12, color: color_333333))
              ]),
              Column(children: const [
                Text("0",
                    style: TextStyle(
                        fontSize: 22,
                        color: color_333333,
                        fontWeight: FontWeight.bold)),
                Text("收藏", style: TextStyle(fontSize: 12, color: color_333333))
              ]),
              Column(children: const [
                Text("0",
                    style: TextStyle(
                        fontSize: 22,
                        color: color_333333,
                        fontWeight: FontWeight.bold)),
                Text("关注", style: TextStyle(fontSize: 12, color: color_333333))
              ])
            ]));
  }

  //广告Banner
  Widget buildBanner() {
    return const Padding(
        padding: EdgeInsets.only(left: 24, right: 24),
        child: Image(
            image: AssetImage(
                "assets/images/ic_vip_welfare_exchange_top_image.webp"),
            width: 24,
            height: 24));
  }
}
