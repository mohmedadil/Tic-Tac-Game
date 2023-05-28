import 'package:flutter/material.dart';
import 'package:tic_toe/tictoe.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: tictoe() ,
      debugShowCheckedModeBanner: false ,
    );
  }
}


