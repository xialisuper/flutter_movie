import 'package:get/get.dart';

import 'package:flutter_movie/app/modules/Other/bindings/other_binding.dart';
import 'package:flutter_movie/app/modules/Other/views/other_view.dart';
import 'package:flutter_movie/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_movie/app/modules/home/views/home_view.dart';
import 'package:flutter_movie/app/modules/main/bindings/main_binding.dart';
import 'package:flutter_movie/app/modules/main/views/main_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.OTHER,
      page: () => OtherView(),
      binding: OtherBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
  ];
}
