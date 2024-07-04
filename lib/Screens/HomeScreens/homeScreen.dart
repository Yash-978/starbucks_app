
import 'package:flutter/material.dart';

import '../../Utils/ImagesList.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery
        .of(context)
        .size
        .height;
    double w = MediaQuery
        .of(context)
        .size
        .width;
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        // bottomNavigationBar: buildCurvedNavigationBar(h),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: h * 0.23,
                width: w * 0.99 + 10,
                padding: EdgeInsets.only(left: 8, right: 15),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: 0.9,
                    fit: BoxFit.fitWidth,
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
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/profile');
                          },
                          child: Icon(
                            Icons.person_outline_rounded,
                            color: Colors.white,
                            size: 27,
                          ),
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
                height: h * 0.55,
                width: w * 0.9,
                alignment: Alignment.bottomRight,

                // padding: EdgeInsets.only(right: 15),
                padding: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    // opacity: 0.099 + 1,
                    fit: BoxFit.values.first,
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
              Container(
                height: h * 0.28,
                width: w * 0.9,
                decoration: BoxDecoration(
                  color: Color(0xff006241),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: h * 0.27,
                          width: w * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                  AssetImage('assets/images/offersBg2.png'),
                                  fit: BoxFit.fill)),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: const TextSpan(
                                text: 'Now Brewing',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '\nStarbucks Menu',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  TextSpan(
                                      text:
                                      "\n\nIndulge in season's feasting! Make\nyour sips extra special!. Explore\nMenu",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13)),
                                ]),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: w * 0.6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: 'Starting from',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 13),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: "\nRs 250",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15))
                                        ])),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: w * 0.095,
                                        width: w * 0.27,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20),
                                            color: Colors.white),
                                        child: Center(
                                            child: Text(
                                              'Order now',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.050,
              ),
              Container(
                height: h * 0.28,
                width: w * 0.9,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/offersBg.jpeg'),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: h * 0.27,
                          width: w * 0.21,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.none,
                                image: AssetImage(
                                    'assets/images/the_perfect_Espresso-removebg-preview.png'),
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: const TextSpan(
                                text: 'Introducing',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '\nThe Perfect Espresso',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  TextSpan(
                                      text:
                                      "\n\nSourced only from the World's Too\n3% Arabic Beans, served with love",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13)),
                                ]),
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          Container(
                            width: w * 0.6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: w * 0.095,
                                  width: w * 0.27,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                  child: Center(
                                      child: Text(
                                        'Know More',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.030,
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
              SizedBox(
                height: h * 0.010,
              ),
              SizedBox(
                height: h * 0.3,
                width: w * 0.85,
                child: GridView.builder(
                  itemCount: CategoriesIconList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          // padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(6),
                          height: h * 0.08 + 10,
                          width: w * 0.3 + 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                CategoriesIconList[index]['categoryImage'],
                              ),
                            ),
                          ),
                        ),
                        Text(CategoriesIconList[index]['categoryName'])
                      ],
                    );
                  },
                ),
              ),
              Container(
                height: h * 0.8,
                width: w * 0.99 + 10,
                decoration: BoxDecoration(
                  color: Color(0xffECEAE8),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '   Barista Recommends',
                            style: TextStyle(
                              color: Color(0xff213C35),
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: h * 0.09 + 10,
                          width: w * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/extraImages/bg_flower.jpg'))),
                        ),
                      ],
                    ),
                    Container(
                      height: h * 0.25,
                      width: w * 0.800,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                    'assets/images/brewed_coffee/bc(1).jpg'),
                              ),
                              // Container(height: h*0.1,)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//   CurvedNavigationBar buildCurvedNavigationBar(double h) {
//     return CurvedNavigationBar(
//       onTap: (value) {
//
//       },
//       color: Color(0xffC0AEAD),
//
//       index: 2,
//       backgroundColor: Colors.transparent,
//       height: h * 0.065,
//       animationDuration: Duration(milliseconds: 300),
//       items: [
//         Icon(
//           Icons.home,
//           size: 30,
//           color: Color(0xff00714E),
//         ),
//         Icon(
//           Icons.card_giftcard_outlined,
//           size: 30,
//           color: Color(0xff00714E),
//         ),
//         CircleAvatar(
//           backgroundColor: Color(0xff00714E),
//           radius: 27,
//           backgroundImage: AssetImage('assets/images/center_button.jpg'),
//         ),
//         Icon(
//           Icons.payment,
//           size: 30,
//           color: Color(0xff00714E),
//         ),
//         Icon(
//           Icons.search,
//           size: 30,
//           color: Color(0xff00714E),
//         ),
//       ],
//     );
//   }
// }
