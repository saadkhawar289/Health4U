import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/healthInfo.dart';

import 'forntscreen.dart';

class SugeryInformation extends StatefulWidget {
  final String? source;
  SugeryInformation({this.source});
  @override
  _State createState() => _State();
}

class _State extends State<SugeryInformation> {
  void initState() {
    if (widget.source == 'edit') {
      loadSurgeryInfo();
    } else {}
    super.initState();
  }

  final scaffoldKey =
      GlobalKey<ScaffoldState>(debugLabel: "scaffold-get-phone");
  _showSnackBar(String text) {
    final snackBar = SnackBar(
      content: Text('$text'),
    );
    scaffoldKey.currentState!.showSnackBar(snackBar);
  }

  Map<String, dynamic> formValues = {
    'surgeryName': null,
    'postCode': null,
    'doctor': null,
    'uID': null,
    'appConnection': null
  };
  Future<bool> SaveSurgeryInfo(Map<String, dynamic> data) async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      formValues['uID'] = user!.uid;
      await FirebaseFirestore.instance
          .collection("SurgeryInfo")
          .doc(user.uid)
          .set(data);
    } catch (e) {
      _showSnackBar(e.toString());
      return false;
    }
    return true;
  }

  Future<bool> loadSurgeryInfo() async {
    try {
      print('loading===================================');
      User? user = FirebaseAuth.instance.currentUser;
      formValues['uID'] = user!.uid;
      await FirebaseFirestore.instance
          .collection("SurgeryInfo")
          .doc(user.uid)
          .get()
          .then((data) => {
                _controllerName.text = data['surgeryName'],
                _controllercode.text = data['postCode'],
                _controllerPhysician.text = data['doctor'],
              });
      print('loading++++++++++++++++++++++++++++');

      setState(() {});
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        return false;
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }

    return true;
  }

  int _value = 0;
  bool isChecked = false;
  bool isChecked1 = false;
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerPhysician = TextEditingController();
  TextEditingController _controllercode = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 3,
        width: MediaQuery.of(context).size.width * 3,
        // color: Colors.red,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Icon(Icons.west_sharp),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: widget.source == 'edit'
                      ? Container()
                      : Text(
                          '',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                ),
              ],
            ),
            Container(
              height: 30,
              width: 40,
              //color: Colors.red,
              margin: EdgeInsets.only(left: 15, top: 40, bottom: 20),
              child: Row(
                children: [
                  Text(
                    'Surgery Information',
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Surgery Name',
                      contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                      border: InputBorder.none,
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r"[a-z,A-Z, ]"))
                    ],
                    controller: _controllerName,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter the Surgery Name";
                      }
                    },
                    onSaved: (value) {
                      formValues['surgeryName'] = value;
                    },
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'General Physician',
                      contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                      border: InputBorder.none,
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z, ]"))
                    ],
                    controller: _controllerPhysician,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter the Physician";
                      }
                    },
                    onSaved: (value) {
                      formValues['doctor'] = value;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Surgery Post code',
                      contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                      border: InputBorder.none,
                    ),
                    controller: _controllercode,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(8),
                      FilteringTextInputFormatter.allow(RegExp("[0-9,a-z,A-Z]"))
                    ],
                    validator: (val) {
                      if (val!.isEmpty || val.length > 8 || val.length < 6) {
                        return "Please enter code";
                      }
                    },
                    onSaved: (value) {
                      formValues['postCode'] = value;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(
                  //     height: 55,
                  //     width: MediaQuery.of(context).size.width / 1.1,
                  //
                  //     // color: Colors.cyanAccent,
                  //     child: Column(
                  //       children: [
                  //         Padding(
                  //           padding: const EdgeInsets.only(top: 10.0),
                  //           child: Text(
                  //             "Do you want to connect this app with your Surgery/NHS?",
                  //             maxLines: 2,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 10, right: 10),
                  //   child: Divider(
                  //     thickness: 2,
                  //   ),
                  // ),
                  // Row(
                  //   children: [
                  //     Checkbox(
                  //       value: isChecked,
                  //       onChanged: (bool? value) {
                  //         // This is where we update the state when the checkbox is tapped
                  //         setState(() {
                  //           isChecked = value!;
                  //           formValues['appConnection'] = isChecked;
                  //           isChecked1 = false;
                  //         });
                  //       },
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.all(0),
                  //       child: Container(
                  //         height: 40,
                  //         //color: Colors.blue,
                  //         child: InkWell(
                  //             onTap: () {
                  //               // Navigator.push(
                  //               //     context,
                  //               //     MaterialPageRoute(
                  //               //         builder: (context) =>
                  //               //             AcceptedCondition()));
                  //             },
                  //             child: Center(child: Text('Yes'))),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Row(
                  //   children: [
                  //     Checkbox(
                  //       value: isChecked1,
                  //       onChanged: (bool? value) {
                  //         // This is where we update the state when the checkbox is tapped
                  //         setState(() {
                  //           isChecked1 = value!;
                  //           formValues['appConnection'] = false;
                  //
                  //           isChecked = false;
                  //         });
                  //       },
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.all(0),
                  //       child: Container(
                  //         height: 40,
                  //         //  color: Colors.red,
                  //         //width: 200,
                  //         child: InkWell(
                  //             onTap: () {}, child: Center(child: Text('No'))),
                  //       ),
                  //     )
                  //   ],
                  // ),
                  InkWell(
                    onTap: () {
                      if (!_formKey.currentState!.validate()) {
                        return;
                      }
                      _formKey.currentState!.save();
                      SaveSurgeryInfo(formValues).then((value) => {
                            if (value)
                              {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => forntscreen()))
                              }
                            else
                              {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text('something went wrong '),
                                        content: Text('please try again'),
                                        actions: <Widget>[
                                          FlatButton(
                                            onPressed: () => {
                                              Navigator.of(context).pop(),
                                            },
                                            child: Text('Okay'),
                                          )
                                        ],
                                      );
                                    })
                              }
                          });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 43,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Center(
                          child: Text("Next",
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600,color: Colors.white),)),
                      color: Colors.lightGreen,
                    ),
                  ),
                  // Container(
                  //     margin: EdgeInsets.only(top: 20),
                  //     height: 5,
                  //     width: 160,
                  //     decoration: BoxDecoration(
                  //         color: Colors.black,
                  //         borderRadius: BorderRadius.all(Radius.circular(10)))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
