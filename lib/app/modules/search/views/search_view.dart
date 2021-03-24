import 'package:flutter/material.dart';
import 'package:flutter_movie/app/modules/search/controllers/search_controller.dart';
import 'package:get/get.dart';

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SearchView'),
        centerTitle: true,
      ),
      body: Center(
          child: const Text(
        'SearchView is working',
        style: TextStyle(fontSize: 20),
      )),
    );
  }
}
