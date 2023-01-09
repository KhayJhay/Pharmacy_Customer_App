import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pharmacy_customer_app/constants.dart';
import 'package:pharmacy_customer_app/screens/allproduct.dart';
import 'package:pharmacy_customer_app/screens/favoritepage.dart';
import 'package:iconly/iconly.dart';
import 'package:pharmacy_customer_app/screens/home/cards/pharmCard.dart';
import 'package:pharmacy_customer_app/screens/home/cards/pharmacy_card.dart';
import 'package:pharmacy_customer_app/screens/home/categoryPages/painRelief_Screen.dart';
import 'package:pharmacy_customer_app/screens/notifications_screen.dart';
import 'package:pharmacy_customer_app/screens/pharmacy_chat.dart';
import 'package:pharmacy_customer_app/screens/userprofile.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../widgets/appBar_widget.dart';
import 'home/cards/drugCard.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavigationDrawerWidget(),
      /*
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black, size: 30),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Home",
            style: TextStyle(
                fontSize: 22,
                fontFamily: 'Poppins-SemiBold',
                color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Color(0xFF4586DD),
                size: 30,
              ),
            ),
          ],
        ),
        */
      body: Stack(
        children: [
        Stack(
          children: [
            Container(
              height: _height / 3.2,
              width: _width,
              decoration: BoxDecoration(
                color: GlobalVars.kPrimaryColor,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(50)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appBarWidget(
                    title: RichText(
                      text: const TextSpan(
                          text: "Hello, ",
                          style: GlobalVars.kSmallHeaderLight,
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Michael!',
                              style: GlobalVars.kSmallHeaderBold,
                            )
                          ]),
                    ),
                    icon: IconlyLight.filter,
                    widget: CircleAvatar(
                      radius: 12,
                      backgroundImage: AssetImage('assets/images/pic1.jpg'),
                    ),
                  ),
                  SearchMed_Widget(),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 25, left: 20, right: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 64,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset('assets/pngs/log1.png'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            height: 64,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/pngs/log2.png',
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: EdgeInsets.all(6),
                            height: 64,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset('assets/pngs/log3.png'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: EdgeInsets.all(6),
                            height: 64,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset('assets/pngs/log4.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: _width,
            height: _height / 1.454,
            decoration: BoxDecoration(
              color: GlobalVars.kPrimaryColor,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: _width,
            height: _height / 1.454,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: SingleChildScrollView(
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Category",
                          style: GlobalVars.kMediumHeaderBold,
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins-SemiBold',
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  const buildCategories(),
                  //condition area
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20, top: 20, bottom: 10),
                    child: Container(
                      height: 175,
                      width: _width * 0.95,
                      decoration: BoxDecoration(
                        color: GlobalVars.kPrimaryColor.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              spreadRadius: 3),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                    "We Get your drugs\nDelivered to you",
                                    style: GlobalVars.kMediumHeaderLight),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20.0, top: 5),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AllProduct()));
                                  },
                                  child: Container(
                                    height: 42,
                                    width: 165,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "Purchase Now",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Poppins-Regular',
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                              bottom: 10,
                            ),
                            child:
                                Lottie.asset('assets/lotties/fastdeliv.json'),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        Text(
                          "Top Pharmacies",
                          style: GlobalVars.kMediumHeaderBold,
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins-SemiBold',
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  buildTopPharm(context),
                ]),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  SizedBox buildTopPharm(BuildContext context) {
    return SizedBox(
      height: 180,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              child: PageView(
                controller: PageController(
                  initialPage: 2,
                  viewportFraction: 0.9,
                ),
                children: PharmacyList.map((value) {
                  return Pharmacy_Card(
                    data: value,
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

/*
  Container buildNewMed() {
    return Container(
      height: 240,
      padding: EdgeInsets.only(left: 12, top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Row(
              children: const <Widget>[
                Text(
                  "New Drugs",
                  style: GlobalVars.kMediumHeaderBold,
                ),
                Spacer(),
              ],
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Container(
              height: 170,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    child: Container(
                      width: 140,
                      margin: const EdgeInsets.only(right: 16, bottom: 8),
                      decoration: BoxDecoration(
                          color: const Color(0xFFE8F3F3),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 3,
                              spreadRadius: 2,
                            ),
                          ]),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  "assets/images/med1.jpg",
                                  fit: BoxFit.fill,
                                  width: 140,
                                  height: 60,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    "LUFAN FORTE",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Poppins-SemiBold'),
                                  ),
                                  Text(
                                    "GHC 10",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Poppins-SemiBold'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Container(
                      width: 140,
                      margin: EdgeInsets.only(right: 16, bottom: 8),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8F3F3),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 3,
                              spreadRadius: 2,
                            ),
                          ]),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  "assets/images/med2.jpg",
                                  fit: BoxFit.fill,
                                  width: 140,
                                  height: 60,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    "JANFAN-2",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Poppins-SemiBold'),
                                  ),
                                  Text(
                                    "GHC 50",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Poppins-SemiBold'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                  Container(
                    width: 140,
                    margin: EdgeInsets.only(right: 16, bottom: 8),
                    decoration: BoxDecoration(
                        color: Color(0xFFE8F3F3),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 3,
                            spreadRadius: 2,
                          ),
                        ]),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/images/med3.jpg",
                                fit: BoxFit.fill,
                                width: 140,
                                height: 60,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  "AMOXICILIN",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold'),
                                ),
                                Text(
                                  "GHC 20",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 140,
                    margin: EdgeInsets.only(right: 16, bottom: 8),
                    decoration: BoxDecoration(
                        color: Color(0xFFE8F3F3),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 3,
                            spreadRadius: 2,
                          ),
                        ]),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/images/med4.jpg",
                                fit: BoxFit.fill,
                                width: 140,
                                height: 60,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  "PRIMADOL",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold'),
                                ),
                                Text(
                                  "GHC 80",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 140,
                    margin: EdgeInsets.only(right: 16, bottom: 8),
                    decoration: BoxDecoration(
                        color: Color(0xFFE8F3F3),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 3,
                            spreadRadius: 2,
                          ),
                        ]),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/images/med5.jpg",
                                fit: BoxFit.fill,
                                width: 140,
                                height: 60,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  "CBO COMBO",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold'),
                                ),
                                Text(
                                  "GHC 220",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 140,
                    margin: const EdgeInsets.only(right: 16, bottom: 8),
                    decoration: BoxDecoration(
                        color: Color(0xFFE8F3F3),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 3,
                            spreadRadius: 2,
                          ),
                        ]),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/images/med6.jpg",
                                fit: BoxFit.fill,
                                width: 140,
                                height: 60,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  "LONART",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold'),
                                ),
                                Text(
                                  "GHC 120",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 140,
                    margin: EdgeInsets.only(right: 16, bottom: 8),
                    decoration: BoxDecoration(
                        color: Color(0xFFE8F3F3),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 3,
                            spreadRadius: 2,
                          ),
                        ]),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/images/med8.jpg",
                                fit: BoxFit.fill,
                                width: 140,
                                height: 60,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "CIPRO-P",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold'),
                                ),
                                Text(
                                  "GHC 20",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  Container buildPopularMeds() {
    return Container(
      height: 240,
      padding: EdgeInsets.only(left: 12, top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Row(
              children: const <Widget>[
                Text(
                  "Popular Meds",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins-SemiBold',
                    color: Colors.black,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Container(
              height: 170,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    child: Container(
                      width: 140,
                      margin: const EdgeInsets.only(right: 16, bottom: 8),
                      decoration: BoxDecoration(
                          color: const Color(0xFFE8F3F3),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 3,
                              spreadRadius: 2,
                            ),
                          ]),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  "assets/images/med1.jpg",
                                  fit: BoxFit.fill,
                                  width: 140,
                                  height: 60,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    "LUFAN FORTE",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Poppins-SemiBold'),
                                  ),
                                  Text(
                                    "GHC 10",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Poppins-SemiBold'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Container(
                      width: 140,
                      margin: EdgeInsets.only(right: 16, bottom: 8),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8F3F3),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 3,
                              spreadRadius: 2,
                            ),
                          ]),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  "assets/images/med2.jpg",
                                  fit: BoxFit.fill,
                                  width: 140,
                                  height: 60,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    "JANFAN-2",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Poppins-SemiBold'),
                                  ),
                                  Text(
                                    "GHC 50",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Poppins-SemiBold'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                  Container(
                    width: 140,
                    margin: const EdgeInsets.only(right: 16, bottom: 8),
                    decoration: BoxDecoration(
                        color: const Color(0xFFE8F3F3),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 3,
                            spreadRadius: 2,
                          ),
                        ]),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/images/med3.jpg",
                                fit: BoxFit.fill,
                                width: 140,
                                height: 60,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  "AMOXICILIN",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold'),
                                ),
                                Text(
                                  "GHC 20",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 140,
                    margin: EdgeInsets.only(right: 16, bottom: 8),
                    decoration: BoxDecoration(
                        color: Color(0xFFE8F3F3),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 3,
                            spreadRadius: 2,
                          ),
                        ]),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/images/med4.jpg",
                                fit: BoxFit.fill,
                                width: 140,
                                height: 60,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "PRIMADOL",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold'),
                                ),
                                Text(
                                  "GHC 80",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 140,
                    margin: EdgeInsets.only(right: 16, bottom: 8),
                    decoration: BoxDecoration(
                        color: Color(0xFFE8F3F3),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 3,
                            spreadRadius: 2,
                          ),
                        ]),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/images/med5.jpg",
                                fit: BoxFit.fill,
                                width: 140,
                                height: 60,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "CBO COMBO",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold'),
                                ),
                                Text(
                                  "GHC 220",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 140,
                    margin: EdgeInsets.only(right: 16, bottom: 8),
                    decoration: BoxDecoration(
                        color: Color(0xFFE8F3F3),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 3,
                            spreadRadius: 2,
                          ),
                        ]),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/images/med6.jpg",
                                fit: BoxFit.fill,
                                width: 140,
                                height: 60,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "LONART",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold'),
                                ),
                                Text(
                                  "GHC 120",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 140,
                    margin: EdgeInsets.only(right: 16, bottom: 8),
                    decoration: BoxDecoration(
                        color: Color(0xFFE8F3F3),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 3,
                            spreadRadius: 2,
                          ),
                        ]),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                "assets/images/med8.jpg",
                                fit: BoxFit.fill,
                                width: 140,
                                height: 60,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "CIPRO-P",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold'),
                                ),
                                Text(
                                  "GHC 20",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
*/

}

class buildCategories extends StatelessWidget {
  const buildCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                InkWell(
                  onTap: () => showPharmacyList(
                    context,
                    "Pain Relief Drugs",
                    Column(
                      children: PharmaciesNearbyList.map((value) {
                        return PharmCard(
                          data: value,
                          press: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryDetailScreen(
                                  cartTitle: "Pain Relief",
                                  pharmName: "Letap pharmacy",
                                  pharmWidget: Column(
                                    children: PainReliefList.map((value) {
                                      return DrugCard(
                                        data: value,
                                      );
                                    }).toList(),
                                  ),
                                ),
                              )),
                        );
                      }).toList(),
                    ),
                  ),
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: GlobalVars.kPrimaryColor,
                      image: const DecorationImage(
                        scale: 1.3,
                        image: AssetImage(
                          "assets/pngs/cat2.png",
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Pain  Reliefs",
                  style: GlobalVars.kSmallHeaderSemi,
                ),
              ],
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              children: [
                InkWell(
                  onTap: () => showPharmacyList(
                    context,
                    "Cosmetic Products",
                    Column(
                      children: PharmaciesNearbyList.map((value) {
                        return PharmCard(
                          data: value,
                        );
                      }).toList(),
                    ),
                  ),
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: GlobalVars.kPrimaryColor,
                      image: const DecorationImage(
                        scale: 1.5,
                        image: AssetImage(
                          "assets/pngs/cat4.png",
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Cosmetics",
                  style: GlobalVars.kSmallHeaderSemi,
                ),
              ],
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: GlobalVars.kPrimaryColor,
                    image: const DecorationImage(
                      scale: 1.5,
                      image: AssetImage(
                        "assets/pngs/cat6.png",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Feminine Hygiene",
                  style: GlobalVars.kSmallHeaderSemi,
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: GlobalVars.kPrimaryColor,
                    image: const DecorationImage(
                      scale: 1.5,
                      image: AssetImage(
                        "assets/pngs/cat7.png",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Handwashers",
                  style: GlobalVars.kSmallHeaderSemi,
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: GlobalVars.kPrimaryColor,
                    image: const DecorationImage(
                      scale: 1.5,
                      image: AssetImage(
                        "assets/pngs/cat8.png",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Ailment",
                  style: GlobalVars.kSmallHeaderSemi,
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: GlobalVars.kPrimaryColor,
                    image: const DecorationImage(
                      scale: 1.5,
                      image: AssetImage(
                        "assets/pngs/cat9.png",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Baby Care",
                  style: GlobalVars.kSmallHeaderSemi,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void showPharmacyList(BuildContext context, String title, Widget pharmList) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
        ),
        builder: (context) {
          return Container(
            height: _height * 2,
            width: _width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      title,
                      style: GlobalVars.kMediumHeaderBold,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Pharmacies near by",
                      style: GlobalVars.kSmallHeaderBold,
                    ),
                  ),
                  pharmList,
                ],
              ),
            ),
          );
        });
  }
}

class SearchMed_Widget extends StatelessWidget {
  const SearchMed_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        padding: EdgeInsets.all(8),
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
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
            hintText: "Search for drugs...",
            hintStyle: TextStyle(
                fontSize: 14, color: Colors.grey, fontFamily: 'Poppins-Light'),
          ),
        ),
      ),
    );
  }
}

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  _NavigationDrawerWidgetState createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFE8F3F3),
          borderRadius: BorderRadius.only(topRight: Radius.circular(32)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
          child: ListView(
            children: <Widget>[
              buildHeader(
                name: "Denzel Hayford",
                contact: "0240209723",
                icon: Icons.person,
                onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => UserProfile(),
                )),
              ),
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(
                text: 'Home',
                icon: Icons.home,
                onClicked: () => selectedItem(context, 0),
              ),
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(
                text: 'All Product',
                icon: Icons.shopping_cart_outlined,
                onClicked: () => selectedItem(context, 1),
              ),
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(
                text: 'Favorite',
                icon: Icons.favorite,
                onClicked: () => selectedItem(context, 2),
              ),
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(
                text: 'Notifications',
                icon: Icons.notifications,
                onClicked: () => selectedItem(context, 3),
              ),
              const SizedBox(
                height: 24,
              ),
              Divider(
                color: Colors.white,
              ),
              const SizedBox(
                height: 24,
              ),
              const SizedBox(
                height: 48,
              ),
              buildMenuItem(
                text: 'Order History',
                icon: Icons.history,
                onClicked: () => selectedItem(context, 4),
              ),
              const SizedBox(
                height: 48,
              ),
              buildMenuItem(
                  text: 'Settings',
                  icon: Icons.logout_outlined,
                  onClicked: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildHeader({
  required String name,
  required String contact,
  required IconData icon,
  VoidCallback? onClicked,
}) =>
    InkWell(
      onTap: onClicked,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.teal,
                child: Icon(
                  icon,
                  color: Color(0xFFE8F3F3),
                  size: 38,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    contact,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final color = Colors.black;
  final hoverColor = Colors.grey;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(
      text,
      style: TextStyle(color: color),
    ),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Home_Screen(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => AllProduct(),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => AllProduct(),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => FavoriteScreen(),
      ));
      break;
    case 4:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => NotificationScreen(),
      ));
      break;
  }
}
