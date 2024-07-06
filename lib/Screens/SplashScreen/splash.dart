import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import '../../Utils/ColorList.dart';
import '../Login&SignUp/signUp.dart';

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
        // splashIconSize: BorderSide.strokeAlignCenter,
        nextScreen: SignUpPage(),
        animationDuration: Duration(seconds: 2),
        backgroundColor: Colors.black,
        splashTransition: SplashTransition.rotationTransition,

        // curve: Curves.elasticOut,
        splash: Container(
          height: h * 0.22,
          width: w * 0.22,
          decoration: BoxDecoration(
            color: primaryColor,
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.contain,
              image:
                  AssetImage('assets/images/StarBucks_Logos/StrabucksLogo.png'),
            ),
          ),
        ),

        // Container(
        //   height: h * 0.60,
        //   width: w * 0.60,
        //   decoration: BoxDecoration(
        //     shape: BoxShape.circle,
        //     image: DecorationImage(
        //       image: AssetImage(
        //           'assets/images/StarBucks_Logos/StrabucksLogo.png'),
        //     ),
        //   ),
        // )
      ),
    );
  }
}
