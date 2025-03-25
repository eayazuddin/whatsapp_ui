import 'package:flutter/material.dart';
import 'package:whatsapp_ui/View/HomeView/home_view.dart';

import 'View/SplashView/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp ui',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SplashView(),
    );
  }
}

