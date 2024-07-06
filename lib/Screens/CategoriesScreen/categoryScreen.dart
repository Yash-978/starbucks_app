import 'package:flutter/material.dart';
import 'package:starbucks_app/Screens/bestseller/bestseller.dart';
import 'package:starbucks_app/Screens/drinkPage/drinkPage.dart';

import '../../Utils/GlobalList.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

bool changeToggle = false;

Set<String> _selected = {'Dine in'};

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    //   TabController _tabController=TabController(length: 2,vsync: this );
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

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
                  height: h * 0.299,
                  width: w * 1,
                  decoration: BoxDecoration(
                    color: Color(0xff1e3932),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: w * 0.04,
                            height: h * 0.06,
                          ),
                          Icon(
                            Icons.location_pin,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(
                            width: w * 0.02,
                          ),
                          SizedBox(
                            width: w * 0.66,
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Color(0xff798985),
                                labelText: "No Store Found!",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: w * 0.01,
                          ),
                          Icon(
                            Icons.watch_later_outlined,
                            color: Color(0xff798985),
                            size: 14,
                          ),
                          SizedBox(
                            width: w * 0.01,
                          ),
                          Text(
                            '00mins',
                            style: TextStyle(
                                color: Color(0xff798985), fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * 0.060,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: h * 0.070,
                            width: w * 0.42,
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
                            width: w * 0.03,
                          ),
                          Container(
                            height: h * 0.070,
                            width: w * 0.42,
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
                  height: h * 0.070,
                  width: w * 1,
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
                      ),
                      Tab(
                        text: "Food",
                      ),
                      Tab(
                        text: "Merchandise",
                      ),
                      Tab(
                        text: "Coffee At Home",
                      ),
                      Tab(
                        text: "Ready to Eat",
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: h*1,
                  width: w*1,
                  child: TabBarView(
                    children: [
                      tabPage(),
                      drinkPage()






                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<GlobalKey> ordKey = List.generate(
  save.length,
      (index) => GlobalKey(),
);
bool selectImg = true;
int index2 = 0;

int selIndex = 0;
//String Si = '${save[selIndex][index2]['img']}';
int index=0;
