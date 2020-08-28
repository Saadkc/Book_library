import 'package:flutter/material.dart';
import 'package:reading_book/Home/home_page.dart';
import 'package:reading_book/Intro_Screen/intro_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,     
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      home: OnBoardingScreen(),
    );
  }
}

