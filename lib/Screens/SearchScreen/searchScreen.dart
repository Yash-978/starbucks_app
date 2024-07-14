import 'package:flutter/material.dart';
import 'package:starbucks_app/Utils/GlobalList.dart';

import '../../Utils/ColorList.dart';

TextEditingController txtSearch = TextEditingController();

List combinedList = [];
List filteredList = [];

class Searchscreen extends StatefulWidget {
  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

@override
@override
class _SearchscreenState extends State<Searchscreen> {
  @override
  void initState() {
    combinedList.addAll(FoodList);
    combinedList.addAll(drinksList);
    combinedList.addAll(bestsellerListK);
    filteredList = combinedList;
    super.initState();
  }

  // void filterSearchResults()
  // {
  //   List dummySearchList = [];
  //   dummySearchList.addAll(combinedList);
  //
  // }
  void filterSearchResults(String query) {
    List dummySearchList = [];
    dummySearchList.addAll(combinedList);
    if (query.isNotEmpty) {
      List dummyListData = [];
      dummySearchList.forEach((item) {
        if (item['productName'].toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      });
      setState(() {
        filteredList.clear();
        filteredList.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        filteredList.clear();
        filteredList.addAll(combinedList);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: h * 0.12,
            width: w * 1,
            decoration: BoxDecoration(color: primaryColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: h * 0.01,
                ),
                Container(
                  height: h * 0.069,
                  width: w * 0.92,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    onChanged: (value) {
                      filterSearchResults(value);
                    },
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    textAlign: TextAlign.center,
                    cursorColor: primaryColor,
                    controller: txtSearch,
                    // maxLines: ,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: 'Looking for something specific?',
                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredList.length,
              itemBuilder: (context, index) {
                return Container(
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
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 60, top: 20, left: 10, right: 10),
                                  child: Container(
                                    width: w * 0.1,
                                    height: h * 0.1,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.pink,
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              '${filteredList[index]['image']}',
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
                                    bottomRight: Radius.circular(10))),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 35, top: 20),
                                  child: Text(
                                    //   "${save[selIndex][index]['productName']}",
                                    '${filteredList[index]['productName']}',

                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 190),
                                  child: Text(
                                    // "${save[selIndex][index]['size']}",
                                    '${filteredList[index]['size']}',

                                    maxLines: 1,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                SizedBox(
                                  height: h * 0.0050,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Text(
                                    //"${save[selIndex][index]['description']}",
                                    '${filteredList[index]['description']}',

                                    maxLines: 2,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                SizedBox(
                                  height: h * 0.03,
                                ),
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text(
                                        // "${save[selIndex][index]['price']}",
                                        '${filteredList[index]['price']}',

                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.10,
                                    ),
                                    GestureDetector(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: h * 0.050,
                                          width: w * 0.250,
                                          decoration: BoxDecoration(
                                              color: Color(0xff007347),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Center(
                                            child: Text(
                                              'Add item',
                                              style: TextStyle(
                                                color: Colors.white,
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
