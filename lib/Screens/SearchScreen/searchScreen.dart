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
                return ListTile(
                  title: Text(filteredList[index]['productName']),
                  // subtitle: Text(filteredList[index]['type']),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
