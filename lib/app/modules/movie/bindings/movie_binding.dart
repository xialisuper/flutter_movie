import 'package:get/get.dart';

import 'package:flutter_movie/app/modules/movie/controllers/movie_controller.dart';

class MovieBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MovieController>(
      () => MovieController(),
    );
  }
}
