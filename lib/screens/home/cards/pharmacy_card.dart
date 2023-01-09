import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pharmacy_customer_app/constants.dart';

class Pharmacy_Card extends StatelessWidget {
  final data;
  const Pharmacy_Card({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  data["img"],
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 1,
                spreadRadius: 2,
              ),
            ]),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  height: 60,
                  width: 250,
                  decoration: const BoxDecoration(
                      color: GlobalVars.kPrimaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      )),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          data["title"],
                          style: GlobalVars.kPharmHeaderBold,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              IconlyLight.location,
                              color: Colors.black,
                              size: 15,
                            ),
                            Text(
                              data["loc"],
                              style: GlobalVars.kSmallHeaderLight,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ]));
  }
}
