import 'package:flutter/cupertino.dart';
import 'package:netflix_clone_by_sha/Presentation/Search/Widgets/search_tab.dart';
import 'package:netflix_clone_by_sha/Presentation/Search/Widgets/title.dart';

import '../../../Core/Colors/constance.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Top Searches',),
        kHeight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 30,
              itemBuilder: (ctx, index)=> const TopSearchItemTile(),
              separatorBuilder: (ctx, index)=> kHeight,
          ),
        ),
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 8),
          width: screenWidth * 0.3,
          height: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            )
          ),
        ),
        const Expanded(
            child: Text('Movie name',
            style: TextStyle(
              color: kColorWhite,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            )
        ),
        const Icon(CupertinoIcons.play_circle,
        color: kColorWhite,
        size: 50,)
      ],
    );
  }
}

