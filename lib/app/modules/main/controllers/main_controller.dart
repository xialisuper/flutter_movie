import 'package:get/get.dart';

class MainController extends GetxController {
  final currentTabBarIndex = 0.obs;

  void changeCurrentIndex(int index) => currentTabBarIndex.value = index;
}
