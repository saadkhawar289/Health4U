import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/selectpils2.dart';

class editmedication extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<editmedication> {
  @override
  initState() {
    super.initState();
  }

  bool Humalog = false;
  bool Lantus = false;
  bool Levemir = false;
  bool Novorapid = false;
  bool Insuman = false;
  bool Insulatard = false;

  Future<bool> addPatientMedicines(Map<String, dynamic> data) async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      DocumentReference ref =
          FirebaseFirestore.instance.collection("Patient").doc(user!.uid);
      ref.update(data);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return false;
      } else if (e.code == 'email-already-in-use') {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }

    return true;
  }

  // List<bool> value = [];
  List<String> listOMedicines = [];
  Map<String, dynamic> medicines = {'medicines': []};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(left: 10, top: 40),
              alignment: Alignment.centerLeft,
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 14),
            alignment: Alignment.centerLeft,
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Text(
              "What medication do you take?",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 14, top: 17),
            alignment: Alignment.centerLeft,
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                //  color: Colors.red,
                border: Border(
                    bottom: BorderSide(color: Colors.black26, width: 1))),
            child: Text(
              "Insulin",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height / 1.8,
              width: MediaQuery.of(context).size.width,
              //color: Colors.blue,
              child: Column(
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        //  color: Colors.red,
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.black26, width: 1))),
                    child: ListTile(
                      title: Text("Humalog",
                          style: TextStyle(
                            fontSize: 16.sp,
                          )),
                      trailing: Checkbox(
                        value: Humalog,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            Humalog = value!;
                            // isChecked1 = false;
                          });
                        },
                      ),
                      //trailing: Icon(Icons.where_to_vote),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        //  color: Colors.red,
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.black26, width: 1))),
                    child: ListTile(
                      title: Text("Lantus",
                          style: TextStyle(
                            fontSize: 16.sp,
                          )),
                      trailing: Checkbox(
                        value: Lantus,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            Lantus = value!;
                            // isChecked1 = false;
                          });
                        },
                      ),
                      //trailing: Icon(Icons.where_to_vote),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        //  color: Colors.red,
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.black26, width: 1))),
                    child: ListTile(
                      title: Text("Levemir",
                          style: TextStyle(
                            fontSize: 16.sp,
                          )),
                      trailing: Checkbox(
                        value: Levemir,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            Levemir = value!;
                            // isChecked1 = false;
                          });
                        },
                      ),
                      //trailing: Icon(Icons.where_to_vote),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        //  color: Colors.red,
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.black26, width: 1))),
                    child: ListTile(
                      title: Text("Novorapid",
                          style: TextStyle(
                            fontSize: 16.sp,
                          )),
                      trailing: Checkbox(
                        value: Novorapid,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            Novorapid = value!;
                            // isChecked1 = false;
                          });
                        },
                      ),
                      //trailing: Icon(Icons.where_to_vote),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        //  color: Colors.red,
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.black26, width: 1))),
                    child: ListTile(
                      title: Text("Insuman",
                          style: TextStyle(
                            fontSize: 16.sp,
                          )),
                      trailing: Checkbox(
                        value: Insuman,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            Insuman = value!;
                            // isChecked1 = false;
                          });
                        },
                      ),
                      //trailing: Icon(Icons.where_to_vote),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        //  color: Colors.red,
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.black26, width: 1))),
                    child: ListTile(
                      title: Text("Insulatard",
                          style: TextStyle(
                            fontSize: 16.sp,
                          )),
                      trailing: Checkbox(
                        value: Insulatard,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            Insulatard = value!;
                            // isChecked1 = false;
                          });
                        },
                      ),
                      //trailing: Icon(Icons.where_to_vote),
                    ),
                  ),
                  // Container(
                  //   height: 50,
                  //   decoration: BoxDecoration(
                  //       //  color: Colors.red,
                  //       border: Border(
                  //           bottom:
                  //               BorderSide(color: Colors.black26, width: 1))),
                  //   child: ListTile(
                  //     title: Text("Metformin",
                  //         style: TextStyle(
                  //           fontSize: 16.sp,
                  //         )),
                  //     trailing: Checkbox(
                  //       value: zinic7,
                  //       onChanged: (bool? value) {
                  //         // This is where we update the state when the checkbox is tapped
                  //         setState(() {
                  //           zinic7 = value!;
                  //           // isChecked1 = false;
                  //         });
                  //       },
                  //     ),
                  //     //trailing: Icon(Icons.where_to_vote),
                  //   ),
                  // ),
                  // Container(
                  //   height: 50,
                  //   decoration: BoxDecoration(
                  //       //  color: Colors.red,
                  //       border: Border(
                  //           bottom:
                  //               BorderSide(color: Colors.black26, width: 1))),
                  //   child: ListTile(
                  //     title: Text("Metformin",
                  //         style: TextStyle(
                  //           fontSize: 16.sp,
                  //         )),
                  //     trailing: Checkbox(
                  //       value: zinic8,
                  //       onChanged: (bool? value) {
                  //         // This is where we update the state when the checkbox is tapped
                  //         setState(() {
                  //           zinic8 = value!;
                  //           // isChecked1 = false;
                  //         });
                  //       },
                  //     ),
                  //     //trailing: Icon(Icons.where_to_vote),
                  //   ),
                  // ),
                ],
              )),

          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => selectpills2()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              height: 43,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Center(
                  child: Text("Next",
                      style: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600))),
              color: Colors.lightGreen,
            ),
          ),
          SizedBox(
            height: 30,
          )
          // Container(
          //     margin: EdgeInsets.only(top: 40, left: 100, right: 100),
          //     height: 5,
          //     width: 160,
          //     decoration: BoxDecoration(
          //         color: Colors.black,
          //         borderRadius: BorderRadius.all(Radius.circular(10)))),
        ],
      ),
    );
  }
}
