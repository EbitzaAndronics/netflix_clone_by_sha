import 'package:flutter/material.dart';

import '../../../Core/Colors/constance.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.title,
    required this.icon,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,
          color: kColorWhite,
          size: 30,),
        Text(title,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),)
      ],
    );
  }
}