import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movieStream/resources/views/HomeScreen.dart';

void main() {
  runApp(MyApp());

  SystemChrome.setEnabledSystemUIOverlays([]);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}