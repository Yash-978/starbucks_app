import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: CurvedNavigationBar(
          index: 2,
          backgroundColor: Colors.transparent,
          height: h * 0.065,
          animationDuration: Duration(milliseconds: 300),
          items: [
            GestureDetector(
              onTap: () {
                setState(() {
                  // HomePage();
                });
              },
              child: Icon(
                Icons.home,
                size: 30,
              ),
            ),
            Icon(
              Icons.card_giftcard_outlined,
              size: 30,
            ),
            Icon(
              Icons.coffee_outlined,
              size: 30,
            ),
            Icon(
              Icons.payment,
              size: 30,
            ),
            Icon(
              Icons.search,
              size: 30,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: h * 0.4,
                width: w * 0.99 + 10,
                padding: EdgeInsets.only(left: 8, right: 15),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    // opacity: 1.,
                    fit: BoxFit.contain,
                    image: AssetImage(
                        'assets/images/homeScreen_appBar_image.jpeg'),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.storefront,
                          color: Colors.white,
                          size: 27,
                        ),
                        Spacer(),
                        Icon(
                          Icons.person_outline_rounded,
                          color: Colors.white,
                          size: 27,
                        )
                      ],
                    ),
                    // SizedBox(height: h*0.,)
                  ],
                ),
              ),
              Container(
                height: h * 0.1,
                width: w * 0.99 + 10,
                padding: EdgeInsets.only(left: 8, right: 15),
                decoration: BoxDecoration(color: Color(0xff1D3631)),
                child: Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '✨',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '0',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '/5\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '    stars',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '✨',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '0\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '    rewards',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'You are ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                          TextSpan(
                            text: '5 stars ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w400),
                          ),
                          TextSpan(
                            text: 'away \n from another reward ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    CircleAvatar(
                        radius: 11,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 17,
                          color: Color(0xff1D3631),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.050,
              ),
              Container(
                height: h * 0.5,
                width: w * 0.9,
                alignment: Alignment.bottomRight,

                // padding: EdgeInsets.only(right: 15),
                padding: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    // opacity: 1.,
                    fit: BoxFit.cover,
                    image: AssetImage(
                        'assets/images/homeScreen_video_image_2.jpeg'),
                  ),
                ),
                child: Container(
                  height: h * 0.01,
                  width: w * 0.01,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff847F81),
                  ),
                  child: Icon(
                    Icons.volume_off_rounded,
                    color: Colors.white,
                    size: 27,
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.050,
              ),

              SizedBox(
                height: h * 0.050,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '   Handcrafted Curations',
                  style: TextStyle(
                    color: Color(0xff213C35),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 45,
                backgroundColor: Color(0xff006241),
                backgroundImage: AssetImage('assets/images/homeScreen_video_image_2.jpeg'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
