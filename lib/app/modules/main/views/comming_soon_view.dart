import 'package:flutter/material.dart';
import 'package:flutter_movie/app/modules/main/controllers/comming_soon_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CommingSoonView extends GetView<CommingSoonController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '正在热映',
                style: Theme.of(context).textTheme.headline6,
              ),
              const Spacer(),
              TextButton(
                onPressed: onPressed,
                child: Text(
                  '更多>',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              )
            ],
          ),
          const Divider(),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemExtent: 150,
              scrollDirection: Axis.horizontal,
              itemCount: 115,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: Colors.amber,
                    elevation: 5,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void onPressed() {}
}
