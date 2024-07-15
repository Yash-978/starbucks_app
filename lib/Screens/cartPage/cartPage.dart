import 'package:flutter/material.dart';

import 'package:starbucks_app/Utils/GlobalList.dart';

class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

TextEditingController txtDe = TextEditingController();

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0.1,
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back_ios)),
          centerTitle: true,
          title: Text('Cart'),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {
                  // Navigator.of(context).pushNamed('/favorite');
                },
                icon: Badge(
                  label: Text(cartList.length.toString()),
                  backgroundColor: Color(0xff529C86),
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
        body: Form(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.012,
                ),

                Container(
                  height: h * 0.1,
                  width: w * 0.999,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 2))
                  ]),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 200, top: 10),
                        child: Text(
                          "TAKE - AWAY FROM",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 250, top: 10),
                        child: Text(
                          "VIP Road Surat",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.030,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 120),
                  child: Text(
                    "MOBILE ORDER AND PAY",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: h * 0.030,
                ),

                ...List.generate(
                  cartList.length,
                  (index) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
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
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10)),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 60,
                                                    top: 20,
                                                    left: 10,
                                                    right: 10),
                                                child: Container(
                                                  width: w * 0.1,
                                                  height: h * 0.1,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      color: Colors.pink,
                                                      image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                            '${cartList[index]['image']}',
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
                                                  topRight: Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10))),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 35, top: 20),
                                                child: Text(
                                                  //   "${save[selIndex][index]['productName']}",
                                                  '${cartList[index]['productName']}',

                                                  maxLines: 1,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 190),
                                                child: Text(
                                                  // "${save[selIndex][index]['size']}",
                                                  '${cartList[index]['size']}',

                                                  maxLines: 1,
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                ),
                                              ),
                                              SizedBox(
                                                height: h * 0.0050,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10),
                                                child: Text(
                                                  //"${save[selIndex][index]['description']}",
                                                  '${cartList[index]['description']}',

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
                                                      '${cartList[index]['price']}',

                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: w * 0.10,
                                                  ),
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
                              SizedBox(
                                width: w * 0.03,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    qty = 0;
                                    amount = 0;
                                    total = 0;
                                    cartList.removeAt(index);
                                  });
                                },
                                child: Container(
                                  height: h * 0.22,
                                  width: w * 0.2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xff529C86),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: h * 0.0071,
                          ),
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: h * 0.030,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 180),
                  child: Text(
                    "+ Add More items",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff1e3932),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.015,
                ),
                Container(
                  height: h * 0.070,
                  width: w * 1,
                  decoration: BoxDecoration(color: Color(0xff539e87)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "✨",
                        style: TextStyle(fontSize: 30),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 50),
                        child: Text(
                          "Rewards and Offers",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      Stack(
                        children: [
                          Text(
                            "✨",
                            style: TextStyle(
                                fontSize: 40, color: Color(0xff6dab99)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 12),
                            child: Text(
                              "2 offers",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.align_horizontal_left_rounded,
                        color: Color(0xff1e3932),
                        size: 16,
                      ),
                      SizedBox(
                        width: w * 0.020,
                      ),
                      Text(
                        "ANY OTHER REQUEST?",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff1e3932)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.030,
                ),
                SizedBox(
                  width: w * 0.86,
                  child: TextFormField(
                    maxLines: 4,
                    controller: txtDe,
                    decoration: InputDecoration(
                        hintText:
                            "Have something specific in maid? Write it down and \n we'll let our baristas know.",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                SizedBox(
                  height: h * 0.050,
                ),
                // Container(
                //   height: h * 0.280,
                //   width: w * 1,
                //   decoration: BoxDecoration(
                //     color: Colors.grey.shade200,
                //   ),
                //   child: Padding(
                //     padding:
                //         const EdgeInsets.only(top: 20, right: 20, left: 20),
                //     child: Column(
                //       children: [
                //         Row(
                //           children: [
                //             Text(
                //               "BILL DETAIL",
                //               style: TextStyle(
                //                   fontSize: 16, fontWeight: FontWeight.bold),
                //             )
                //           ],
                //         ),
                //         SizedBox(
                //           height: h * 0.020,
                //         ),
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [Text("Sub Total"), Text("$amount")],
                //         ),
                //         SizedBox(
                //           height: h * 0.010,
                //         ),
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             Text("Discount"),
                //             Text("0.0"),
                //           ],
                //         ),
                //         SizedBox(
                //           height: h * 0.010,
                //         ),
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             Text("TAXES"),
                //             Text("18%"),
                //           ],
                //         ),
                //         SizedBox(
                //           height: h * 0.010,
                //         ),
                //         Divider(
                //           height: 2,
                //           indent: w * 0.001,
                //           color: Colors.grey,
                //         ),
                //         SizedBox(
                //           height: h * 0.010,
                //         ),
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             Text("Total"),
                //             Text("$total"),
                //           ],
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: h * 0.121,
                ),
                Stack(
                  children: [
                    Container(
                      height: h * 0.150,
                      width: w * 1,
                      color: Color(0xff539e87),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 65, left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              " ITEM ADDED",
                              style: TextStyle(color: Colors.grey.shade100),
                            ),
                            Text(
                              'Congratulations     Love From Barista',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Container(
                        height: h * 0.1,
                        width: w * 1,
                        color: Color(0xff1e3932),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 270, top: 10),
                              child: Text(
                                "Pay with",
                                style: TextStyle(color: Colors.grey.shade100),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 18, right: 15, bottom: 3),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "SELECT PAYMENT MODE",
                                    style: TextStyle(
                                        color: Colors.grey.shade100,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_up_rounded,
                                    color: Colors.grey.shade100,
                                    size: 26,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        for (int i = 0;
                                            i < cartList.length;
                                            i++) {
                                          qty = qty +
                                              cartList[i]['price'].toInt();
                                          amount = amount +
                                              cartList[i][
                                                  'price']; //*cartList[i]['member'];
                                        }
                                        total = (amount * 18) / 100 + amount;
                                      });
                                      Navigator.of(context).pushNamed('/check');
                                    },
                                    child: Container(
                                      height: h * 0.050,
                                      width: w * 0.350,
                                      decoration: BoxDecoration(
                                          color: Color(0xff4d917a),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                        child: Text(
                                          "Place Order",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// 0xff539e87
