import 'package:flutter/material.dart';
import 'package:starbucks_app/Utils/GlobalList.dart';

class tabPage extends StatefulWidget {
  const tabPage({super.key});

  @override
  State<tabPage> createState() => _tabPageState();
}

class _tabPageState extends State<tabPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text("vvf"),
            ...List.generate(
              ProductDetail.length,
              (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: h * 0.280,
                  width: w * 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400,
                          offset: Offset(0, 2),
                          blurRadius: 2,
                          spreadRadius: 2),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(
                        // '${ save[selIndex][index]['productName']}',
                        '${ProductDetail[index]['productName']}',
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ...List.generate(
              ProductDetail.length,
              (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: h * 0.280,
                  width: w * 0.980,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400,
                          offset: Offset(0, 2),
                          blurRadius: 2,
                          spreadRadius: 2),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(
                        // '${ save[selIndex][index]['productName']}',
                        '${ProductDetail[index]['productName']}',
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
