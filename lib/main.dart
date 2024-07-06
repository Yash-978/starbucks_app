
import 'package:flutter/material.dart';


import 'Screens/DetailScreeen/detailPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/splash',
      // routes: AppRoutes.routes,
      home: DetailPage(),

    );
  }
}





