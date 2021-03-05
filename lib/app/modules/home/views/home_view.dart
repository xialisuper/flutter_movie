import 'package:flutter/material.dart';
import 'package:flutter_movie/app/modules/Other/views/other_view.dart';
import 'package:flutter_movie/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final HomeController c = Get.put(HomeController());

    return Scaffold(
        appBar: AppBar(
          title: Obx(() => Text('clicks: ${c.count}')),
          centerTitle: true,
        ),
        body: Center(
            child: ElevatedButton(
          child: Text('Go to other'),
          onPressed: () => Get.to(() => OtherView()),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: c.increment,
          child: Icon(Icons.add),
        ));
  }
}
