import 'package:flutter/material.dart';
import '../../Downloads/Widgets/screen_downloads.dart';
import '../../FastLaughs/Widgets/fast_laughs.dart';
import '../../HomeTab/Widgets/home_tab.dart';
import '../../NewAndHote/Widgets/new_and_hote.dart';
import '../../Search/Widgets/search_tab.dart';
import 'bottom_nav.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);

  final _pages = const [
    HomeTab(),
    NewAndHotTab(),
    FastLaughsTab(),
    SearchTab(),
    DownloadsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _){
            return _pages[index];
          }),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}