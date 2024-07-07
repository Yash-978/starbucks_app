import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:starbucks_app/Screens/drinkPage/drinkPage.dart';
import 'package:starbucks_app/Utils/ColorList.dart';
import 'package:starbucks_app/Utils/GlobalList.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomAppBar(
        color: primaryColor,
        // padding: EdgeInsets.only(top: 2,),
        child: Container(
          height: h * 0.4,
          width: w * 0.86,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.white),
          child: Text(
            'Add to cart',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
        title: Text(
          drinksList[selectProduct]['productName'],
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {

              },
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: SlidingUpPanel(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        panelBuilder: (sc) {
          return Column(
            children: [
              Text(
                'CUSTOMISE YOUR ORDER ',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              Container(
                height: h * 0.1,
                width: w * 0.99 + 10,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'AMP UP YOUR ORDER WITH ADDITTIONAL TOPPING',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
        body: Container(
          height: h * 0.6,
          width: w * 0.99 + 10,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(drinksList[selectProduct]['image'])),
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.fullscreen,
                      color: Colors.white,
                      size: 40,
                    )),
              ),
              SizedBox(
                height: h * 0.37,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: w * 0.035,
                      ),
                      Container(
                        height: h * 0.04,
                        width: w * 0.04,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/StarBucks_Logos/vegIcon.jpg'))),
                      ),
                      SizedBox(
                        width: w * 0.02,
                      ),
                      Text(
                        'VEGETERIAN - 0 KCAL',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: w * 0.035,
                      ),
                      Text(
                        drinksList[selectProduct]['productName'],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: w * 0.035,
                      ),
                      SizedBox(
                          width: w * 0.86,
                          child: Text(
                            drinksList[selectProduct]['description'],
                            style: TextStyle(color: Colors.white),
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: w * 0.035,
                      ),
                      Text(
                        drinksList[selectProduct]['category'],
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
