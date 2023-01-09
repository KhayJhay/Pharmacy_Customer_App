import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../constants.dart';

class PharmCard extends StatelessWidget {
  final data;
  final VoidCallback? press;
  const PharmCard({Key? key, this.data, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: InkWell(
        onTap: press,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          height: 100,
          width: _width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  spreadRadius: 0.2,
                  blurRadius: 1.1,
                )
              ],
              border: Border.all(color: Colors.grey.shade200, width: 1)),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border:
                        Border.all(color: GlobalVars.kPrimaryColor, width: 1)),
                child: Image.asset(data['img']),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          data['title'],
                          style: GlobalVars.kSmallHeaderRegular,
                        ),
                        SizedBox(
                          width: _width / 6,
                        ),
                        Container(
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                            color: GlobalVars.kPrimaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "4.5",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          IconlyLight.location,
                          size: 12,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          data['loc'],
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontFamily: 'Poppins-Regular'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          IconlyLight.time_circle,
                          size: 12,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          '10 mins',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Poppins-Regular'),
                        ),
                        SizedBox(
                          width: _width / 4.6,
                        ),
                        const Text(
                          'Recommended',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 13,
                              fontFamily: 'Poppins-SemiBold'),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
