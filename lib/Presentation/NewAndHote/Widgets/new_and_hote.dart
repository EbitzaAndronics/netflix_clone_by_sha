import 'package:flutter/material.dart';
import 'package:netflix_clone_by_sha/Core/Colors/constance.dart';
import 'coming_soon_tab.dart';

class NewAndHotTab extends StatelessWidget {
  const NewAndHotTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar:   PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: AppBar(
              title: const Text('New & Hot',
              style: TextStyle(
                color: kColorWhite
              ),
              ),
            actions: [
              const Icon(Icons.cast,
                color: Colors.white,
                size: 30,),
              kWidth,
              Container(
                width: 30,
                height: 30,
                color: Colors.blue,
              ),
              kWidth,
            ],
            bottom: TabBar(
              labelColor: kColorBlack,
              unselectedLabelColor: kColorWhite,
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
              indicator: BoxDecoration(
                color: kColorWhite,
                borderRadius: BorderRadius.circular(30),
              ),
              isScrollable: true,
              tabs: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Tab(text: "🍿 Coming Soon",),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Tab(text: "👀  Everyone's watching",),
                ),

              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            ComingSoon(),
            Text('One'),
          ],
        )
      ),
    );
  }
}
