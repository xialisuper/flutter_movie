import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie/app/modules/home/views/home_view.dart';
import 'package:flutter_movie/app/modules/main/controllers/bottom_tab_bar_controller.dart';
import 'package:flutter_movie/app/modules/main/views/bottom_tab_bar.dart';
import 'package:flutter_movie/app/modules/mine/views/mine_view.dart';
import 'package:flutter_movie/app/modules/movie/views/movie_view.dart';
import 'package:flutter_movie/app/modules/search/views/search_view.dart';

import 'package:get/get.dart';

import 'package:flutter_movie/app/modules/main/controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  final MainController c = Get.put(MainController());
  final BottomTabBarController bottomTabBarController = Get.find();
  final List<GetView> _tabBarViews = [
    HomeView(),
    MovieView(),
    SearchView(),
    MineView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
          () => _tabBarViews[bottomTabBarController.currentTabBarIndex.value]),
      bottomNavigationBar: BottomTabBar(),
    );
  }
}
