import 'package:flutter/material.dart';
import 'package:toonflix/webtoon_app/screens/home_screen.dart';

class WebtoonApp extends StatelessWidget {
  const WebtoonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
