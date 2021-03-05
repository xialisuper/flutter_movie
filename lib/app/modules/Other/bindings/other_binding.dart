import 'package:get/get.dart';

import 'package:flutter_movie/app/modules/Other/controllers/other_controller.dart';

class OtherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtherController>(
      () => OtherController(),
    );
  }
}
