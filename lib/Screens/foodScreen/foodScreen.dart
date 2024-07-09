import 'package:flutter/material.dart';
import 'package:starbucks_app/Utils/GlobalList.dart';

class foodPage extends StatefulWidget {
  const foodPage({super.key});

  @override
  State<foodPage> createState() => _foodPageState();
}

class _foodPageState extends State<foodPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 270),
              child: Text(
                "Food",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            ...List.generate(
              FoodList.length,
              (index) {
                return Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, top: 10),
                            child: Column(children: [
                              GestureDetector(
                                onTap: () {
                                  productDisplayList.clear();
                                  productDisplayList.add(FoodList[index]);
                                  // selectProduct=index;
                                  Navigator.of(context).pushNamed('/detail');
                                },
                                child: Container(
                                  height: h * 0.260,
                                  width: w * 1,
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
                                          Stack(
                                            children: [
                                              Container(
                                                height: h * 0.260,
                                                width: w * 0.32,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  10),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10)),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 60,
                                                          top: 20,
                                                          left: 10,
                                                          right: 10),
                                                  child: Container(
                                                    width: w * 0.1,
                                                    height: h * 0.1,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        color: Colors.pink,
                                                        image: DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                              '${FoodList[index]['image']}',
                                                            ))),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            height: h * 0.260,
                                            width: w * 0.595,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10))),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 35, top: 20),
                                                  child: Text(
                                                    //   "${save[selIndex][index]['productName']}",
                                                    '${FoodList[index]['productName']}',

                                                    maxLines: 1,
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 190),
                                                  child: Text(
                                                    // "${save[selIndex][index]['size']}",
                                                    '${FoodList[index]['size']}',

                                                    maxLines: 1,
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: h * 0.0050,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10),
                                                  child: Text(
                                                    //"${save[selIndex][index]['description']}",
                                                    '${FoodList[index]['description']}',

                                                    maxLines: 2,
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: h * 0.03,
                                                ),
                                                Row(
                                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 20),
                                                      child: Text(
                                                        // "${save[selIndex][index]['price']}",
                                                        '${FoodList[index]['price']}',

                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: w * 0.10,
                                                    ),
                                                    GestureDetector(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                right: 10),
                                                        child: Container(
                                                          height: h * 0.050,
                                                          width: w * 0.250,
                                                          decoration: BoxDecoration(
                                                              color: Colors.grey
                                                                  .shade400,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                          child: Center(
                                                            child: Text(
                                                              'Add item',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
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
                              ),
                            ]))
                      ],
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
