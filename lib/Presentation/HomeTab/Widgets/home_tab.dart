import 'package:flutter/material.dart';
import 'package:netflix_clone_by_sha/Core/Colors/constance.dart';
import 'package:netflix_clone_by_sha/Presentation/HomeTab/Widgets/play_button_widget.dart';
import '../../Widgets/main_title_card.dart';
import 'custom_button_widget.dart';
import 'number_title_card.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            //expandedHeight: 100,
            backgroundColor: Colors.transparent,
            title: Text('Netflix app',
                style: TextStyle(
                  color: kColorWhite,
                ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 550,
                        decoration: const BoxDecoration(
                          //color: Colors.red,
                            image: DecorationImage(
                                image: NetworkImage(imageVerticalUrl),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: MediaQuery.of(context).size.width * 0.10,
                        child:  Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomButtonWidget(title: 'My List', icon: Icons.add,),
                              Padding(
                                padding: EdgeInsets.only(left: 40,right: 40),
                                child: PlayButtonWidget(),
                              ),
                              CustomButtonWidget(title: "Info", icon: Icons.info)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
              const MainTitleCard(title: 'Released in past year',),
              kHeight,
              const MainTitleCard(title: 'Trending Now',),
              kHeight,
              const NumberTitleCard(),
              kHeight,
              const MainTitleCard(title: 'Tense Dramas',),
              kHeight,
              const MainTitleCard(title: 'South Indian Cinema',),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}

