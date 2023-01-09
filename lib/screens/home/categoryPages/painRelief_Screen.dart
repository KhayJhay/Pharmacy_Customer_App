import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iconly/iconly.dart';
import 'package:pharmacy_customer_app/screens/home/cards/drugCard.dart';
import 'package:pharmacy_customer_app/widgets/appBar_widget.dart';

import '../../../constants.dart';
import '../../Home_Screen.dart';

class CategoryDetailScreen extends StatelessWidget {
  final String cartTitle;
  final String pharmName;
  final Widget? pharmWidget;
  const CategoryDetailScreen({
    Key? key,
    required this.cartTitle,
    required this.pharmName,
    this.pharmWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Container(
          height: _height / 5.2,
          width: _width,
          decoration: BoxDecoration(
            color: GlobalVars.kPrimaryColor,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appBarWidget(
                title: Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Text(
                    cartTitle,
                    style: GlobalVars.kPharmHeaderBold,
                  ),
                ),
                icon: IconlyLight.arrow_left_2,
                press: () {
                  Navigator.pop(context);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  padding: EdgeInsets.all(8),
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        IconlyLight.search,
                        color: Colors.grey,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: EdgeInsets.all(10),
                      hintText: "Search in $pharmName",
                      hintStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontFamily: 'Poppins-Light'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: _width,
            height: _height / 1.23,
            decoration: BoxDecoration(
              color: GlobalVars.kPrimaryColor,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: _width,
            height: _height / 1.23,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cartTitle,
                      style: GlobalVars.kNormHeaderBold,
                    ),
                    SizedBox(
                      child: pharmWidget,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
