import 'package:flutter/material.dart';

class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

TextEditingController txtDe=TextEditingController();
class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          centerTitle: true,
          title: Text('Cart'),backgroundColor: Colors.white,
        ),
        body: Form(
          child: SingleChildScrollView(scrollDirection: Axis.vertical,

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
                          style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
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
                Container(
                  height: h * 0.2,
                  width: w * 0.999,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 2))
                  ]),
                  // Container(
                  //   height: h*0.1,
                  //   width: w*0.3,
                  //   color: Colors.pink,
                  // ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 40, left: 20),
                            child: Container(
                              height: h * 0.110,
                              width: w * 0.240,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.pink),
                            ),
                          ),
                          SizedBox(
                            width: w * 0.030,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              height: h * 0.2,
                              width: w * 0.700,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: h * 0.040,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 50),
                                        child: Text(
                                          "Caffe Americano",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xff1e3932),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: h * 0.010,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 30),
                                        child: Text(
                                          "Short,no milk, whipped topping",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xff1e3932),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: h * 0.040,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 80),
                                        child: Text(
                                          "241.30",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff1e3932),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: h * 0.010,
                                      ),
                                      // Padding(
                                      //   padding:
                                      //       const EdgeInsets.only(top: 40, right: 50),
                                      //   child: Text(
                                      //     "Customise",
                                      //     style: TextStyle(
                                      //       fontSize: 16,
                                      //       color: Color(0xff1e3932),
                                      //     ),
                                      //   ),
                                      // )
                                    ],
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
                        padding: EdgeInsets.only(right:50),
                        child: Text(
                          "Rewards and Offers",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      Stack(
                        children: [
                          Text(
                            "✨",
                            style:
                            TextStyle(fontSize: 40, color: Color(0xff6dab99)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 12),
                            child: Text(
                              "2 offers",
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20,
                      top: 20),
                  child: Row(
                    children: [
                      Icon(Icons.align_horizontal_left_rounded,color:Color(0xff1e3932) ,size: 16,),
                      SizedBox(
                        width: w*0.020,
                      ),
                      Text("ANY OTHER REQUEST?",style: TextStyle(fontSize: 14,
                          color: Color(0xff1e3932)),)
                    ],
                  ),
                ),
                SizedBox(
                  height: h*0.030,
                ),
                SizedBox(
                  width: w*0.86,
                  child: TextFormField(
                    maxLines: 4,

                    controller: txtDe,
                    decoration: InputDecoration(


                        hintText: "Have something specific in maid? Write it down and \n we'll let our baristas know.",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),


                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                ),
                SizedBox(
                  height: h*0.050,
                ),

                Container(
                  height: h*0.280,
                  width: w*1,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20,
                        right: 20,left: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("BILL DETAIL",style: TextStyle(fontSize: 16,
                                fontWeight: FontWeight.bold),)
                          ],
                        ),
                        SizedBox(
                          height: h*0.020,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Sub Total"),
                            Text("230.00")
                          ],
                        ),
                        SizedBox(
                          height: h*0.010,
                        ),
                        Row(                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text("Discount"),
                            Text("0.0"),
                          ],
                        ),
                        SizedBox(
                          height: h*0.010,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text("TAXES"),
                            Text("11.50"),
                          ],
                        ),
                        SizedBox(
                          height: h*0.010,
                        ),
                        Divider(
                          height: 2,
                          indent: w*0.001,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: h*0.010,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text("Total"),
                            Text("242.00"),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: h*0.150,
                      width: w*1,
                      color: Color(0xff539e87),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 65,left: 20,right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("1 ITEM ADDED",style: TextStyle(color: Colors.grey.shade100),),
                            Text("242.00",style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold),)

                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Container(
                        height: h*0.1,
                        width: w*1,
                        color: Color(0xff1e3932),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 270,top: 10),
                              child: Text("Pay with",style: TextStyle(color: Colors.grey.shade100),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18,right: 15,bottom: 3),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text("SELECT PAYMENT MODE",style: TextStyle(color: Colors.grey.shade100,fontWeight: FontWeight.bold),),
                                  Icon(Icons.arrow_drop_up_rounded,color: Colors.grey.shade100,size: 26,),
                                  Container(
                                    height: h*0.050,
                                    width: w*0.350,
                                    decoration: BoxDecoration(
                                        color: Color(0xff4d917a),
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Place Order",style: TextStyle(
                                          fontWeight: FontWeight.bold
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