import 'package:flutter/material.dart';
import 'package:netflix_clone_by_sha/Core/Colors/constance.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.30),
                  radius: 30,
                  child: IconButton(
                      onPressed: (){},
                      icon: const Icon(
                        Icons.volume_off,
                      size: 35,)),
                ),

                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          "https://www.shamacollection.com/cdn/shop/products/2437TamannaBhatiaMustardBlueAnarkaliinspiredfromPaiya-ThuliThuli.png?v=1640012702"
                        ),
                      ),
                    ),
                    VideoActionsWidget(title: 'LOL', icon: Icons.emoji_emotions),
                    VideoActionsWidget(title: 'My List', icon: Icons.add),
                    VideoActionsWidget(title: 'Share', icon: Icons.share),
                    VideoActionsWidget(title: 'Play', icon: Icons.play_arrow),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  const VideoActionsWidget({super.key, required this.title, required this.icon});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Column(
        children: [
          Icon(icon,
          color: Colors.white,
          size: 50,
          ),
          Text(title,
          style: const TextStyle(
            fontSize: 16,
            color: kColorWhite,
          ),),
        ],
      ),
    );
  }
}

