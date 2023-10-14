import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(4);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context,int newIndex, _){
      return BottomNavigationBar(
        onTap: (index){
          indexChangeNotifier.value = index;
        },
          currentIndex: newIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme:const IconThemeData(
            color: Colors.white,
          ),
          unselectedIconTheme:const IconThemeData(
            color: Colors.grey,
          ),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.collections),
                label: "New & Hote"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions),
                label: "Fast laughs"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.download),
                label: "Downloads"
            ),
          ]);
    });
  }
}
