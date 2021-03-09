import 'package:get/get.dart';

import 'package:flutter_movie/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_movie/app/modules/home/views/home_view.dart';
import 'package:flutter_movie/app/modules/main/bindings/main_binding.dart';
import 'package:flutter_movie/app/modules/main/views/main_view.dart';
import 'package:flutter_movie/app/modules/mine/bindings/mine_binding.dart';
import 'package:flutter_movie/app/modules/mine/views/mine_view.dart';
import 'package:flutter_movie/app/modules/movie/bindings/movie_binding.dart';
import 'package:flutter_movie/app/modules/movie/views/movie_view.dart';
import 'package:flutter_movie/app/modules/search/bindings/search_binding.dart';
import 'package:flutter_movie/app/modules/search/views/search_view.dart';

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
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.MOVIE,
      page: () => MovieView(),
      binding: MovieBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.MINE,
      page: () => MineView(),
      binding: MineBinding(),
    ),
  ];
}
