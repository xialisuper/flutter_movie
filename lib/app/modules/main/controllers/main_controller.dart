import 'package:get/get.dart';

class MainController extends GetxController {
  //TODO: Implement MainController

  final count = 0.obs;
  @override
  void onInit() {}
  @override
  void onReady() {}
  @override
  void onClose() {}
  void increment() => count.value++;
}
