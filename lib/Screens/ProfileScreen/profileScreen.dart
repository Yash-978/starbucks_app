import 'package:flutter/material.dart';
class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}
bool show=false;
bool order=false;
bool event=false;
bool pay=false;
bool mode=false;
bool add=false;
bool help=false;
bool news=false;
bool rate=false;
class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff1D3631),
      appBar: AppBar(
        backgroundColor: const Color(0xff1D3631),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
              size: 23,
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Account",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
        ),
        actions: const [
          Icon(
            Icons.notifications_none,
            color: Colors.white,
            size: 28,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 20),
            child: Icon(
              Icons.settings_outlined,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: h * 0.5,
              width: w * 0.99 + 10,
              decoration: const BoxDecoration(
                // color: Colors.white
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Stack(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 110,
                      ),
                      Transform.translate(
                        offset: const Offset(8, 8),
                        child: CircleAvatar(
                          backgroundColor: Colors.green.shade400,
                          radius: 102,
                        ),
                      ),
                      Transform.translate(
                          offset: const Offset(12, 12),
                          child: const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 98,
                          )),
                      Transform.translate(
                          offset: const Offset(32, 32),
                          child: CircleAvatar(
                            backgroundColor: Colors.red.shade100,
                            radius: 78,
                          )),
                      Transform.translate(
                        offset: const Offset(93, 198),
                        child: Container(
                          height: h * 0.042,
                          width: w * 0.09,
                          decoration: BoxDecoration(
                            color: Colors.green.shade400,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(
                            Icons.edit_outlined,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Ravi Narayan Behera",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Welcome Tier",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              height: h * 1.72,
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25)),
                  color: Colors.white),
              child: Column(
                children: [
                  const SizedBox(height: 35,),
                  ListTile(
                    leading: GestureDetector(
                      onDoubleTap: () {

                      },
                      child: Icon(
                        Icons.star_border_sharp,
                        size: 30,
                        color: Colors.green.shade400,
                      ),
                    ),
                    title: const Text(
                      "STARBUCKS REWARDS",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),

                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            show = !show;
                          });
                        },
                        icon: (show == false)
                            ? Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.green.shade400,
                          size: 30,
                        )
                            : Icon(
                          Icons.keyboard_arrow_up_sharp,
                          size: 30,
                        ),



                    ),
                  ),
                  (show == false)
                      ? SizedBox(
                    height: 0,
                  )
                      : Text(
                      'krypa'),


                  const Divider(
                    indent: 20,
                    endIndent: 22,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.local_drink,
                      size: 30,
                      color: Colors.green.shade400,
                    ),
                    title: const Text(
                      "ORDERS",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          order = !order;
                        });
                      },
                      icon: (order == false)
                          ? Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.green.shade400,
                        size: 30,
                      )
                          : Icon(
                        Icons.keyboard_arrow_up_sharp,
                        size: 30,
                      ),



                    ),
                  ),
                  (order == false)
                      ? SizedBox(
                    height: 0,
                  )
                      : Text(
                      'krypa'),
                  const Divider(
                    indent: 20,
                    endIndent: 22,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.calendar_month_outlined,
                      size: 30,
                      color: Colors.green.shade400,
                    ),
                    title: const Text(
                      "MY EVENTS",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          event = !event;
                        });
                      },
                      icon: (event == false)
                          ? Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.green.shade400,
                        size: 30,
                      )
                          : Icon(
                        Icons.keyboard_arrow_up_sharp,
                        size: 30,
                      ),



                    ),
                  ),
                  (event == false)
                      ? SizedBox(
                    height: 0,
                  )
                      : Text(
                      'krypa'),
                  const Divider(
                    indent: 20,
                    endIndent: 22,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.card_giftcard_outlined,
                      size: 30,
                      color: Colors.green.shade400,
                    ),
                    title: const Text(
                      "STARBUCKS PAY",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          pay = !pay;
                        });
                      },
                      icon: (pay == false)
                          ? Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.green.shade400,
                        size: 30,
                      )
                          : Icon(
                        Icons.keyboard_arrow_up_sharp,
                        size: 30,
                      ),



                    ),
                  ),
                  (pay == false)
                      ? SizedBox(
                    height: 0,
                  )
                      : Text(
                      'krypa'),
                  const Divider(
                    indent: 20,
                    endIndent: 22,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.credit_card_outlined,
                      size: 30,
                      color: Colors.green.shade400,
                    ),
                    title: const Text(
                      "OTHER PAYMENT MODES",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          mode = !mode;
                        });
                      },
                      icon: (mode == false)
                          ? Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.green.shade400,
                        size: 30,
                      )
                          : Icon(
                        Icons.keyboard_arrow_up_sharp,
                        size: 30,
                      ),



                    ),
                  ),
                  (mode == false)
                      ? SizedBox(
                    height: 0,
                  )
                      : Text(
                      'krypa'),
                  const Divider(
                    indent: 20,
                    endIndent: 22,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_on_outlined,
                      size: 30,
                      color: Colors.green.shade400,
                    ),
                    title: const Text(
                      "MY ADDRESS",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          add = !add;
                        });
                      },
                      icon: (add == false)
                          ? Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.green.shade400,
                        size: 30,
                      )
                          : Icon(
                        Icons.keyboard_arrow_up_sharp,
                        size: 30,
                      ),



                    ),
                  ),
                  (add == false)
                      ? SizedBox(
                    height: 0,
                  )
                      : Text(
                      'krypa'),
                  const Divider(
                    indent: 20,
                    endIndent: 22,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.spatial_audio_outlined,
                      size: 30,
                      color: Colors.green.shade400,
                    ),
                    title: const Text(
                      "HELP CENTER",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          help = !help;
                        });
                      },
                      icon: (help == false)
                          ? Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.green.shade400,
                        size: 30,
                      )
                          : Icon(
                        Icons.keyboard_arrow_up_sharp,
                        size: 30,
                      ),



                    ),
                  ),
                  (help == false)
                      ? SizedBox(
                    height: 0,
                  )
                      : Text(
                      'krypa'),
                  const Divider(
                    indent: 20,
                    endIndent: 22,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.bookmark_added_outlined,
                      size: 30,
                      color: Colors.green.shade400,
                    ),
                    title: const Text(
                      "SAVED ARTICLES AND NEWS",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          news = !news;
                        });
                      },
                      icon: (news == false)
                          ? Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.green.shade400,
                        size: 30,
                      )
                          : Icon(
                        Icons.keyboard_arrow_up_sharp,
                        size: 30,
                      ),



                    ),
                  ),
                  (news == false)
                      ? SizedBox(
                    height: 0,
                  )
                      : Text(
                      'krypa'),
                  const Divider(
                    indent: 20,
                    endIndent: 22,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.rate_review_outlined,
                      size: 30,
                      color: Colors.green.shade400,
                    ),
                    title: const Text(
                      "RATE US ON THE APP STORE",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          rate = !rate;
                        });
                      },
                      icon: (rate == false)
                          ? Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.green.shade400,
                        size: 30,
                      )
                          : Icon(
                        Icons.keyboard_arrow_up_sharp,
                        size: 30,
                      ),



                    ),
                  ),
                  (rate == false)
                      ? SizedBox(
                    height: 0,
                  )
                      : Text(
                      'krypa'),
                  const Divider(
                    indent: 20,
                    endIndent: 22,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.output,
                      size: 30,
                      color: Colors.red.shade600,
                    ),
                    title: Text(
                      "LOG OUT",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 17,color: Colors.red.shade600),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


