import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:starbucks_app/Screens/drinkPage/drinkPage.dart';
import 'package:starbucks_app/Utils/ColorList.dart';
import 'package:starbucks_app/Utils/GlobalList.dart';

final PanelController _customizeController = PanelController();
final PanelController _addOnsController = PanelController();

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
        color: Color(0xff016140),
        // padding: EdgeInsets.only(top: 2,),
        child: Container(
          height: h * 0.1,
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
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                height: h * 0.6,
                width: w * 0.99 + 10,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(productDisplayList[0]['image'])),
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
                      height: h * 0.27,
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
                                      'assets/images/StarBucks_Logos/vegIcon.jpg'),
                                ),
                              ),
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
                              productDisplayList[0]['productName'],
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
                                  productDisplayList[0]['description'],
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
                              productDisplayList[0]['category'],
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
              GestureDetector(
                onTap: () {
                  _customizeController.open();
                },
                child: Container(
                  height: h * 0.07,
                  width: w * 1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: w * 0.06,
                          ),
                          Text(
                            'CUSTOMISE YOUR ORDER',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: w * 0.06,
                          ),
                          Text(
                            'SHORT,No Miik',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _addOnsController.open();
                },
                child: Container(
                  height: h * 0.07,
                  width: w * 1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: h * 0.015,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: w * 0.01,
                          ),
                          Text(
                            'AMP UP YOUR ORDER WITH ADDITIONAL TOPPINGS',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: w * 0.06,
                          ),
                          Text(
                            'No Whippped Topping',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: h * 0.07,
                width: w * 1,
                decoration: BoxDecoration(
                    color: Color(0xff007549),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'CURRENT ITEM',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'Caffe Americano',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.currency_rupee,color: Colors.white,size: 19,),
                        Text(
                          textAlign: TextAlign.center,
                          '241.50',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SlidingUpPanel(
            controller: _customizeController,
            panel: _buildCustomizePanel(),
            minHeight: 0,
            maxHeight: 400,
            backdropEnabled: true,
            borderRadius: BorderRadius.vertical(top: Radius.circular(18.0)),
          ),
          // Amp Up Your Order with Add-ons Panel
          SlidingUpPanel(
            controller: _addOnsController,
            panel: _buildAddOnsPanel(),
            minHeight: 0,
            maxHeight: 400,
            backdropEnabled: true,
            borderRadius: BorderRadius.vertical(top: Radius.circular(18.0)),
          ),
        ],
      ),
    );
  }
}

Widget _buildCustomizePanel() {
  return ListView(
    padding: EdgeInsets.all(16.0),
    children: [
      Container(),
      Text('Customize Your Order',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ListTile(
        title: Text('Size'),
        trailing: DropdownButton<String>(
          items: [
            DropdownMenuItem(value: 'Short', child: Text('Short')),
            DropdownMenuItem(value: 'Tall', child: Text('Tall')),
            DropdownMenuItem(value: 'Grande', child: Text('Grande')),
            DropdownMenuItem(value: 'Venti', child: Text('Venti')),
          ],
          onChanged: (value) {},
          hint: Text('Select Size'),
        ),
      ),
      ListTile(
        title: Text('Milk'),
        trailing: DropdownButton<String>(
          items: [
            DropdownMenuItem(value: 'No Milk', child: Text('No Milk')),
            DropdownMenuItem(
                value: 'Regular Milk', child: Text('Regular Milk')),
            DropdownMenuItem(value: 'Soy Milk', child: Text('Soy Milk')),
            DropdownMenuItem(value: 'Almond Milk', child: Text('Almond Milk')),
          ],
          onChanged: (value) {},
          hint: Text('Select Milk'),
        ),
      ),
    ],
  );
}

Widget _buildAddOnsPanel() {
  return ListView(
    padding: EdgeInsets.all(16.0),
    children: [
      Text('Amp Up Your Order with Add-ons',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ListTile(
        title: Text('Whipped Cream'),
        trailing: Switch(
          value: false,
          onChanged: (value) {},
        ),
      ),
      ListTile(
        title: Text('Extra Shot of Espresso'),
        trailing: Switch(
          value: false,
          onChanged: (value) {},
        ),
      ),
    ],
  );
}
