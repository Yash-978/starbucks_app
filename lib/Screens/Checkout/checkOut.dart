import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../Utils/GlobalList.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Your Bill'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: h * 0.8,
            width: w * 1,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "BILL DETAIL",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: h * 0.020,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Sub Total"), Text("$amount")],
                  ),
                  SizedBox(
                    height: h * 0.010,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Discount"),
                      Text("0.0"),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.010,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("TAXES"),
                      Text("18%"),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.010,
                  ),
                  Divider(
                    height: 2,
                    indent: w * 0.001,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: h * 0.010,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total"),
                      Text("$total"),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        showPaymentTimeDialog(context);
                      },
                      child: Text('Pay Now'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void showPaymentTimeDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
          backgroundColor: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              LottieBuilder.asset(
                'assets/likeButton/paymentComplete.json',
              ),
              Row(
                children: [
                  // SizedBox(width: 5,),
                  Text(
                    '     Payment \n    Successfull\n     Completed',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Spacer(),
            ],
          ));
    },
  );

  Future.delayed(
      Duration(
        seconds: 1,
        milliseconds: 500,
      ), () {
    Navigator.of(context).pop();
  });
}
