import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:starbucks_app/Utils/ColorList.dart';
import 'package:starbucks_app/Utils/GlobalList.dart';

List favoriteList = [];
bool isLiked = false;
bool isHeartAnimating = false;
final PanelController _customizeController = PanelController();
final PanelController _addOnsController = PanelController();

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  // late AnimationController likeController;

  void addToFavorites(int index) {
    setState(() {
      // bool likestatus = false;
      // int index = 0;
      // for (int i = 0; i < favoriteList.length; i++) {
      //   if (favoriteList[i]['productName'] == favoriteList[index]['productName']) {
      //     index = i;
      //     likestatus = true;
      //   }
      // }
      // if (likestatus == true) {
      //   favoriteList.add(productDisplayList[index]);
      //   // cartList[index]['member']++;
      // } else {
      //   favoriteList.add(productDisplayList[index]);
      // }

      // Navigator.pushNamed(context, '/cart');
      // productDisplayList[index]['like'] = !productDisplayList[index]['like'];
      // if (productDisplayList[index]['like']) {
      //   favoriteList.add(productDisplayList[index]);
      // } else {
      //   favoriteList.remove(productDisplayList[index]);
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff016140),
        // padding: EdgeInsets.only(top: 2,),
        child: GestureDetector(
          onTap: () {
            bool status = false;
            int index = 0;
            for (int i = 0; i < cartList.length; i++) {
              if (cartList[i]['productName'] ==
                  productDisplayList[0]['productName']) {
                index = i;
                status = true;
              }
            }
            if (status == true) {
              cartList.add(productDisplayList[0]);
              // cartList[index]['member']++;
            } else {
              cartList.add(productDisplayList[0]);
            }
            Navigator.pushNamed(context, '/cart');
          },
          child: Container(
            height: h * 0.1,
            width: w * 0.86,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Text(
              'Add to cart',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
        title: Text(
          productDisplayList[0]['productName'],
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/favorite');
              },
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              GestureDetector(
                onDoubleTap: () {
                  setState(() {
                    bool likestatus = false;
                    int index = 0;
                    for (int i = 0; i < favoriteList.length; i++) {
                      if (favoriteList[i]['productName'] ==
                          favoriteList[0]['productName']) {
                        index = i;
                        likestatus = true;
                      }
                    }
                    if (likestatus == true) {
                      favoriteList.add(productDisplayList[0]);
                      // cartList[index]['member']++;
                    } else {
                      favoriteList.add(productDisplayList[0]);
                    }
                    showLimitedTimeDialog(context);
                  });

                  // return  Lottie.asset('assets/LottieLogo1.json'),
                  // isHeartAnimating = true;
                  // isLiked = true;
                  // print('add to favorite');
                },
                child: Stack(
                  children: [
                    Container(
                      height: h * 0.6,
                      width: w * 0.99 + 10,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(productDisplayList[0]['image']),
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.fullscreen,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: h * 0.27,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: w * 0.035),
                                  Container(
                                    height: h * 0.04,
                                    width: w * 0.04,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/StarBucks_Logos/vegIcon.jpg'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: w * 0.02),
                                  Text(
                                    'VEGETARIAN  ${productDisplayList[0]['celsius']}',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: w * 0.035),
                                  Text(
                                    productDisplayList[0]['productName'],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: w * 0.035),
                                  SizedBox(
                                    width: w * 0.86,
                                    child: Text(
                                      productDisplayList[0]['description'],
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: w * 0.035),
                                  Text(
                                    productDisplayList[0]['category'],
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Stack(children: [
              //   Container(
              //     height: 240,
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.only(
              //             topLeft: Radius.circular(30),
              //             topRight: Radius.circular(30))),
              //     child: Column(children: [
              //       Padding(
              //         padding:
              //         const EdgeInsets.only(top: 20, left: 20, right: 20),
              //         child: SizedBox(
              //           height: 105,
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 'CUSTOMISE YOUR ORDER',
              //                 style: TextStyle(
              //                     fontSize: 20, fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 'SHORT,No Milk',
              //                 style: TextStyle(
              //                     fontSize: 10, fontWeight: FontWeight.w500),
              //               ),
              //               Divider(
              //                 height: 25,
              //               ),
              //               Text(
              //                 'AMP UP YOUR ORDER',
              //                 style: TextStyle(
              //                     fontSize: 20, fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 'No Whipped Topping',
              //                 style: TextStyle(
              //                     fontSize: 10, fontWeight: FontWeight.w500),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //
              //     ]),
              //   ),
              // ]),



              Stack(alignment: Alignment.bottomLeft,
                children: [
                  GestureDetector(
                    onTap: () {
                      _customizeController.open();
                    },
                    child: Container(
                      height: h * 0.135,
                      width: w * 1,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: h * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: w * 0.06,
                              ),
                              Text(
                                'CUSTOMISE YOUR ORDER',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: w * 0.06,
                              ),
                              Text(
                                'SHORT,' +
                                    '  ${productDisplayList[0]['ingredients']}',
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      _addOnsController.open();
                    },
                    child: Container(
                      height: h * 0.07,
                      width: w * 1,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 4,
                              spreadRadius: 4,
                              // offset: Offset(1,)
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: h * 0.015,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: w * 0.01,
                              ),
                              Text(
                                'AMP UP YOUR ORDER WITH ADDITIONAL TOPPINGS',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: w * 0.06,
                              ),
                              Text(
                                'No Whippped Topping',
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // GestureDetector(
              //   onTap: () {
              //     _addOnsController.open();
              //   },
              //   child: Container(
              //     height: h * 0.07,
              //     width: w * 1,
              //     decoration: BoxDecoration(
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.black45,
              //             blurRadius: 4,
              //             spreadRadius: 4,
              //             // offset: Offset(1,)
              //           )
              //         ],
              //         color: Colors.white,
              //         borderRadius: BorderRadius.only(
              //             topLeft: Radius.circular(20),
              //             topRight: Radius.circular(20))),
              //     child: Column(
              //       children: [
              //         SizedBox(
              //           height: h * 0.015,
              //         ),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           children: [
              //             SizedBox(
              //               width: w * 0.01,
              //             ),
              //             Text(
              //               'AMP UP YOUR ORDER WITH ADDITIONAL TOPPINGS',
              //               style: TextStyle(
              //                   fontSize: 15, fontWeight: FontWeight.w500),
              //             )
              //           ],
              //         ),
              //         Row(
              //           children: [
              //             SizedBox(
              //               width: w * 0.06,
              //             ),
              //             Text(
              //               'No Whippped Topping',
              //               style: TextStyle(
              //                   fontSize: 10, fontWeight: FontWeight.w400),
              //             ),
              //           ],
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              Container(
                height: h * 0.07,
                width: w * 1,
                decoration: BoxDecoration(
                    color: Color(0xff007549),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'CURRENT ITEM',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          productDisplayList[0]['productName'],
                          style: TextStyle(
                              color: Colors.white,
                              // fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.currency_rupee,
                          color: Colors.white,
                          size: 19,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          productDisplayList[0]['price'].toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SlidingUpPanel(
            controller: _customizeController,
            color: primaryColor,
            panel: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    RichText(
                        text: TextSpan(
                      text: 'CUSTOMISE YOUR ORDER ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      children: const <TextSpan>[
                        TextSpan(
                          text: '(Default)',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 15),
                        ),
                      ],
                    )),
                    Divider(
                      height: h * 0.1,
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'SIZE',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                        Text(
                          'Select any one',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.05,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: h * 0.09,
                                width: w * 0.15,
                                color: Colors.green,
                              ),
                              SizedBox(
                                height: h * 0.02,
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'SHORT',
                                    style: TextStyle(color: Colors.teal),
                                  )),
                              Text(
                                '237Ml-₹0.00',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            width: w * 0.05,
                          ),
                          Column(
                            children: [
                              Container(
                                height: h * 0.09,
                                width: w * 0.15,
                                color: Colors.green,
                              ),
                              SizedBox(
                                height: h * 0.02,
                              ),
                              SizedBox(
                                width: w * 0.2,
                                child: TextButton(
                                    style: buttonStyleCircle,
                                    onPressed: () {},
                                    child: Text(
                                      'TALL',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                              Text(
                                '354Ml-₹36.75',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            width: w * 0.05,
                          ),
                          Column(
                            children: [
                              Container(
                                height: h * 0.09,
                                width: w * 0.15,
                                color: Colors.green,
                              ),
                              SizedBox(
                                height: h * 0.02,
                              ),
                              SizedBox(
                                width: w * 0.25,
                                child: TextButton(
                                    style: buttonStyleCircle,
                                    onPressed: () {},
                                    child: Text(
                                      'GRANDE',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                              Text(
                                '473Ml-₹78.75',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            width: w * 0.05,
                          ),
                          Column(
                            children: [
                              Container(
                                height: h * 0.09,
                                width: w * 0.15,
                                color: Colors.green,
                              ),
                              SizedBox(
                                height: h * 0.02,
                              ),
                              SizedBox(
                                width: w * 0.2,
                                child: TextButton(
                                    style: buttonStyleCircle,
                                    onPressed: () {},
                                    child: Text(
                                      'VENTI',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                              Text(
                                '473Ml-₹78.75',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: h * 0.1,
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'MILK',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white),
                        ),
                        Text(
                          'Select any one',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.05,
                    ),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'No Milk',
                                  style: TextStyle(color: Colors.teal),
                                )),
                            Text(
                              '+₹0.00',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      height: h * 0.1,
                      thickness: 2,
                    ),
                  ],
                ),
              ),
            ),
            minHeight: 0,
            maxHeight: 400,
            backdropEnabled: true,
            borderRadius: BorderRadius.vertical(top: Radius.circular(18.0)),
          ),
          // Amp Up Your Order with Add-ons Panel
          SlidingUpPanel(
            controller: _addOnsController,
            panel: _buildAddOnsPanel(),
            minHeight: 0,
            maxHeight: 400,
            backdropEnabled: true,
            borderRadius: BorderRadius.vertical(top: Radius.circular(18.0)),
          ),
        ],
      ),
    );
  }
}

Widget _buildAddOnsPanel() {
  return ListView(
    padding: EdgeInsets.all(16.0),
    children: [
      Text('Amp Up Your Order with Add-ons',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ListTile(
        title: Text('Whipped Cream'),
        trailing: Switch(
          value: false,
          onChanged: (value) {},
        ),
      ),
      ListTile(
        title: Text('Extra Shot of Espresso'),
        trailing: Switch(
          value: false,
          onChanged: (value) {},
        ),
      ),
    ],
  );
}



final ButtonStyle buttonStyleCircle = ButtonStyle(
  // padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),

  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),

  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25.0),
      side: const BorderSide(color: Colors.white),
    ),
  ),
);

void showLimitedTimeDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        child: LottieBuilder.asset(
          'assets/likeButton/like.json',
        ),
      );
    },
  );

  Future.delayed(
      Duration(
        seconds: 1,
      ), () {
    Navigator.of(context).pop();
  });
}
