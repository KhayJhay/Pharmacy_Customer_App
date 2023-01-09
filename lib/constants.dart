import 'package:flutter/material.dart';

class GlobalVars {
  static const kPrimaryColor = Color(0xFF5bc0be);
  static const kBigHeaderBold =
      TextStyle(fontSize: 24, fontFamily: 'Poppins-Bold');
  static const kNormHeaderBold =
      TextStyle(fontSize: 18, fontFamily: 'Poppins-Bold');
  static const kBigHeaderLight =
      TextStyle(fontSize: 24, fontFamily: 'Poppins-Light');
  static const kMediumHeaderBold =
      TextStyle(fontSize: 16, fontFamily: 'Poppins-Bold');
  static const kMediumHeaderLight =
      TextStyle(fontSize: 18, fontFamily: 'Poppins-Light');
  static const kSmallHeaderBold =
      TextStyle(fontSize: 14, fontFamily: 'Poppins-Bold', color: Colors.black);
  static const kPharmHeaderBold = TextStyle(
      fontSize: 16, fontFamily: 'Poppins-SemiBold', color: Colors.white);
  static const kDrugTitleBold =
      TextStyle(fontSize: 18, fontFamily: 'Poppins-Bold', color: Colors.white);
  static const kDrugTitleLight =
      TextStyle(fontSize: 18, fontFamily: 'Poppins-Light', color: Colors.white);
  static const kSmallHeaderLight =
      TextStyle(fontSize: 14, fontFamily: 'Poppins-Light', color: Colors.black);
  static const kSmallHeaderRegular = TextStyle(
      fontSize: 15, fontFamily: 'Poppins-Regular', color: Colors.black);
  static const kSmallDrugRegular = TextStyle(
      fontSize: 18, fontFamily: 'Poppins-Regular', color: Colors.black);
  static const kSmallHeaderSemi =
      TextStyle(fontSize: 9, fontFamily: 'Poppins-Bold', color: Colors.black);
}

const PharmacyList = [
  {
    "title": "OBM Pharmacy",
    "img":
        "https://equity-pharmacy.com/wp-content/uploads/2016/11/Slider-2.jpg",
    "loc": "East Legon"
  },
  {
    "title": "ECP Ltd Pharm",
    "img":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYD3OqjDhD2qkvfen7VIYft-3MZssuHzFAkA&usqp=CAU",
    "loc": "Accra - North K"
  },
  {
    "title": "Red Bird Pharmacy",
    "img":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQf-RxfzcW7o_g-JnV-5coq4jRuRuGsxLn6A&usqp=CAU",
    "loc": "Accra - Circle"
  },
];

const PharmaciesNearbyList = [
  {
    "title": "Letap Pharmacy",
    "img": "assets/pngs/log4.png",
    "loc": "Abeka Road"
  },
  {"title": "Ernest Chemist", "img": "assets/pngs/log3.png", "loc": "Dworwulu"},
  {
    "title": "Tobinco Pharmacy",
    "img": "assets/pngs/log2.png",
    "loc": "Accra - Circle"
  },
];

const PainReliefList = [
  {
    "drugName": "Flotac 75Mg Strip",
    "img": "assets/images/med1.jpg",
    "type": "Strip",
    "price": "GHC 120",
  },
  {
    "drugName": "Cataflam 50Mg Strip",
    "img": "assets/images/med2.jpg",
    "type": "Strip",
    "price": "GHC 191.50",
  },
  {
    "drugName": "Enafen 100mg/5ml",
    "img": "assets/images/med3.jpg",
    "type": "Strip",
    "price": "GHC 17.00",
  },
  {
    "drugName": "Diclo-Denk 100Mg",
    "img": "assets/images/med4.jpg",
    "type": "pack",
    "price": "GHC 74.00",
  },
  {
    "drugName": "Deep Heat Gel 35G",
    "img": "assets/images/med5.jpg",
    "type": "Tube",
    "price": "GHC 19.00",
  },
  {
    "drugName": "Enafen 100mg/5ml",
    "img": "assets/images/med3.jpg",
    "type": "Strip",
    "price": "GHC 17.00",
  },
  {
    "drugName": "Diclo-Denk 100Mg",
    "img": "assets/images/med4.jpg",
    "type": "pack",
    "price": "GHC 74.00",
  },
  {
    "drugName": "Deep Heat Gel 35G",
    "img": "assets/images/med5.jpg",
    "type": "Tube",
    "price": "GHC 19.00",
  },
];
