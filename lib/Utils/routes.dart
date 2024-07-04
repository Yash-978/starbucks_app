import 'package:flutter/cupertino.dart';

import '../Screens/BottomNavigationBar/bottomNavigationBar.dart';
import '../Screens/CategoriesScreen/categoryScreen.dart';
import '../Screens/HomeScreens/homeScreen.dart';
import '../Screens/PaymentScreen/paymentScreen.dart';
import '../Screens/SearchScreen/searchScreen.dart';
import '../Screens/SplashScreen/splash.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => HomePage(),
    '/splash': (context) => SplashPage(),
    '/categories': (context) => CategoriesPage(),
    '/search': (context) => Searchscreen(),
    '/payment': (context) => Paymentscreen(),
    '/mainNavigation': (context) => MainBottomNavigation(),
    // '/quote':(context)=>QuotePage(),
    // '/profile':(context)=>ProfilePage(),
  };
}
