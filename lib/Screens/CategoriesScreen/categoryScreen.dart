import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../Utils/GlobalList.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    //   TabController _tabController=TabController(length: 2,vsync: this );

    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Color(0xff1e3932),
          title: Text(
            'Mobile Order and Pay',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 18,
          ),
          actions: [
            Icon(
              Icons.search_rounded,
              color: Colors.white,
              size: 18,
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Color(0xff1e3932),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 15,
                            height: 50,
                          ),
                          Icon(
                            Icons.location_pin,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          SizedBox(
                            width: 240,
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Color(0xff798985),
                                labelText: "No Store Found!",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.watch_later_outlined,
                            color: Color(0xff798985),
                            size: 14,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '00mins',
                            style: TextStyle(
                                color: Color(0xff798985), fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon((Icons.dinner_dining)),
                                Text('Dine In')
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon((Icons.takeout_dining_outlined)),
                                Text('Takeway')
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 500,
                  child: TabBar(
                    labelColor: Color(0xff1e3932),
                    unselectedLabelColor: Color(0xff798985),
                    //  labelPadding: EdgeInsets.only(left:20,right:0),
                    //   isScrollable: true,
                    indicatorColor: Color(0xff1e3932),

                    tabs: [
                      Tab(
                        text: "Bestseller",
                      ),
                      Tab(
                        text: "Drink",
                      )
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  width: 500,
                  child: TabBarView(
                    children: [
                      ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, top: 10),
                            child: Container(
                              height: 230,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade400,
                                      offset: Offset(0, 2),
                                      blurRadius: 2,
                                      spreadRadius: 2),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Text('${ProductDetail[index]['productName']}',
                                      maxLines: 1),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      ListView.builder(
                        itemCount: ProductDetail.length,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 10),
                              child: Column(children: [
                                Container(
                                  height: 230,
                                  width: 400,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.shade400,
                                            offset: Offset(0, 2),
                                            blurRadius: 2,
                                            spreadRadius: 2)
                                      ]),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 230,
                                            width: 120,
                                            color: Colors.pink,
                                          ),
                                          Container(
                                            height: 230,
                                            width: 200,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(20))),
                                            child: Column(
                                              children: [
                                                Text(
                                                  '${ProductDetail[index]['productName']}',
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                    '${ProductDetail[index]['size']}')
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ]));
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
