import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter_movie/app/modules/main/controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MainView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MainView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("images/icons/outline_movie_black_36pt")),
              label: '首页'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("images/icons/outline_movie_black_36pt")),
              label: '首页'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("images/icons/outline_movie_black_36pt")),
              label: '首页'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage("images/icons/outline_movie_black_36pt")),
              label: '首页'),
        ],
      ),
    );
  }
}
