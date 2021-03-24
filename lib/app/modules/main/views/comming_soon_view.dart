import 'package:flutter/material.dart';
import 'package:flutter_movie/app/modules/main/controllers/comming_soon_controller.dart';
import 'package:flutter_movie/app/modules/widgets/movie_horizontal_list_view.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CommingSoonView extends GetView<CommingSoonController> {
  final double totalHeight;

  const CommingSoonView({
    required this.totalHeight,
  });

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
          Row(
            children: const [
              Text('明天'),
              SizedBox(width: 4),
              Expanded(child: Divider()),
            ],
          ),
          MovieHorizontalListView(totalHeight: totalHeight),
        ],
      ),
    );
  }

  void onPressed() {}
}
