import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text('Downloads'),
        Icon(Icons.cast),
        Container(
          color: Colors.blue,
        )
      ],
    );
  }
}
