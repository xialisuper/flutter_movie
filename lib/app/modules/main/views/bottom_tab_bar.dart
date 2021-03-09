import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie/app/modules/main/controllers/main_controller.dart';
import 'package:get/get.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({
    Key key,
    @required this.c,
  }) : super(key: key);

  final MainController c;
  void _tabBarTapped(int value) => c.changeCurrentIndex(value);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CupertinoTabBar(
        onTap: _tabBarTapped,
        currentIndex: c.currentTabBarIndex.value,
        items: [
          BottomNavigationBarItem(
            //TODO: 找到对应的图片,完善tabbar
            activeIcon: ImageIcon(
                AssetImage("images/icons/baseline_movie_black_36pt.png")),
            icon: ImageIcon(
              AssetImage("images/icons/outline_movie_black_36pt.png"),
            ),
            label: '首页',
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("images/icons/outline_movie_black_36pt.png")),
              label: '电影'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("images/icons/outline_movie_black_36pt.png")),
              label: '搜索'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("images/icons/outline_movie_black_36pt.png")),
              label: '我的'),
        ],
      ),
    );
  }
}
