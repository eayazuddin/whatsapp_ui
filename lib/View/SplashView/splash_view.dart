import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/View/HomeView/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
      return HomeView();
    }), (route)=> false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/images/logo.png",width: 130,height: 110,)),
    );
  }
}
