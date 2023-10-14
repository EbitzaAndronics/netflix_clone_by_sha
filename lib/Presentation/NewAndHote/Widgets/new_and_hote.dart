import 'package:flutter/material.dart';

class NewAndHotTab extends StatelessWidget {
  const NewAndHotTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('New and hot'),
        ),
      ),
    );
  }
}