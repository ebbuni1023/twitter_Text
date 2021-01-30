import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:async';
import 'package:twitter_text_app/pages/home.dart';
import 'package:twitter_text_app/pages/splash.dart';
import 'package:twitter_text_app/pages/stats.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Twitter Stats',
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/home': (context) => HomePage(),
      '/user_stat': (context) => Stats(),
      },
    );
  }
}
