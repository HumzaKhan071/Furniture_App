import 'package:flutter/material.dart';
import 'package:furniture_app/Screens/OnBoardingScreens/OnBoardingScreen.dart';
import 'package:furniture_app/Screens/ReviewScreens/ReviewScreen.dart';

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
      home: OnBoardingScreen(),
    );
  }
}
