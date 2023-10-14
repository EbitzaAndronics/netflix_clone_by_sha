import 'package:flutter/material.dart';
import 'package:netflix_clone_by_sha/Presentation/Widgets/app_bar_widget.dart';

class NewAndHotTab extends StatelessWidget {
  const NewAndHotTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBarWidget(title: 'New & Hot',),
      body: Center(
        child: Text('New and hot'),
      ),
    );
  }
}