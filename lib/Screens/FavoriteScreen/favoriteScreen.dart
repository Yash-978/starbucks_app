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
        title: Text('Your Favorite'),
      ),
      body: ListView.builder(
        itemCount: favoriteList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: h * 0.21,
                width: w * 1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: h * 0.08,
                      width: w * 0.14,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            favoriteList[index]['image'],
                          ),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    // SizedBox(
                    //   width: w * 0.030,
                    // ),
                    Container(
                      height: h * 0.2,
                      width: w * 0.8,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: h * 0.040,
                              ),
                              Text(
                                favoriteList[index]['productName'],
                                style: TextStyle(
                                  // fontSize: 16,
                                  color: Color(0xff1e3932),
                                ),
                              ),
                              SizedBox(
                                height: h * 0.010,
                              ),
                              Text(
                                favoriteList[index]['category'],
                                style: TextStyle(
                                  // fontSize: 10,
                                  color: Color(0xff1e3932),
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              SizedBox(
                                height: h * 0.040,
                              ),
                              Text(
                                favoriteList[index]['price'].toString(),
                                style: TextStyle(
                                  // fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff1e3932),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
