import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pharmacy_customer_app/constants.dart';
import 'package:pharmacy_customer_app/screens/home/allproduct.dart';
import 'package:pharmacy_customer_app/screens/home/cards/pharmacy_card.dart';
import 'package:pharmacy_customer_app/screens/home/favoritepage.dart';
import 'package:pharmacy_customer_app/screens/home/notifications_screen.dart';
import 'package:pharmacy_customer_app/screens/home/pharmacy_chat.dart';
import 'package:pharmacy_customer_app/screens/home/userprofile.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    var size = MediaQuery.of(context).size;
    return Scaffold(
        drawer: NavigationDrawerWidget(),
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
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                //Search box for pharmacy
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search Pharmacy",
                        contentPadding: EdgeInsets.all(10),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Color(0xFF359D97),
                          size: 28,
                        ),
                        hintStyle: TextStyle(
                            color: Color(0xFF359D97),
                            fontFamily: 'Poppins-Light',
                            fontSize: 22),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF359D97),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            //condition area
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10, top: 20, bottom: 30),
              child: Container(
                height: 175,
                width: _width * 0.95,
                decoration: BoxDecoration(
                  color: Color(0xFFE8F3F3),
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
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            "How are you \nfeeling?",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins-SemiBold',
                                fontSize: 24),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 5),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Pharmacy_Chat_Screen()));
                            },
                            child: Container(
                              height: 42,
                              width: 165,
                              decoration: BoxDecoration(
                                color: Color(0xFF028F6F),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xFF54ABA2),
                                      blurRadius: 8,
                                      spreadRadius: 2),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Answer Here",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins-SemiBold',
                                      color: Colors.white),
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
                      child: Lottie.asset('assets/lotties/pharmacist.json'),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12.0,
                right: 12,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Top Pharmacies",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins-SemiBold',
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins-SemiBold',
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            ),
            buildTopPharm(context),
            buildNewMed(),
            buildPopularMeds(),
          ]),
        ));
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
              children: <Widget>[
                Text(
                  "New Meds",
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
          SizedBox(
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
                                children: <Widget>[
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
                                children: <Widget>[
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
                              children: <Widget>[
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
              children: <Widget>[
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
          SizedBox(
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
                                children: <Widget>[
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
                                children: <Widget>[
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
                              children: <Widget>[
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
