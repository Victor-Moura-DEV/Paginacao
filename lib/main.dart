import 'package:atividade_14/fourth_screen.dart';
import 'package:atividade_14/home_screen.dart';
import 'package:atividade_14/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:atividade_14/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
      routes: {
        'Second': (context) => SecondScreen(),
        'Third': (context) => ThirdScreen(),
        'Fourth': (context) => FourthScreen(),
      },
    );
  }
}
