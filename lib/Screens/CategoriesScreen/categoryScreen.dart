import 'package:flutter/material.dart';

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
            style: TextStyle(color: Colors.white,fontSize: 18),
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
                  height: h*0.299,
                  width: w*1,
                  decoration: BoxDecoration(
                    color: Color(0xff1e3932),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: w*0.04,
                            height: h*0.06,
                          ),
                          Icon(
                            Icons.location_pin,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(
                            width: w*0.02,
                          ),
                          SizedBox(
                            width: w*0.66,
                            child: TextField(
                              decoration:
                              InputDecoration(
                                fillColor: Color(0xff798985),
                                labelText: "No Store Found!",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: w*0.01,
                          ),
                          Icon(
                            Icons.watch_later_outlined,
                            color: Color(0xff798985),
                            size: 14,
                          ),
                          SizedBox(
                            width: w*0.01,
                          ),
                          Text(
                            '00mins',
                            style: TextStyle(color: Color(0xff798985),fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h*0.060,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: h*0.070,
                            width: w*0.42,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon((Icons.dinner_dining)),
                                Text('Dine In')
                              ],
                            ),
                          ),
                          SizedBox(
                            width: w*0.03,
                          ),
                          Container(
                            height: h*0.070,
                            width: w*0.42,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
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
                  height: h*0.070,
                  width: w*1,
                  child: TabBar(
                    labelColor: Color(0xff1e3932),
                    unselectedLabelColor: Color(0xff798985),
                    //  labelPadding: EdgeInsets.only(left:20,right:0),
                    //   isScrollable: true,
                    indicatorColor:Color(0xff1e3932) ,


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
                  height: h*0.999,
                  width: w*0.999,
                  child: TabBarView(
                    children: [


                      ListView.builder(itemBuilder: (context, index) {

                        return Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                          child: Container(
                            height: h*0.3,
                            width: w*0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade400,
                                    offset: Offset(0,2),
                                    blurRadius: 2,spreadRadius: 2
                                ),

                              ],

                            ),
                            child: Column(
                              children: [
                                Text('${ProductDetail[index]['productName']}',maxLines: 1,),
                              ],
                            ),
                          ),
                        );
                      },),
                      ListView.builder(
                        itemCount: ProductDetail.length

                        ,itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                            child:
                            Column(
                                children:[
                                  Container(
                                    height: h*0.35,
                                    width: w*1,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey.shade400,
                                              offset: Offset(0,2),
                                              blurRadius: 2,spreadRadius: 2
                                          )
                                        ]
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: h*0.3,
                                              width: w*0.32,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
                                              ),
                                            ),
                                            Container(
                                              height: h*0.350,
                                              width: w*0.595,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                                              ),
                                              child: Column(


                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 35,top: 30),
                                                    child: Text('${ProductDetail[index]['productName']}',maxLines:1,style: TextStyle(
                                                        fontSize: 18,fontWeight: FontWeight.bold
                                                    ),),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 175),
                                                    child: Text('${ProductDetail[index]['size']}',maxLines:1,style: TextStyle(
                                                        fontSize: 15),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: h*0.02,
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 10),
                                                    child: Text('${ProductDetail[index]['description']}',maxLines:2,style: TextStyle(
                                                        fontSize: 15),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: h*0.03,
                                                  ),
                                                  Row(
                                                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(right: 20),
                                                        child: Text("${ProductDetail[index]['price']}",
                                                          style: TextStyle(
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.bold
                                                          ),),
                                                      ),
                                                      SizedBox(
                                                        width: w*0.140,
                                                      ),
                                                      Container(
                                                        height: h*0.050,
                                                        width: w*0.250,
                                                        decoration: BoxDecoration(
                                                            color: Colors.grey.shade400,
                                                            borderRadius: BorderRadius.circular(20)
                                                        ),
                                                        child: Center(
                                                          child: Text('Add item',style: TextStyle(
                                                            color: Colors.white,
                                                          ),),
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ]
                            )
                        );
                      },)


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
