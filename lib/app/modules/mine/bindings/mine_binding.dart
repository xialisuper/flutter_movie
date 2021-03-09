import 'package:get/get.dart';

import 'package:flutter_movie/app/modules/mine/controllers/mine_controller.dart';

class MineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MineController>(
      () => MineController(),
    );
  }
}
