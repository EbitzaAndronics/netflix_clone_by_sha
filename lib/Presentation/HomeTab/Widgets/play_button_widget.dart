import 'package:flutter/material.dart';

import '../../../Core/Colors/constance.dart';

class PlayButtonWidget extends StatelessWidget {
  const PlayButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: (){},
      icon: Icon(Icons.play_arrow,
        size: 30,),
      label: Text('Play',
        style: TextStyle(
            fontSize: 20,
            color: kColorBlack
        ),),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kColorWhite)
      ),
    );
  }
}