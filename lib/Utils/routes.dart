import 'package:flutter/cupertino.dart';

import '../Screens/CategoriesScreen/categoryScreen.dart';
import '../Screens/HomeScreens/homeScreen.dart';
import '../Screens/SplashScreen/splash.dart';

class AppRoutes
{
  static Map<String,Widget Function (BuildContext)>routes={

    '/':(context)=>HomePage(),
    '/splash':(context)=>SplashPage(),
    '/categories':(context)=>CategoriesPage(),
    // '/quote':(context)=>QuotePage(),
    // '/profile':(context)=>ProfilePage(),

  };
}