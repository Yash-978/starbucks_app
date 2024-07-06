import 'package:flutter/cupertino.dart';
import 'package:starbucks_app/Screens/cartPage/cartPage.dart';

import '../Screens/BottomNavigationBar/bottomNavigationBar.dart';
import '../Screens/CategoriesScreen/categoryScreen.dart';
import '../Screens/DetailScreeen/detailPage.dart';
import '../Screens/GreetingScreen/greeting.dart';
import '../Screens/HomeScreens/homeScreen.dart';
import '../Screens/Login&SignUp/signUp.dart';
import '../Screens/PaymentScreen/paymentScreen.dart';
import '../Screens/ProfileScreen/profileScreen.dart';
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
    '/profile': (context) => Profilescreen(),
    '/signUp': (context) => SignUpPage(),
    '/greeting': (context) => GreetingPage(),
   '/detail': (context) => DetailPage(),
    '/cart':(context)=>cartPage()
    // '/quote':(context)=>QuotePage(),
    // '/profile':(context)=>ProfilePage(),
  };
}
