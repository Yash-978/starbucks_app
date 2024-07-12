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
              child: SingleChildScrollView(
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
                        : Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                          "Joining the Starbucks Rewards™ is everyone's cup of coffee. Simply sign up and earn stars as you spend via your Starbucks card, Cash, Debit/Credit Card, or UPI. There are three levels in the program: Welcome, Green, Gold. For more details, click here : https://www.starbucks.in/rewards/reward-detail to check benefits that the member will receive at the respective levels."),
                        ),
                
                
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
                        : Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                          "Open the app, join Starbucks® Rewards, order and pay. We'll tell you how long until your order is ready and let you save your favourites for next time."),
                        ),
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
                        : Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                          "You will receive only one birthday reward in the month of your birthday as long as you have spent Rs 600 since you became a member. Any unused Birthday Reward will not be carried forward to the following yea"),
                        ),
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
                        : Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                          "Download the latest Starbucks India mobile app for iPhone® and Android™ on the Apple App store or Google Play store. If you are an existing user of the Starbucks® India app, check the App Store or Play Store to ensure the app has been updated to the latest version. Ensure location or GPS services are turned on to allow the app to display the eligible stores. 'To use Mobile Order & Pay, users must first register to become a Starbucks Rewards™ member along with a mobile number. If you’re an existing member, log into your account to start using Mobile Order & Pay. Existing members will be asked to provide their mobile number before placing an order if no mobile number is available on their SR account.'Click on the Order option at the bottom of the screen and you are ready to use Mobile Order & Pay."),
                        ),
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
                        : Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                          'Download the latest Starbucks India mobile app for iPhone® and Android™ on the Apple App store or Google Play store. If you are an existing user of the Starbucks® India app, check the App Store or Play Store to ensure the app has been updated to the latest version. Ensure location or GPS services are turned on to allow the app to display the eligible stores. "To use Mobile Order & Pay, users must first register to become a Starbucks Rewards™ member along with a mobile number. If you’re an existing member, log into your account to start using Mobile Order & Pay. Existing members will be asked to provide their mobile number before placing an order if no mobile number is available on their SR account." Click on the Order option at the bottom of the screen and you are ready to use Mobile Order & Pay.'),
                        ),
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
                        : Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                          "To join Starbucks Rewards™, you must register through WhatsApp or the Starbucks India app. This allows us to reward you with benefits and special offers using your contact details. Registration also provides balance protection if your card is lost or stolen. A registered card lets you manage your account online and on the Starbucks India app for convenience."),
                        ),
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
                      title: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: const Text(
                          "HELP CENTER -Reset account username and password.",
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                        ),
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
                        : Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                          "You can visit our site www.starbucks.in or use your Starbucks India mobile app and click on Get Help.Enter your EmailID or Mobile No and Date Of Birth and click on Reset Password.OTP will be sent to your registered mobile number and email id. you can use that to reset your password. Alternatively, call us at 18602660010 and we will help you get access to your account."),
                        ),
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
                      title: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: const Text(
                          "SAVED ARTICLES AND NEWS",
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                        ),
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
                        : Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                          "Once you reach the Gold level, you will be at that level for a full year from the date you qualified. Simply earn 25 additional stars before your anniversary date (the date you earned Gold) and you will continue to enjoy Gold level benefits for another year. If you do not earn the necessary stars you will move back to the Green level and your stars will be reset to 0."),
                        ),
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
                        : Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                          "It drives around 50% of its business. Generation-wise, 31-40% of millennials, 24% of Gen-X, and 14% of baby boomers use the Starbucks app. Thanks to the feature-rich, user-friendly app, active Starbucks reward members in the USA have increased by 13% to 18% yearly. And this number reached around 27.4 million in 2022."),
                        ),
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
            ),
          ],
        ),
      ),
    );
  }
}


