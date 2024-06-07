import 'package:flutter/material.dart';
import 'package:about_us/screens/about_us.dart';

import 'screens/homeScreen.dart';
import 'screens/tipsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/tips': (context) => const TipsScreen(),
        '/about': (context) => const AboutUs(),
      },
    );
  }
}



