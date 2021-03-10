import 'package:flutter/material.dart';

import 'package:flutter_movie/app/modules/main/controllers/comming_soon_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CommingSoonView extends GetView<CommingSoonController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '正在热映',
                style: Theme.of(context).textTheme.headline6,
              ),
              Spacer(),
              TextButton(
                onPressed: onPressed,
                child: Text(
                  '更多>',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              )
            ],
          ),
          Divider(),
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            itemBuilder: (context, index) {
              return Container(
                width: 150,
                height: 150,
                color: Colors.amber,
              );
            },
          )
        ],
      ),
    );
  }

  void onPressed() {}
}
