import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredContent extends StatelessWidget {
  final int childCount;
  final List<QuiltedGridTile> pattern;
  final String? imageName;

  const StaggeredContent({super.key, required this.childCount, required this.pattern, this.imageName});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: FittedBox(fit: BoxFit.cover,
            child: Image.asset(
                imageName!=null?
                'assets/images/staggered_pictures/${imageName! + (index + 1).toString()}.png'
                :
                'assets/images/staggered_pictures/${index + 1}.png'
            ),
          ),
        );
      }, childCount: childCount),
      gridDelegate: SliverQuiltedGridDelegate(

        crossAxisCount: 3,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
        repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: pattern
      ),

    );
  }
}
