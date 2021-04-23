import'package:flutter/material.dart';
import 'package:truefalsequiz_app/Screens/ScoreScreen.dart';
import 'Model/User.dart';
import 'Screens/HomeScreen.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  static User newUser = User();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quiz App",
      home: HomeScreen(),
    );
  }
}