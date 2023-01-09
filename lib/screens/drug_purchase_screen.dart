import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pharmacy_customer_app/constants.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class Drug_Purchase_Screen extends StatelessWidget {
  final String drugTitle;
  final Widget drugImage;
  final String drugPrice;

  const Drug_Purchase_Screen(
      {Key? key,
      required this.drugTitle,
      required this.drugImage,
      required this.drugPrice})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    String text = lorem(paragraphs: 1, words: 100);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: TextButton(
        onPressed: () {},
        child: Container(
          height: 55,
          width: _width / 1.2,
          decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              "Add to Cart",
              style: GlobalVars.kSmallDrugRegular,
            ),
          ),
        ),
      ),
      backgroundColor: GlobalVars.kPrimaryColor,
      body: Stack(children: [
        Stack(
          children: [
            Container(
              height: _height / 2.53,
              width: _width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(50)),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: (() {
                            Navigator.pop(context);
                          }),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black26,
                            ),
                            child: Icon(
                              IconlyLight.arrow_left_2,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: (() {}),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black26,
                            ),
                            child: Icon(
                              IconlyLight.buy,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    Center(
                      child: drugImage,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: _width,
            height: _height / 1.654,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: _width,
            height: _height / 1.654,
            decoration: BoxDecoration(
              color: GlobalVars.kPrimaryColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              drugTitle,
                              style: GlobalVars.kDrugTitleBold,
                            ),
                            Text(
                              drugPrice,
                              style: GlobalVars.kDrugTitleLight,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '$text',
                          style: GlobalVars.kSmallHeaderLight,
                        )
                      ]),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
