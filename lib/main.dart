
import 'package:flutter/material.dart';


import 'Screens/DetailScreeen/detailPage.dart';
import 'Screens/FavoriteScreen/favoriteScreen.dart';
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
      // home: FavoritePage(),

    );
  }
}









