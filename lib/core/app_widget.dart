import 'package:DevQuiz/modules/app/pages/challenge/challenge_page.dart';
import 'package:DevQuiz/modules/app/pages/home/home_page.dart';
import 'package:DevQuiz/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: HomePage(),
    );
  }
}
