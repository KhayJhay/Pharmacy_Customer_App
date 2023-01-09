import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Pharmacy_Chat_Screen extends StatefulWidget {
  @override
  _Pharmacy_Chat_ScreenState createState() => _Pharmacy_Chat_ScreenState();
}

class _Pharmacy_Chat_ScreenState extends State<Pharmacy_Chat_Screen> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
        title: Row(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: Color(0xFFE8F3F3),
              child: Icon(
                Icons.person_rounded,
                color: Colors.teal,
                size: 38,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pharmacist",
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Poppins-Light',
                        color: Colors.black),
                  ),
                  Text(
                    "last chat today at 4:11 PM",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins-Light',
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 20,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height/1.25,
                      child:
                      ListView(
                        children: [
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: 40,),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 54,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Color(0xFF359D97),),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(8),
                                                bottomLeft: Radius.circular(8),
                                                bottomRight: Radius.circular(8),

                                              )
                                          ),
                                          padding: const EdgeInsets.all(8),
                                          child: Column(
                                            children: [
                                              Text("Hi, Please I have a severe headache, please can you prescribe a drug for me",
                                                textAlign: TextAlign.left,
                                              )
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 4),
                                            child: Text("8:30",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF359D97),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0, right: 30),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 54,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Color(0xFF359D97),),
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(8),
                                                bottomRight: Radius.circular(8),
                                                bottomLeft: Radius.circular(8),

                                              )
                                          ),
                                          padding: const EdgeInsets.all(8),
                                          child: Column(
                                            children: [
                                              Text("Good afternoon, please I want to know if we having long vacation after this semester...?",
                                                textAlign: TextAlign.justify,
                                              )
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 4),
                                            child: Text("6:20",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF359D97),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: 40,),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 54,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Color(0xFF359D97),),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(8),
                                                bottomLeft: Radius.circular(8),
                                                bottomRight: Radius.circular(8),

                                              )
                                          ),
                                          padding: const EdgeInsets.all(8),
                                          child: Column(
                                            children: [
                                              Text("Hi, Please I have a severe headache, please can you prescribe a drug for me",
                                                textAlign: TextAlign.left,
                                              )
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 4),
                                            child: Text("8:30",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF359D97),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0, right: 30),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 54,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Color(0xFF359D97),),
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(8),
                                                bottomRight: Radius.circular(8),
                                                bottomLeft: Radius.circular(8),

                                              )
                                          ),
                                          padding: const EdgeInsets.all(8),
                                          child: Column(
                                            children: [
                                              Text("Good afternoon, please I want to know if we having long vacation after this semester...?",
                                                textAlign: TextAlign.justify,
                                              )
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 4),
                                            child: Text("6:20",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF359D97),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0, right: 30),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 54,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Color(0xFF359D97),),
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(8),
                                                bottomRight: Radius.circular(8),
                                                bottomLeft: Radius.circular(8),

                                              )
                                          ),
                                          padding: const EdgeInsets.all(8),
                                          child: Column(
                                            children: [
                                              Text("Good afternoon, please I want to know if we having long vacation after this semester...?",
                                                textAlign: TextAlign.justify,
                                              )
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 4),
                                            child: Text("6:20",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF359D97),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0, right: 30),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 54,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Color(0xFF359D97),),
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(8),
                                                bottomRight: Radius.circular(8),
                                                bottomLeft: Radius.circular(8),

                                              )
                                          ),
                                          padding: const EdgeInsets.all(8),
                                          child: Column(
                                            children: [
                                              Text("Good afternoon, please I want to know if we having long vacation after this semester...?",
                                                textAlign: TextAlign.justify,
                                              )
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 4),
                                            child: Text("6:20",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF359D97),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0, right: 30),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 54,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Color(0xFF359D97),),
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(8),
                                                bottomRight: Radius.circular(8),
                                                bottomLeft: Radius.circular(8),

                                              )
                                          ),
                                          padding: const EdgeInsets.all(8),
                                          child: Column(
                                            children: [
                                              Text("Good afternoon, please I want to know if we having long vacation after this semester...?",
                                                textAlign: TextAlign.justify,
                                              )
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 4),
                                            child: Text("6:20",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Color(0xFF359D97),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
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
                    ),
                    Divider(
                      color:Color(0xFF359D97),

                    ),
                    SizedBox(
                      height: 54,
                      child:
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: (){
                              },
                              icon: Icon(
                                Icons.share,
                              ),
                            ),
                            Expanded(child:
                            TextField(
                              controller: _textEditingController,
                              decoration: InputDecoration(hintText: "Message",
                                contentPadding: EdgeInsets.all(4),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF359D97),
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                ),
                              ),
                              onSubmitted: (result){
                                _textEditingController.clear();
                              },
                            )
                            ),
                            IconButton(
                              onPressed: (){
                              },
                              icon: Icon(
                                Icons.call,
                              ),
                            ),
                            IconButton(
                              onPressed: (){
                              },
                              icon: Icon(
                                Icons.mic,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}
