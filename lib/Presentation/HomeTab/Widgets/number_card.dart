import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../Core/Colors/constance.dart';

class NumberCardWidget extends StatelessWidget {
  const NumberCardWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 50,
              height: 250,
            ),
            Container(
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
            ),
          ],
        ),
        Positioned(
          left: 10,
            bottom: -30,
            child: Text(
              "${index + 1}",
              style: TextStyle(
                fontSize: 130,
                fontFamily: GoogleFonts.londrinaOutline().fontFamily,
                fontWeight: FontWeight.bold
              ),
            )
        )
      ],
    );
  }
}
