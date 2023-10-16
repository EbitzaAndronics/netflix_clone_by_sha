import 'package:flutter/material.dart';
import '../../Core/Colors/constance.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.center,
      margin: const EdgeInsets.all(5),
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: NetworkImage(imageVerticalUrl),
            fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.circular(7),
        color: Colors.grey,
      ),
    );
  }
}