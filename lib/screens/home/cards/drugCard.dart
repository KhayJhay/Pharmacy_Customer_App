import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pharmacy_customer_app/screens/drug_purchase_screen.dart';
import '../../../constants.dart';

class DrugCard extends StatelessWidget {
  final data;
  const DrugCard({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    void navigateToScreen(BuildContext context, PainReliefList) {
      switch (PainReliefList) {
        case 'Flotac 75Mg Strip':
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Drug_Purchase_Screen(
                  drugTitle: data['drugName'],
                  drugImage: Image.asset(data['img']),
                  drugPrice: data['price'],
                ),
              ));
          break;
        case 'Cataflam 50Mg Strip':
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Drug_Purchase_Screen(
                  drugTitle: data['drugName'],
                  drugImage: Image.asset(data['img']),
                  drugPrice: data['price'],
                ),
              ));
          break;
        case 'Enafen 100mg/5ml':
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Drug_Purchase_Screen(
                  drugTitle: data['drugName'],
                  drugImage: Image.asset(data['img']),
                  drugPrice: data['price'],
                ),
              ));
          break;
        default:
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Drug_Purchase_Screen(
                  drugTitle: data['drugName'],
                  drugImage: Image.asset(data['img']),
                  drugPrice: data['price'],
                ),
              ));
          break;
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: InkWell(
        onTap: () {
          navigateToScreen(context, PainReliefList);
        },
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border:
                        Border.all(color: GlobalVars.kPrimaryColor, width: 1)),
                child: Image.asset(data["img"]),
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
                          data["drugName"],
                          style: GlobalVars.kSmallHeaderRegular,
                        ),
                        SizedBox(
                          width: _width / 6.24,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      data["type"],
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontFamily: 'Poppins-Regular'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          data["price"],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Poppins-Regular'),
                        ),
                        SizedBox(
                          width: _width / 2.6,
                        ),
                        Icon(
                          IconlyBold.plus,
                          color: GlobalVars.kPrimaryColor,
                        )
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
