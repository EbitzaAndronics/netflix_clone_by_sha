import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix_clone_by_sha/Core/Colors/constance.dart';
import 'package:netflix_clone_by_sha/Presentation/Widgets/app_bar_widget.dart';

class DownloadsTab extends StatelessWidget {
    DownloadsTab({Key? key}) : super(key: key);


   final _widgetList = [
     const _SmartDownloads(),
     SectionTwo(),
     const SectionThree(),
   ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: 'Downloads',),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        itemCount: _widgetList.length,
          itemBuilder: (context, index) => _widgetList[index],
          separatorBuilder: (context, index) => const SizedBox(height: 25,),
          )
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children:  [
        Icon(Icons.settings,
          size: 30,
          color: kColorWhite,),
        kWidth,
        Text("Smart Downloads",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),)
      ],
    );
  }
}


class SectionTwo extends StatelessWidget {
   SectionTwo({Key? key}) : super(key: key);

  final List moviePostersLink = [
    "https://webneel.com/daily/sites/default/files/images/daily/09-2019/2-movie-poster-design-aladdin-disney-glossy-composite.jpg",
    "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/c618cd88432989.5dd5e72e505d1.jpg",
    "https://media.comicbook.com/2017/10/iron-man-movie-poster-marvel-cinematic-universe-1038878.jpg",
  ];

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        const Text("Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kColorWhite,
              fontSize: 23,
              fontWeight: FontWeight.bold
          ),),
        kHeight,
        const Text("We'll download a personalised selection of\n movies "
            "and shows for you, so there's\n always something to"
            " watch on your\n device.",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 17,
              color: Colors.grey
          ),
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          //color: Colors.white,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.40,
                backgroundColor: Colors.grey.withOpacity(0.5),
              ),
              DownloadsImageWidget(
                moviePosterLink: moviePostersLink[0],
                margin: const EdgeInsets.only(right: 190, bottom: 30),
                angle: -20,
                conWidthPer: 0.35,
                conHeightPer: 0.53,),
              DownloadsImageWidget(
                moviePosterLink: moviePostersLink[1],
                margin: const EdgeInsets.only(left: 190,bottom: 30),
                angle: 20,
                conWidthPer: 0.35,
                conHeightPer: 0.53,),
              DownloadsImageWidget(
                moviePosterLink: moviePostersLink[2],
                margin: const EdgeInsets.only(top: 13),
                angle: 0,
                conWidthPer: 0.42,
                conHeightPer: 0.63,),
            ],
          ),
        ),
      ],
    );
  }
}

class SectionThree extends StatelessWidget {
  const SectionThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kButtonColorBlue,
            onPressed: (){},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Padding(
              padding:  EdgeInsets.symmetric(vertical: 10),
              child:  Text('Set up',
                style: TextStyle(
                  color: kColorWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          color: kButtonColorWhite,
          onPressed: (){},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                color: kColorBlack,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
          ),
        ),
      ],
    );
  }
}


class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.moviePosterLink,
    this.angle = 0,
    required this.margin,
    required this.conWidthPer,
    required this.conHeightPer,
  });

  final String moviePosterLink;
  final double angle;
  final EdgeInsets margin;
  final double conWidthPer;
  final double conHeightPer;

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width * conWidthPer,
        height: size.width * conHeightPer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.transparent,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              moviePosterLink,
              scale: 1
            )
          )
        ),
      ),
    );
  }
}
