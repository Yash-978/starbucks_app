import 'package:flutter/material.dart';
import 'package:starbucks_app/Utils/ColorList.dart';

class Paymentscreen extends StatefulWidget {
  const Paymentscreen({super.key});

  @override
  State<Paymentscreen> createState() => _PaymentscreenState();
}

class _PaymentscreenState extends State<Paymentscreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Starbucks Pay',
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.add),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: h * 0.1,
            width: w * 1,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'View Strabucks Cards',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: w * 0.15,
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
          Stack(
            fit: StackFit.loose,
            children: [
              Container(
                height: h * 0.45,
                width: w * 1,
                decoration: BoxDecoration(
                  color: primaryColor,
                ),
              ),
              Positioned(
                // height: 100,
                top: 30,
                left: 15,
                child: Container(
                  height: h * 0.37,
                  width: w * 0.92,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green.shade900,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: h * 0.15,
                        width: w * 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                RichText(
                                    text: TextSpan(
                                  text: 'Aroma',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                      text: '|',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20),
                                    ),
                                    TextSpan(
                                      text: ' *7533',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 20),
                                    ),
                                  ],
                                )),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.currency_rupee,
                                      color: Colors.green.shade800,
                                      size: 30,
                                    ),
                                    Text(
                                      '0.0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                          color: Colors.green.shade800),
                                    ),
                                  ],
                                ),
                                // Text(
                                //   'Aroma',
                                //   style:
                                //       TextStyle(color: Colors.black, fontSize: 20),
                                // ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
