import 'package:flutter/material.dart';
import 'package:starbucks_app/Utils/GlobalList.dart';


class drinkPage extends StatefulWidget {
  const drinkPage({super.key});

  @override
  State<drinkPage> createState() => _drinkPageState();
}

class _drinkPageState extends State<drinkPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                "Browed Coffee",style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),
              ),
            ),
            ...List.generate(ProductDetail.length, (index) {
              return Column(
                children: [

                  Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 10),
                          child: Column(children: [
                            Container(
                              height: h * 0.260,
                              width: w * 1,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(10),
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
                                        height: h * 0.260,
                                        width: w * 0.32,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.only(
                                                topLeft: Radius
                                                    .circular(
                                                    10),
                                                bottomLeft: Radius
                                                    .circular(
                                                    10))),
                                      ),
                                      Container(
                                        height: h * 0.260,
                                        width: w * 0.595,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.only(
                                                topRight: Radius
                                                    .circular(
                                                    10),
                                                bottomRight: Radius
                                                    .circular(
                                                    10))),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                              const EdgeInsets
                                                  .only(
                                                  right: 35,
                                                  top: 20),
                                              child: Text(
                                                //   "${save[selIndex][index]['productName']}",
                                                '${ProductDetail[index]['productName']}',

                                                maxLines: 1,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                    FontWeight
                                                        .bold),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                              const EdgeInsets
                                                  .only(
                                                  right: 190),
                                              child: Text(
                                                // "${save[selIndex][index]['size']}",
                                                '${ProductDetail[index]['size']}',

                                                maxLines: 1,
                                                style: TextStyle(
                                                    fontSize: 18),
                                              ),
                                            ),
                                            SizedBox(
                                              height: h * 0.02,
                                            ),
                                            Padding(
                                              padding:
                                              const EdgeInsets
                                                  .only(
                                                  right: 10),
                                              child: Text(
                                                //"${save[selIndex][index]['description']}",
                                                '${ProductDetail[index]['description']}',

                                                maxLines: 2,
                                                style: TextStyle(
                                                    fontSize: 16),
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
                                                  const EdgeInsets
                                                      .only(
                                                      right:
                                                      20),
                                                  child: Text(
                                                    // "${save[selIndex][index]['price']}",
                                                    '${ProductDetail[index]['price']}',

                                                    style: TextStyle(
                                                        color: Colors
                                                            .black,
                                                        fontSize: 18,
                                                        fontWeight:
                                                        FontWeight
                                                            .bold),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: w * 0.140,
                                                ),
                                                GestureDetector(
                                                  child: Container(
                                                    height: h * 0.050,
                                                    width: w * 0.250,
                                                    decoration: BoxDecoration(
                                                        color: Colors
                                                            .grey
                                                            .shade400,
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            20)),
                                                    child: Center(
                                                      child: Text(
                                                        'Add item',
                                                        style:
                                                        TextStyle(
                                                          color: Colors
                                                              .white,
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
                          ]))
                    ],
                  ),
                ],
              );
            },),
            // ...List.generate(ProductDetail.length, (index) {
            //   return Column(
            //     children: [
            //
            //       Column(
            //         children: [
            //           Padding(
            //               padding: const EdgeInsets.only(
            //                   left: 15, right: 15, top: 10),
            //               child: Column(children: [
            //                 Container(
            //                   height: h * 0.260,
            //                   width: w * 1,
            //                   decoration: BoxDecoration(
            //                       borderRadius:
            //                       BorderRadius.circular(10),
            //                       color: Colors.white,
            //                       boxShadow: [
            //                         BoxShadow(
            //                             color: Colors.grey.shade400,
            //                             offset: Offset(0, 2),
            //                             blurRadius: 2,
            //                             spreadRadius: 2)
            //                       ]),
            //                   child: Column(
            //                     children: [
            //                       Row(
            //                         children: [
            //                           Container(
            //                             height: h * 0.260,
            //                             width: w * 0.32,
            //                             decoration: BoxDecoration(
            //                                 color: Colors.white,
            //                                 borderRadius:
            //                                 BorderRadius.only(
            //                                     topLeft: Radius
            //                                         .circular(
            //                                         10),
            //                                     bottomLeft: Radius
            //                                         .circular(
            //                                         10))),
            //                           ),
            //                           Container(
            //                             height: h * 0.260,
            //                             width: w * 0.595,
            //                             decoration: BoxDecoration(
            //                                 color: Colors.white,
            //                                 borderRadius:
            //                                 BorderRadius.only(
            //                                     topRight: Radius
            //                                         .circular(
            //                                         10),
            //                                     bottomRight: Radius
            //                                         .circular(
            //                                         10))),
            //                             child: Column(
            //                               children: [
            //                                 Padding(
            //                                   padding:
            //                                   const EdgeInsets
            //                                       .only(
            //                                       right: 35,
            //                                       top: 20),
            //                                   child: Text(
            //                                     //   "${save[selIndex][index]['productName']}",
            //                                     '${ProductDetail[index]['productName']}',
            //
            //                                     maxLines: 1,
            //                                     style: TextStyle(
            //                                         fontSize: 20,
            //                                         fontWeight:
            //                                         FontWeight
            //                                             .bold),
            //                                   ),
            //                                 ),
            //                                 Padding(
            //                                   padding:
            //                                   const EdgeInsets
            //                                       .only(
            //                                       right: 190),
            //                                   child: Text(
            //                                     // "${save[selIndex][index]['size']}",
            //                                     '${ProductDetail[index]['size']}',
            //
            //                                     maxLines: 1,
            //                                     style: TextStyle(
            //                                         fontSize: 18),
            //                                   ),
            //                                 ),
            //                                 SizedBox(
            //                                   height: h * 0.02,
            //                                 ),
            //                                 Padding(
            //                                   padding:
            //                                   const EdgeInsets
            //                                       .only(
            //                                       right: 10),
            //                                   child: Text(
            //                                     //"${save[selIndex][index]['description']}",
            //                                     '${ProductDetail[index]['description']}',
            //
            //                                     maxLines: 2,
            //                                     style: TextStyle(
            //                                         fontSize: 16),
            //                                   ),
            //                                 ),
            //                                 SizedBox(
            //                                   height: h * 0.03,
            //                                 ),
            //                                 Row(
            //                                   //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                                   children: [
            //                                     Padding(
            //                                       padding:
            //                                       const EdgeInsets
            //                                           .only(
            //                                           right:
            //                                           20),
            //                                       child: Text(
            //                                         // "${save[selIndex][index]['price']}",
            //                                         '${ProductDetail[index]['price']}',
            //
            //                                         style: TextStyle(
            //                                             color: Colors
            //                                                 .black,
            //                                             fontSize: 18,
            //                                             fontWeight:
            //                                             FontWeight
            //                                                 .bold),
            //                                       ),
            //                                     ),
            //                                     SizedBox(
            //                                       width: w * 0.140,
            //                                     ),
            //                                     Container(
            //                                       height: h * 0.050,
            //                                       width: w * 0.250,
            //                                       decoration: BoxDecoration(
            //                                           color: Colors
            //                                               .grey
            //                                               .shade400,
            //                                           borderRadius:
            //                                           BorderRadius
            //                                               .circular(
            //                                               20)),
            //                                       child: Center(
            //                                         child: Text(
            //                                           'Add item',
            //                                           style:
            //                                           TextStyle(
            //                                             color: Colors
            //                                                 .white,
            //                                           ),
            //                                         ),
            //                                       ),
            //                                     )
            //                                   ],
            //                                 )
            //                               ],
            //                             ),
            //                           )
            //                         ],
            //                       )
            //                     ],
            //                   ),
            //                 ),
            //               ]))
            //         ],
            //       ),
            //     ],
            //   );
            // },),



          ],
        ),
      ),
    );
  }
}
