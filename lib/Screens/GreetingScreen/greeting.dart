import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


import 'package:starbucks_app/Utils/ColorList.dart';

import '../BottomNavigationBar/bottomNavigationBar.dart';
import '../Login&SignUp/Component/signUpVariables.dart';

class GreetingPage extends StatefulWidget {
  const GreetingPage({super.key});

  @override
  State<GreetingPage> createState() => _GreetingPageState();
}

class _GreetingPageState extends State<GreetingPage> {
  late String _timeOfDayMessage;

  @override
  void initState() {
    super.initState();
    _timeOfDayMessage = _getTimeOfDayMessage();
  }

  String _getTimeOfDayMessage() {
    final hour = DateTime.now().hour;
    if (hour >= 5 && hour < 12) {
      return 'Good Morning';
    } else if (hour >= 12 && hour < 17) {
      return 'Good Afternoon';
    } else if (hour >= 17 && hour < 21) {
      return 'Good Evening';
    } else {
      return 'Good Night';
    }
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h * 1,
        width: w * 0.99 + 10,
        decoration: BoxDecoration(
          color: primaryColor,
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage('assets/images/Poster/poster(2).jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: h * 0.2,
            ),
            Container(
              height: h * 0.22,
              width: w * 0.22,
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                      'assets/images/StarBucks_Logos/StrabucksLogo.png'),
                ),
              ),
            ),
            Text(
              _timeOfDayMessage + ' ${txtFirstName.text}',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: w * 0.85,
              child: Text(
                textAlign: TextAlign.center,
                'Days are brighter with Starbucks by your side - sip, smile and savor the season',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: h * 0.35,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: MainBottomNavigation(),
                        duration: Duration(milliseconds: 600),
                        type: PageTransitionType.bottomToTop));
              },
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_downward_rounded,
                  color: primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
