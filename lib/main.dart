import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        scaffoldBackgroundColor: backGroundColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        backgroundColor: Colors.black,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
        useMaterial3: true,
      ),
      home:  SafeArea(
          child: ScreenMainPage()
      ),
    );
  }
}
