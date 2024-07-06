import 'package:flutter/material.dart';


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