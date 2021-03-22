import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie/app/modules/main/controllers/bottom_tab_bar_controller.dart';
import 'package:get/get.dart';

class BottomTabBar extends GetView<BottomTabBarController> {
  final BottomTabBarController bottomTabBarController =
      Get.put(BottomTabBarController());
  void _tabBarTapped(int value) =>
      bottomTabBarController.changeCurrentIndex(value);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CupertinoTabBar(
        onTap: _tabBarTapped,
        currentIndex: bottomTabBarController.currentTabBarIndex.value,
        items: [
          const BottomNavigationBarItem(
            //TODO: 找到对应的图片,完善tabbar
            activeIcon: ImageIcon(
                AssetImage("images/icons/baseline_movie_black_36pt.png")),
            icon: ImageIcon(
              AssetImage("images/icons/outline_movie_black_36pt.png"),
            ),
            label: '首页',
          ),
          const BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("images/icons/outline_movie_black_36pt.png")),
              label: '电影'),
          const BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("images/icons/outline_movie_black_36pt.png")),
              label: '搜索'),
          const BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("images/icons/outline_movie_black_36pt.png")),
              label: '我的'),
        ],
      ),
    );
  }
}
