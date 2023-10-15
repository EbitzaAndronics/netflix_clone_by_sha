import 'package:flutter/material.dart';
import 'package:netflix_clone_by_sha/Core/Colors/constance.dart';
import 'package:netflix_clone_by_sha/Presentation/Search/Widgets/title.dart';

import '../../Widgets/main_card_widget.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Movies & TV'),
        kHeight,
        Expanded(
            child: GridView.count(
              shrinkWrap: true,
                crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1 / 1.4,
              children: List.generate(20, (index) {
                return const MainCard();
              }),
            ))
      ],
    );
  }
}

// class MainCard extends StatelessWidget {
//   const MainCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       //width: ,
//       //height: ,
//       decoration: BoxDecoration(
//         image: const DecorationImage(
//           image: NetworkImage(imageVerticalUrl),
//           fit: BoxFit.cover
//         ),
//         borderRadius: BorderRadius.circular(7),
//       ),
//     );
//   }
// }
