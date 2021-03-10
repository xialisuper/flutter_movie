import 'package:flutter_movie/app/modules/main/controllers/bottom_tab_bar_controller.dart';
import 'package:flutter_movie/app/modules/main/controllers/comming_soon_controller.dart';
import 'package:get/get.dart';

import 'package:flutter_movie/app/modules/main/controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
    );
    Get.lazyPut<BottomTabBarController>(
      () => BottomTabBarController(),
    );

    Get.lazyPut<CommingSoonController>(() => CommingSoonController());
  }
}
