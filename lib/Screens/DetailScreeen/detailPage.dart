import 'package:flutter/material.dart';
import 'package:starbucks_app/Utils/ColorList.dart';

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

        child: Stack(
          children: [
            Container(
              height: h * 0.4,
              width: w * 0.86,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Text(
                'Add to cart',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ],
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
          'Caffe Americano',
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
      body: Container(
        height: h * 0.6,
        width: w * 0.99 + 10,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/Poster/poster(2).jpg')),
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
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
            SizedBox(height: h*0.35,),
            Text(
              'VEGETERIAN - 0 KCAL',
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Caffe Ammericano',
              style:
                  TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
                width: w * 0.86,
                child: Text(
                  'Rich in flavour, full-bodied expresso with hot water in true European style.',
                  style: TextStyle(color: Colors.white),
                )),
            Text(
              'BREWED COFFEE',
              style:
              TextStyle(color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}
