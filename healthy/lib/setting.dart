import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthy/aboutus.dart';
import 'package:healthy/contactus.dart';

import 'AcceptedCondition.dart';

class setting extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 130,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xFFF7F7F7),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Settings",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [Image.asset("assets/35438.png")],
                    ),
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.only(top: 60),
                //   height: 20,
                //   width: 30,
                //   decoration: BoxDecoration(
                //       //color: Colors.red,
                //       image: DecorationImage(
                //           image: AssetImage("assets/35438.png"))),
                // ),
//                 Container(
//                   margin: EdgeInsets.only(top: 60, right: 30),
//                   height: 20,
//                   width: 100,
// //                  color: Colors.red,
//                   child: Text(
//                     "Settings",
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   // decoration: BoxDecoration(
//                   //color: Colors.red,
//                   // image: DecorationImage(
//                   //     image: AssetImage("assets/35480.png"))),
//                 ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => aboutus()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "About us",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AcceptedCondition()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Term & Conditions",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => contactus()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Contact us",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
              // InkWell(
              //   onTap: () {
              //     showDialog(
              //         context: context,
              //         builder: (BuildContext context) {
              //           return AlertDialog(
              //               shape: RoundedRectangleBorder(
              //                   borderRadius:
              //                       BorderRadius.all(Radius.circular(15))),
              //               title: Text(
              //                 '       Are you sure want to \n                   Log Out?',
              //                 style: TextStyle(fontSize: 15),
              //               ),
              //               actions: [
              //                 Divider(
              //                   thickness: 1,
              //                 ),
              //                 Row(
              //                   children: [
              //                     InkWell(
              //                       onTap: () {
              //                         Navigator.push(
              //                             context,
              //                             MaterialPageRoute(
              //                                 builder: (context) => setting()));
              //                       },
              //                       child: Container(
              //                         //margin: EdgeInsets.only(left: 5),
              //                         height: 30,
              //                         width: 100,
              //                         //color: Colors.blue,
              //                         child: Center(
              //                           child: Text(
              //                             "Cancel",
              //                             style: TextStyle(
              //                                 color: Colors.red,
              //                                 fontWeight: FontWeight.bold,
              //                                 fontSize: 18),
              //                           ),
              //                         ),
              //                       ),
              //                     ),
              //                     Container(
              //                       margin:
              //                           EdgeInsets.only(left: 30, right: 30),
              //                       // height: 35,
              //                       // width: 3,
              //                       // color: Colors.black26,
              //                     ),
              //                     InkWell(
              //                       onTap: () {
              //                         Navigator.push(
              //                             context,
              //                             MaterialPageRoute(
              //                                 builder: (context) => home()));
              //                       },
              //                       child: Container(
              //                         //margin: EdgeInsets.only(left: 5),
              //                         height: 30,
              //                         width: 100,
              //                         //  color: Colors.blue,
              //                         child: Center(
              //                           child: Text(
              //                             "Yes",
              //                             style: TextStyle(
              //                                 color: Colors.blue,
              //                                 fontWeight: FontWeight.bold,
              //                                 fontSize: 18),
              //                           ),
              //                         ),
              //                       ),
              //                     ),
              //                   ],
              //                 )
              //
              //                 // RaisedButton(
              //                 //   onPressed: () {},
              //                 //   child: Text('No'),
              //                 // ),
              //                 // RaisedButton(
              //                 //   onPressed: () {},
              //                 //   child: Text('yes'),
              //                 // )
              //               ]);
              //         });
              //   },
              //   child: Padding(
              //     padding: const EdgeInsets.all(10.0),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Text(
              //           "Log off",
              //           style: TextStyle(fontWeight: FontWeight.bold),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
