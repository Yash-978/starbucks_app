import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/BottomNavigationBar/bottomNavigationBar.dart';
import 'Screens/DetailScreeen/detailPage.dart';
import 'Screens/HomeScreens/homeScreen.dart';
import 'Utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: AppRoutes.routes,
      // home: DetailPage(),

    );
  }
}
