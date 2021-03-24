import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class MovieHorizontalListView extends StatelessWidget {
  const MovieHorizontalListView({
    Key? key,
    required this.totalHeight,
  }) : super(key: key);

  final double totalHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: totalHeight - 20,
      child: AnimationLimiter(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) {
            return _ListViewCard(
              index: index,
              child: Text('data $index'),
            );
          },
        ),
      ),
    );
  }
}

class _ListViewCard extends StatelessWidget {
  final Widget? child;
  final int index;

  const _ListViewCard({
    Key? key,
    this.child,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: index,
      duration: const Duration(milliseconds: 375),
      child: SlideAnimation(
        horizontalOffset: 50.0,
        child: FadeInAnimation(
          child: AspectRatio(
            aspectRatio: 3 / 4,
            child: Padding(
              padding: const EdgeInsets.only(right: 4, bottom: 4),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                color: Colors.amber,
                elevation: 3,
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
