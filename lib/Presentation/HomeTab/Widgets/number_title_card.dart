import 'package:flutter/material.dart';
import '../../../Core/Colors/constance.dart';
import '../../Widgets/main_title.dart';
import 'number_card.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: MainTitle(title: 'Top 10 Tv Shows In India Today'),
        ),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => NumberCardWidget(index: index,),),
          ),
        ),
      ],
    );
  }
}