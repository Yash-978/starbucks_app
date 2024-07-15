import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../Login&SignUp/signUp.dart';

List splashVideoList = [
  'assets/Gif_videos/splashScreen/splash1.gif',
  'assets/Gif_videos/splashScreen/splash2.gif',
  'assets/Gif_videos/splashScreen/splash3.gif',
  'assets/Gif_videos/splashScreen/splash4.gif',
];
late String selectSplash;

class SplashVideoPage extends StatefulWidget {
  const SplashVideoPage({super.key});

  @override
  State<SplashVideoPage> createState() => _SplashVideoPageState();
}

class _SplashVideoPageState extends State<SplashVideoPage> {
  @override
  void initState() {
    super.initState();
    selectSplash = splashVideoList[Random().nextInt(splashVideoList.length)];
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SignUpPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          height: h * 1 + 10,
          width: w * 0.99+10,
          decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(fit: BoxFit.fill,
                image: AssetImage(selectSplash),
              )),
        ),
      ),
    );
  }
}
