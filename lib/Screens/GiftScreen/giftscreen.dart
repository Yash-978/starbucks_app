import 'package:flutter/material.dart';
import 'package:starbucks_app/Utils/GlobalList.dart';

class Giftscreen extends StatefulWidget {
  const Giftscreen({super.key});

  @override
  State<Giftscreen> createState() => _GiftscreenState();
}

class _GiftscreenState extends State<Giftscreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1e3932),
        title: Text(
          'Gift Card',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
            size: 18,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_rounded,
              color: Colors.white,
              size: 18,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: DefaultTabController(
          length: 4,
          child: Column(
            children: [
              Container(
                height: h * 0.299,
                width: w * 1,
                decoration: BoxDecoration(
                  color: Color(0xff1e3932),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        height: h * 0.25,
                        width: w * 1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xff79c4af),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: h * 0.35,
                              width: w * 0.21,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage(
                                      'assets/images/Poster/poster(5).png'),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: h * 0.001,
                                  ),
                                  Text(
                                    'Starbucks',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  const Text(
                                    'Essential Collection',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 21.5,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.9),
                                  ),
                                  SizedBox(
                                    height: h * 0.005,
                                  ),
                                  const Text(
                                    'A whole new expression of classic\nStarbucks Design. Explore merchandise\ncollection. ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.5,
                                        letterSpacing: .75),
                                  ),
                                  SizedBox(
                                    height: h * 0.005,
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Starting from ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.5,
                                                letterSpacing: .75),
                                          ),
                                          SizedBox(
                                            height: h * 0.002,
                                          ),
                                          Text(
                                            '₹5OO.OO',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: .75),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: w * 0.1,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xff2a7f62),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 8),
                                          minimumSize: const Size(100, 10),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                        ),
                                        child: const Text(
                                          'Order Now',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              letterSpacing: .75),
                                        ), // Button ka text
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TabBar(
                tabAlignment: TabAlignment.center,
                automaticIndicatorColorAdjustment: true,
                isScrollable: true,
                labelColor: Color(0xff1e3932),
                unselectedLabelColor: Color(0xff798985),
                //  labelPadding: EdgeInsets.only(left:20,right:0),
                //   isScrollable: true,
                indicatorColor: Color(0xff1e3932),
                tabs: [
                  Tab(
                    text: "FEATURED",
                  ),
                  Tab(
                    text: "CONGRATULATIONS",
                  ),
                  Tab(
                    text: "THANK YOU",
                  ),
                  Tab(
                    text: "ANYTIME",
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.02,
              ),
              SizedBox(
                height: h * 1,
                child: ListView.builder(
                  itemCount: GiftList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Stack(children: [
                          Container(
                            margin: EdgeInsets.only(left: 50),
                            alignment: Alignment.centerRight,
                            height: h * 0.25,
                            width: w * 0.99,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade300,
                                    blurRadius: 3,
                                    spreadRadius: 1,
                                    offset: const Offset(2, 3))
                              ],
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(right: 10, left: 18),
                                height: h * 0.15,
                                width: w * 0.45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            GiftList[index]['image'])),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade300,
                                        blurRadius: 1,
                                        spreadRadius: -1,
                                        offset: const Offset(0, 5),
                                      )
                                    ]),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '${GiftList[index]['name']}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                      // softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      'Bring in the festive\n season and make each \ncelebration memorable.'),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff2a7f62),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 8),
                                      minimumSize: const Size(100, 10),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                    child: const Text(
                                      'Add Item',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          letterSpacing: .75),
                                    ), // Button ka text
                                  )
                                ],
                              )
                            ],
                          )
                        ]),
                        SizedBox(
                          height: h * 0.02,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
