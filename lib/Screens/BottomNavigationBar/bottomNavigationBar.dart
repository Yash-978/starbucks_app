import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../CategoriesScreen/categoryScreen.dart';
import '../GiftScreen/giftscreen.dart';
import '../HomeScreens/homeScreen.dart';
import '../PaymentScreen/paymentScreen.dart';
import '../SearchScreen/searchScreen.dart';

class MainBottomNavigation extends StatefulWidget {
  const MainBottomNavigation({super.key});

  @override
  State<MainBottomNavigation> createState() => _MainBottomNavigationState();
}

PageController _pageController = PageController();

List<Widget> _bottomNavigate = [
  const HomePage(),
  const Giftscreen(),
  const CategoriesPage(),
  const Paymentscreen(),
  const Searchscreen(),
];
int selectPage = 0;

class _MainBottomNavigationState extends State<MainBottomNavigation> {
  void _onPageChanged(int index) {
    setState(() {
      selectPage = index;
    });
  }

  void _onItemTapped(int i) {
    _pageController.jumpToPage(i);
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(

        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: _bottomNavigate,
      ),
      bottomNavigationBar: CurvedNavigationBar(

        onTap: _onItemTapped,
        color: Colors.white,
        buttonBackgroundColor: Colors.white, //Color(0xff00B087),
        index: selectPage,
        backgroundColor: Color(0xff1D3631),
        height: h * 0.065,
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: Color(0xff00714E),
          ),
          Icon(
            Icons.card_giftcard_outlined,
            size: 30,
            color: Color(0xff00714E),
          ),
          CircleAvatar(
            backgroundColor: Color(0xff00714E),
            radius: 27,
            backgroundImage: AssetImage('assets/images/center_button.jpg'),
          ),
          Icon(
            Icons.payment,
            size: 30,
            color: Color(0xff00714E),
          ),
          Icon(
            Icons.search,
            size: 30,
            color: Color(0xff00714E),
          ),
        ],
      ),


    );
  }
}
