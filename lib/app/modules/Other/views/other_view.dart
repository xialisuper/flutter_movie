import 'package:flutter/material.dart';
import 'package:flutter_movie/app/modules/Other/controllers/other_controller.dart';
import 'package:flutter_movie/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class OtherView extends GetView<OtherController> {
  final HomeController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OtherView'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () => Text(
            '${c.count}',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
