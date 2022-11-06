import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Drug_Purchase_Screen extends StatefulWidget {
  @override
  _Drug_Purchase_ScreenState createState() => _Drug_Purchase_ScreenState();
}

class _Drug_Purchase_ScreenState extends State<Drug_Purchase_Screen> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
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
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Column(
              children: <Widget>[
                Container(
                  height: _height * 0.5,
                  width: _width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/drugs.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: _height * 0.6,
              width: _width,
              decoration: BoxDecoration(
                  color: Color(0xFFE8F3F3),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5),
                  ]),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20.0,left: 20,right: 20),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Lufan Forte",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontFamily: 'Poppins-SemiBold'),
                              ),
                              Row(children: [
                                Icon(Icons.star, color: Colors.redAccent, size: 18,),
                                Text("5.4",style: TextStyle(fontSize: 20,color: Colors.grey, fontWeight: FontWeight.bold),)
                              ],)
                            ],),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:5.0,left: 20,),
                      child: Text(
                        "by Pharma Drugs",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontFamily: 'Poppins-Regular'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:40.0,left: 20,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ghc 20.00",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Poppins-Light'),
                          ),
                          Row(
                            children: [
                              Container(
                                  height: 28,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFE8F3F3),
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Colors.teal,style: BorderStyle.solid)
                                  ),
                                  child: Icon(Icons.remove)
                              ),
                              SizedBox(width: 20,),
                              Text("1",style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold),),
                              SizedBox(width: 20,),
                              Container(
                                  height: 28,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFE8F3F3),
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Colors.teal,style: BorderStyle.solid)
                                  ),
                                  child: Icon(Icons.add)
                              ),
                            ],)
                        ],),
                    ),
                    Padding(padding: EdgeInsets.only(top:40.0,left: 20,right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Course: 3 Weeks",style:TextStyle(
                              fontSize: 20,
                              fontFamily: 'Poppins-Light'),),
                          Text("Before eating 3x a Day",style:TextStyle(
                              fontSize: 20,
                              color: Colors.black45,
                              fontFamily: 'Poppins-Light'),),
                          Divider(
                            thickness: 2.5,
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top:15.0,left: 20,right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Take with water",style:TextStyle(
                              fontSize: 20,
                              fontFamily: 'Poppins-Light'),),
                          Text("No juice, No Alcohol",style:TextStyle(
                              fontSize: 20,
                              color: Colors.black45,
                              fontFamily: 'Poppins-Light'),),
                          Divider(
                            thickness: 2.5,
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top:15.0,left: 20,right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Description",style:TextStyle(
                              fontSize: 20,
                              fontFamily: 'Poppins-Bold'),),
                          Text("Something here about the medicine",style:TextStyle(
                              fontSize: 20,
                              color: Colors.black45,
                              fontFamily: 'Poppins-Light'),),
                          Text("Something here about the medicine",style:TextStyle(
                              fontSize: 20,
                              color: Colors.black45,
                              fontFamily: 'Poppins-Light'),),
                          Text("Something here about the medicine",style:TextStyle(
                              fontSize: 20,
                              color: Colors.black45,
                              fontFamily: 'Poppins-Light'),),
                          GestureDetector(
                            onTap: () {
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 18),
                                height: 60,
                                width: _width - 78,
                                decoration: BoxDecoration(
                                    color: Colors.teal,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          blurRadius: 15,
                                          spreadRadius: 5),
                                    ]),
                                alignment: Alignment.center,
                                child: Text(
                                  "ADD TO CART",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Poppins-Light',
                                      letterSpacing: 2),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}
