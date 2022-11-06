import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:pharmacy_customer_app/screens/home/drug_purchase_screen.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({Key? key}) : super(key: key);

  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Pharmar Drugs",
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
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search Your Meds",
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins-SemiBold",
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 30,
                          width: 55,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Center(
                            child: Text(
                              "All",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Poppins-Light",
                                  color: Color(0xFF708673)),
                            ),
                          ),
                        ),
                        Text(
                          "Asthma",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Poppins-Regular",
                              color: Colors.black),
                        ),
                        Text(
                          "Sickle Cell",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Poppins-Regular",
                              color: Colors.black),
                        ),
                        Text(
                          "Malaria",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Poppins-Regular",
                              color: Colors.black),
                        ),
                        Text(
                          "Headache",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Poppins-Regular",
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 40.0, right: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 45,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    "Price Filter",
                                    style:
                                    TextStyle(fontSize: 18, color: Colors.grey),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      CupertinoIcons.chevron_down,
                                      color: Colors.grey,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 45,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    "Other Filter",
                                    style:
                                    TextStyle(fontSize: 18, color: Colors.grey),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      CupertinoIcons.chevron_down,
                                      color: Colors.grey,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
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
                                        padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                              Text(
                                                "Lufan",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Poppin-Bold'),
                                              ),
                                              Row(children: [
                                                Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                              ],)
                                            ],),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    "Ghc 120",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Poppin-Bold'),
                                                  ),
                                                  Text(
                                                    "Ghc 120.00",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        decoration: TextDecoration.lineThrough,
                                                        color: Colors.grey,
                                                        fontFamily: 'Poppin-Bold'),
                                                  ),
                                                ],),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Drug_Purchase_Screen()));
                              },
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
                                        padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: <Widget>[
                                        Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Janfan-2",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Poppin-Bold'),
                                            ),
                                            Row(children: [
                                              Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                              Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                            ],)
                                          ],),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Ghc 50",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'Poppin-Bold'),
                                              ),
                                              Text(
                                                "Ghc 50.00",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    decoration: TextDecoration.lineThrough,
                                                    color: Colors.grey,
                                                    fontFamily: 'Poppin-Bold'),
                                              ),
                                            ],),
                                        )
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
                                    child:  Padding(
                                      padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Amoxicilin",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Poppin-Bold'),
                                              ),
                                              Row(children: [
                                                Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                              ],)
                                            ],),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "Ghc 20",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Poppin-Bold'),
                                                ),
                                                Text(
                                                  "Ghc 20.00",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      decoration: TextDecoration.lineThrough,
                                                      color: Colors.grey,
                                                      fontFamily: 'Poppin-Bold'),
                                                ),
                                              ],),
                                          )
                                        ],
                                      ),
                                    )
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
                                    child:  Padding(
                                      padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Primadol",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Poppin-Bold'),
                                              ),
                                              Row(children: [
                                                Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                              ],)
                                            ],),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "Ghc 80",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Poppin-Bold'),
                                                ),
                                                Text(
                                                  "Ghc 80.00",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      decoration: TextDecoration.lineThrough,
                                                      color: Colors.grey,
                                                      fontFamily: 'Poppin-Bold'),
                                                ),
                                              ],),
                                          )
                                        ],
                                      ),
                                    )
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
                                    child:  Padding(
                                      padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Cbo-Combo",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Poppin-Bold'),
                                              ),
                                              Row(children: [
                                                Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                              ],)
                                            ],),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "Ghc 220",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Poppin-Bold'),
                                                ),
                                                Text(
                                                  "Ghc 220",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      decoration: TextDecoration.lineThrough,
                                                      color: Colors.grey,
                                                      fontFamily: 'Poppin-Bold'),
                                                ),
                                              ],),
                                          )
                                        ],
                                      ),
                                    )
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
                                    child:  Padding(
                                      padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Lonart",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Poppin-Bold'),
                                              ),
                                              Row(children: [
                                                Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                              ],)
                                            ],),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "Ghc 120",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Poppin-Bold'),
                                                ),
                                                Text(
                                                  "Ghc 120.00",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      decoration: TextDecoration.lineThrough,
                                                      color: Colors.grey,
                                                      fontFamily: 'Poppin-Bold'),
                                                ),
                                              ],),
                                          )
                                        ],
                                      ),
                                    )
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
                                    child:  Padding(
                                      padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Cipro-P",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Poppin-Bold'),
                                              ),
                                              Row(children: [
                                                Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                              ],)
                                            ],),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "Ghc 20",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Poppin-Bold'),
                                                ),
                                                Text(
                                                  "Ghc 20.00",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      decoration: TextDecoration.lineThrough,
                                                      color: Colors.grey,
                                                      fontFamily: 'Poppin-Bold'),
                                                ),
                                              ],),
                                          )
                                        ],
                                      ),
                                    )
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
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
                                  "New Products",
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
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Lufan",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 120",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 120.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
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
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Janfan-2",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 50",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 50.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
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
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Amoxicilin",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 20",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 20.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
                                                ],
                                              ),
                                            )
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
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Primadol",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 80",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 80.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
                                                ],
                                              ),
                                            )
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
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Cbo-Combo",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 220",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 220",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
                                                ],
                                              ),
                                            )
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
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Lonart",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 120",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 120.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
                                                ],
                                              ),
                                            )
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
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Cipro-P",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 20",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 20.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
                                                ],
                                              ),
                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 170,
                      padding: EdgeInsets.only(left: 12,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
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
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Lufan",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 120",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 120.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
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
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Janfan-2",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 50",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 50.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
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
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Amoxicilin",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 20",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 20.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
                                                ],
                                              ),
                                            )
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
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Primadol",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 80",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 80.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
                                                ],
                                              ),
                                            )
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
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Cbo-Combo",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 220",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 220",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
                                                ],
                                              ),
                                            )
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
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Lonart",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 120",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 120.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
                                                ],
                                              ),
                                            )
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
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Cipro-P",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 20",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 20.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
                                                ],
                                              ),
                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 170,
                      padding: EdgeInsets.only(left: 12, ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
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
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Lufan",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 120",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 120.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
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
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Janfan-2",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 50",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 50.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
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
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Amoxicilin",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 20",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 20.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
                                                ],
                                              ),
                                            )
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
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Primadol",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 80",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 80.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
                                                ],
                                              ),
                                            )
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
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Cbo-Combo",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 220",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 220",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
                                                ],
                                              ),
                                            )
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
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Lonart",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 120",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 120.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
                                                ],
                                              ),
                                            )
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
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Cipro-P",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 20",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 20.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
                                                ],
                                              ),
                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 170,
                      padding: EdgeInsets.only(left: 12,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

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
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Lufan",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 120",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 120.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
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
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Janfan-2",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 50",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 50.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
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
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Amoxicilin",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 20",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 20.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
                                                ],
                                              ),
                                            )
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
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Primadol",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 80",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 80.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
                                                ],
                                              ),
                                            )
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
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Cbo-Combo",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 220",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 220",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
                                                ],
                                              ),
                                            )
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
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Lonart",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 120",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 120.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
                                                ],
                                              ),
                                            )
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
                                            child:  Padding(
                                              padding: const EdgeInsets.only(top:20.0, left: 8, right: 8),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        "Cipro-P",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily: 'Poppin-Bold'),
                                                      ),
                                                      Row(children: [
                                                        Icon(Icons.star, color: Colors.redAccent, size: 14,),
                                                        Text("5.4",style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold),)
                                                      ],)
                                                    ],),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Ghc 20",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                        Text(
                                                          "Ghc 20.00",
                                                          style: TextStyle(
                                                              fontSize: 12,
                                                              decoration: TextDecoration.lineThrough,
                                                              color: Colors.grey,
                                                              fontFamily: 'Poppin-Bold'),
                                                        ),
                                                      ],),
                                                  )
                                                ],
                                              ),
                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ));
  }
}
