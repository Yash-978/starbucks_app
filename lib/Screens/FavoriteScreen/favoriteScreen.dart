/*
import 'package:flutter/material.dart';


class HeartAnimationWidget extends StatefulWidget {
  final Widget child;
  final bool isAnimating;
  final Duration duration;
  final VoidCallback? onEnd;

  const HeartAnimationWidget(
      {super.key,
      required this.child,
      required this.isAnimating,

      this.duration = const Duration(milliseconds: 150), this.onEnd});

  @override
  State<HeartAnimationWidget> createState() => _HeartAnimationWidgetState();
}

class _HeartAnimationWidgetState extends State<HeartAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scale;

  @override
  void initState() {
    super.initState();
    final halfDuration = widget.duration.inMilliseconds ~/ 2;
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: halfDuration));
    scale = Tween<double>(begin: 1, end: 1.2).animate(
        controller); */
/*idhar isko animate karneke mithod kio cal karna padhega jo ki .toanimate e */ /*

  }

  */
/*iske baad didUpdeteWidget har bar method ko fir se call karne me help karegi (anitime field changes thenthe changes will occur ) */ /*

  @override
  void didUpdateWidget(HeartAnimationWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isAnimating != oldWidget.isAnimating) {
      doAnimation();
    }
  }

  Future doAnimation() async {
    if(widget.isAnimating)
      {
        await controller.forward(); */
/*to start animation*/ /*

        await controller.reverse(); */
/*to end animation*/ /*

        await Future.delayed(Duration(milliseconds: 400));

        if(widget.onEnd!=null)
        {
          widget.onEnd!();
        }
      }
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(scale: scale);
  }
}
*/

import 'package:flutter/material.dart';
import 'package:starbucks_app/Screens/DetailScreeen/detailPage.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        scrolledUnderElevation: 0.1,
        title: Text(
          'Your Favorite',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: favoriteList.length,
        itemBuilder: (context, index) {
          return Column(
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
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.pink,
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            '${favoriteList[index]['image']}',
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
                                  '${favoriteList[index]['productName']}',

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
                                  '${favoriteList[index]['size']}',

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
                                  '${favoriteList[index]['description']}',

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
                                      '${favoriteList[index]['price']}',

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
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Container(
                                        height: h * 0.050,
                                        width: w * 0.250,
                                        decoration: BoxDecoration(
                                            color: Color(0xff007347),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Center(
                                          child: Text(
                                            'My favorite',
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
              ),
              SizedBox(
                height: h * 0.01,
              ),
            ],
          );

          // GestureDetector(
          //   onTap: () {
          //     setState(() {
          //       qty = 0;
          //       amount = 0;
          //       total = 0;
          //       cartList.removeAt(index);
          //     });
          //   },
          //   child: Container(
          //     height: h * 0.22,
          //     width: w * 0.2,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(20),
          //       color: Color(0xff529C86),
          //     ),
          //     child: Center(
          //       child: Icon(
          //         Icons.delete,
          //         color: Colors.white,
          //         size: 40,
          //       ),
          //     ),
          //   ),
          // ),
        },
      ),
    );
  }
}
