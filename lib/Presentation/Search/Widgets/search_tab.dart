import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone_by_sha/Core/Colors/constance.dart';
import 'package:netflix_clone_by_sha/Presentation/Search/Widgets/search_idle.dart';
import 'package:netflix_clone_by_sha/Presentation/Search/Widgets/search_result.dart';

const imageUrl = "https://static.moviecrow.com/gallery/20230508/215637-Jawan%20Release%20Date%20Shah%20Rukh%20Khan%20Poster.png";
const imageVerticalUrl = "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/c618cd88432989.5dd5e72e505d1.jpg";

class SearchTab extends StatelessWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(0.4),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              kHeight,
              const Expanded(
                  //child: SearchIdleWidget()
                child: SearchResultWidget(),
              ),
            ],
          ),
        )
      ),
    );
  }
}