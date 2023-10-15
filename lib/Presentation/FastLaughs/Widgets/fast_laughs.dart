import 'package:flutter/material.dart';
import 'package:netflix_clone_by_sha/Presentation/FastLaughs/Widgets/video_list_item.dart';

class FastLaughsTab extends StatelessWidget {
  const FastLaughsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(10, (index) {
            return VideoListItem(index: index,);
          }),
        )
      ),
    );
  }
}