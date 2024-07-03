import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import '../HomeScreens/homeScreen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: AnimatedSplashScreen(
          nextScreen: HomePage(),
          animationDuration: Duration(seconds: 3),
          backgroundColor: Colors.black,
          splashTransition: SplashTransition.rotationTransition,
          // curve: Curves.elasticOut,
          splash: Container(
            height: h * 0.35,
            width: w * 0.35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/StarBucks_Logos/StrabucksLogo.png'),
              ),
            ),
          )),
    );
  }
}
