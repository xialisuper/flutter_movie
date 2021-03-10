import 'package:flutter/material.dart';

import 'package:flutter_movie/app/modules/home/controllers/home_controller.dart';
import 'package:flutter_movie/app/modules/main/views/comming_soon_view.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final HomeController mainController = Get.put(HomeController());
    //正在热映  即将上映

    //最近热门电影  热门,最新,豆瓣高分...

    //最近热门电视剧 热门,国产剧,美剧,日剧...

    //热门推荐

    //最受欢迎影评 更多热门影评,新片影评

    //广告

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          top: true,
          child: Column(
            children: [CommingSoonView()],
          ),
        ),
      ),
    );
  }
}
