

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:starbucks_app/Utils/ColorList.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

TextEditingController txtEmail = TextEditingController();
TextEditingController txtPass = TextEditingController();
TextEditingController txtConfirmPass = TextEditingController();
TextEditingController txtMobile = TextEditingController();
TextEditingController txtFirstName = TextEditingController();
TextEditingController txtLastName = TextEditingController();
final signUpController = PageController();
bool isLoading = false;
bool isOTP = false;
bool isSignUp = false;
DateTime selectBirthDate = DateTime.now();

class _SignUpPageState extends State<SignUpPage> {
  @override
  void dispose() {
    super.dispose();
    signUpController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.white,
        ),
        title: Text(
          'Create an Account',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        backgroundColor: primaryColor,
      ),
      body: Container(
        height: double.infinity,
        width: w * 0.99 + 10,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),

          // border: Border.all(color: Colors.black),
        ),
        child: PageView(
          controller: signUpController,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login to Starbucks',
                    style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: h * 0.020,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: h * 0.0150,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 250,
                    ),
                    child: Text(
                      'EMAIL ID',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.005,
                  ),
                  buildAccountTextFormField(w,
                      controllerAccount: txtEmail,
                      hintTextAccount: 'Email',
                      AccountTextInputAction: TextInputAction.next,
                      AccountTextInputType: TextInputType.text),
                  SizedBox(
                    height: h * 0.020,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 160,
                    ),
                    child: Text(
                      'CREATE PASSWORD',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.020,
                  ),
                  buildAccountTextFormField(w,
                      controllerAccount: txtPass,
                      hintTextAccount: 'Enter Password',
                      AccountTextInputAction: TextInputAction.next,
                      AccountTextInputType: TextInputType.text),
                  SizedBox(
                    height: h * 0.020,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 150,
                    ),
                    child: Text(
                      'CONFIRM PASSWORD',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.020,
                  ),
                  buildAccountTextFormField(w,
                      controllerAccount: txtConfirmPass,
                      hintTextAccount: 'Re-enter Password',
                      AccountTextInputAction: TextInputAction.next,
                      AccountTextInputType: TextInputType.text),
                  SizedBox(
                    height: h * 0.020,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 180,
                    ),
                    child: Text(
                      'MOBILE NUMBER',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.020,
                  ),
                  buildAccountTextFormField(w,
                      controllerAccount: txtMobile,
                      hintTextAccount: 'Enter Mobile Number',
                      AccountTextInputAction: TextInputAction.done,
                      AccountTextInputType: TextInputType.phone),
                  SizedBox(
                    height: h * 0.020,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25, left: 25),
                    child: Text(
                      'We will send an OTP on this Mobile Number for authentication.',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.070,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        minimumSize: Size(w * 0.87, h * 0.06),
                        maximumSize: Size(w * 0.87, h * 0.06),
                        shape: StadiumBorder(),
                        textStyle: TextStyle(
                          fontSize: 24,
                        )),
                    onPressed: () {
                      if (isLoading) return;
                      setState(() {
                        isLoading = true;

                        signUpController.nextPage(
                            duration: Duration(seconds: 2),
                            curve: Curves.easeInOut);

                        // Navigator.of(context).pushNamed('/');
                      });
                    },
                    child: isLoading
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: w * 0.050,
                              ),
                              Text(
                                'Please wait...',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        : Text(
                            'Continue',
                            style: TextStyle(color: Colors.white),
                          ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: h * 0.040,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 190,
                    ),
                    child: Text(
                      'OTP was sent to ${txtMobile.text}',
                      style: TextStyle(color: Colors.black87, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.025,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25, left: 25),
                    child: Text(
                      'Please enter OTP you have received on your registered Mobile Number',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.07,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 240,
                    ),
                    child: Text(
                      'ENTER OTP ',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OTP_TextField(
                        h,
                        w,
                      ),
                      OTP_TextField(
                        h,
                        w,
                      ),
                      OTP_TextField(
                        h,
                        w,
                      ),
                      OTP_TextField(
                        h,
                        w,
                      ),
                      OTP_TextField(
                        h,
                        w,
                      ),
                      OTP_TextField(
                        h,
                        w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.020,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25, left: 25),
                    child: Text(
                      "Time remaining 0:12s                       Didn't receive OTP \nResend",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.070,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        minimumSize: Size(w * 0.87, h * 0.06),
                        maximumSize: Size(w * 0.87, h * 0.06),
                        shape: StadiumBorder(),
                        textStyle: TextStyle(
                          fontSize: 24,
                        )),
                    onPressed: () {
                      if (isOTP) return;
                      setState(() {
                        isOTP = true;

                        signUpController.nextPage(
                            duration: Duration(seconds: 2),
                            curve: Curves.easeInOut);

                        // Navigator.of(context).pushNamed('/');
                      });
                    },
                    child: isOTP
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: w * 0.050,
                              ),
                              Text(
                                'Please wait...',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        : Text(
                            'Continue',
                            style: TextStyle(color: Colors.white),
                          ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: h * 0.040,
                  ),
                  Text(
                    'ONE FINAL STEP, TELL US A LITTLE ABOUT YOU',
                    style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: h * 0.025,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: h * 0.0150,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 220,
                    ),
                    child: Text(
                      'FIRST NAME ',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.005,
                  ),
                  buildAccountTextFormField(w,
                      controllerAccount: txtFirstName,
                      hintTextAccount: 'Enter First Name',
                      AccountTextInputAction: TextInputAction.next,
                      AccountTextInputType: TextInputType.text),
                  SizedBox(
                    height: h * 0.020,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 230,
                    ),
                    child: Text(
                      'LAST NAME',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.020,
                  ),
                  buildAccountTextFormField(w,
                      controllerAccount: txtLastName,
                      hintTextAccount: 'Enter Last Name',
                      AccountTextInputAction: TextInputAction.next,
                      AccountTextInputType: TextInputType.text),
                  SizedBox(
                    height: h * 0.030,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 228,
                    ),
                    child: Text(
                      'BIRTH DATE',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.020,
                  ),
                  ListTile(
                    title: Text(
                        '   ${selectBirthDate.day}/${selectBirthDate.month}/${selectBirthDate.year}'),
                    trailing: IconButton(
                      onPressed: () async {
                        final DateTime? birthDateTime;
                        birthDateTime = await showDatePicker(
                            initialDate: selectBirthDate,
                            context: context,
                            firstDate: DateTime(2000),
                            lastDate: DateTime(3000));
                        if (birthDateTime != null) {
                          setState(() {
                            selectBirthDate = birthDateTime!;
                          });
                        }
                      },
                      icon: Icon(
                        Icons.date_range,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.020,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25, left: 25),
                    child: Text(
                      'Share your birthdate to receive a reward during that month. It can not be changed after submission',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.070,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        minimumSize: Size(w * 0.87, h * 0.06),
                        maximumSize: Size(w * 0.87, h * 0.06),
                        shape: StadiumBorder(),
                        textStyle: TextStyle(
                          fontSize: 24,
                        )),
                    onPressed: () {
                      if (isSignUp) return;
                      setState(() {
                        isSignUp = true;
                        Navigator.of(context).pushNamed('/greeting');
                      });
                    },
                    child: isSignUp
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: w * 0.050,
                              ),
                              Text(
                                'Please wait...',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        : Text(
                            'Get Started',
                            style: TextStyle(color: Colors.white),
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

  SizedBox OTP_TextField(double h, double w) {
    return SizedBox(
      height: h * 0.0650,
      width: w * 0.099 + 4,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.done,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        // controller: controllerAccount,
        // maxLines: ,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  SizedBox buildAccountTextFormField(double w,
      {required controllerAccount,
      required hintTextAccount,
      required AccountTextInputAction,
      required AccountTextInputType}) {
    return SizedBox(
      width: w * 0.85,
      child: TextFormField(
        keyboardType: AccountTextInputType,
        textInputAction: AccountTextInputAction,
        controller: controllerAccount,
        // maxLines: ,
        decoration: InputDecoration(
          hintText: hintTextAccount, //expHint_Text
          alignLabelWithHint: true,
        ),
      ),
    );
  }

  Widget buildAccountText({required Suggestion_Text}) => Padding(
        padding: const EdgeInsets.only(
          right: 120,
        ),
        child: Text(
          Suggestion_Text,
          style: TextStyle(color: Colors.grey, fontSize: 18),
        ),
      );

  // buildAccount() {
  //   return
  // }

  buildPersonalDetail() {
    return Column(
      children: [],
    );
  }

  build_Otp() {
    return Column(
      children: [],
    );
  }
}
