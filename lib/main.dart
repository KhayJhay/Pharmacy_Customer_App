import 'package:flutter/material.dart';
import 'package:pharmacy_customer_app/Introduction/onBoarding_page.dart';
import 'package:pharmacy_customer_app/screens/home/Home_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pharmacy Vendor App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnBoarding_Page(),
    );
  }
}
