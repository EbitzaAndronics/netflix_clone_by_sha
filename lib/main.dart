import 'package:flutter/material.dart';
import 'Core/Colors/colors.dart';
import 'Presentation/MainPage/Widgets/screen_main_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: backGroundColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        backgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
        useMaterial3: true,
      ),
      home:  ScreenMainPage(),
    );
  }
}