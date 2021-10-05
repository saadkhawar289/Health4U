import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/Editmedication.dart';
import 'package:healthy/pills3.dart';
import 'package:healthy/selectpills.dart';
import 'package:healthy/symptomsTest.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'diabitiesSymptoms.dart';

class editdiabetes extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<editdiabetes> {
  int _value = 0;
  final sKey = GlobalKey<ScaffoldState>(debugLabel: "Scaffold key");

  _showSnackBar(String text) {
    final snackBar = SnackBar(
      content: Text('$text'),
    );
    sKey.currentState!.showSnackBar(snackBar);
  }

//  // Future<bool> SaveSurgeryInfo(Map<String, dynamic> data) async {
  //   //   try {
  //   //     User? user = FirebaseAuth.instance.currentUser;
  //   //     await FirebaseFirestore.instance
  //   //         .collection("MedicalRecord")
  //   //         .doc(user.uid)
  //   //         .set(data);
  //   //   } catch (e) {
  //   //     _showSnackBar(e.toString());
  //   //     return false;
  //   //   }
  //   //   return true;
  //   // }
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFF7F7F7),
        elevation: 0,
        toolbarHeight: 0.16.sh,
        iconTheme: Theme.of(context).iconTheme,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                  margin: EdgeInsets.only(top: 0.02.sh, right: 0.10.sw),
                  child: Image.asset("assets/ic_logo.png")),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 14),
            alignment: Alignment.centerLeft,
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Text(
              "What type of diabetes?",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => editmedication()));
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        "Types 1",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ),
                    Spacer(),
                    Radio(
                      value: 1,
                      activeColor: Colors.green,
                      groupValue: _value,
                      onChanged: (dynamic val) {
                        setState(() {
                          _value = val;
                          Timer(Duration(seconds: 1), () async {
                            SharedPreferences pref =
                                await SharedPreferences.getInstance();
                            pref.setString('TypeOfDiabetes', 'type1');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => editmedication()));
                          });
                        });
                      },
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => selectpills()));
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        "Types 2",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ),
                    Spacer(),
                    Radio(
                      value: 2,
                      activeColor: Colors.green,
                      groupValue: _value,
                      onChanged: (dynamic val) {
                        setState(() {
                          _value = val;

                          Timer(Duration(seconds: 1), () async {
                            SharedPreferences pref =
                                await SharedPreferences.getInstance();
                            pref.setString('TypeOfDiabetes', 'type2');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => selectpills()));
                          });
                        });
                      },
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => selectpills3()));
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        "Gestational",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ),
                    Spacer(),
                    Radio(
                      value: 3,
                      activeColor: Colors.green,
                      groupValue: _value,
                      onChanged: (dynamic val) {
                        setState(() {
                          _value = val;

                          Timer(Duration(seconds: 1), () async {
                            SharedPreferences pref =
                                await SharedPreferences.getInstance();
                            pref.setString('TypeOfDiabetes', 'Gestational');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => selectpills3()));
                          });
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SymptomsTest(
                            navigation: 'user',
                          )));
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    "Prediabetes",
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ),
                Spacer(),
                Radio(
                  value: 4,
                  activeColor: Colors.green,
                  groupValue: _value,
                  onChanged: (dynamic val) {
                    setState(() {
                      _value = val;
                      Timer(Duration(seconds: 1), () async {
                        SharedPreferences pref =
                            await SharedPreferences.getInstance();
                        pref.setString('TypeOfDiabetes', 'Prediabetes');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SymptomsTest(
                                      navigation: 'user',
                                    )));
                      });
                    });
                  },
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DiabitiesSym()));
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    "Don't know",
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ),
                Spacer(),
                Radio(
                  value: 5,
                  activeColor: Colors.green,
                  groupValue: _value,
                  onChanged: (dynamic val) {
                    setState(() {
                      _value = val;
                      Timer(Duration(seconds: 1), () async {
                        SharedPreferences pref =
                            await SharedPreferences.getInstance();
                        pref.setString('TypeOfDiabetes', "don't Know");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DiabitiesSym()));
                      });
                    });
                  },
                ),
              ],
            ),
          ),
          // InkWell(
          //   onTap: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => Temporarycondition()));
          //   },
          //   child: InkWell(
          //     onTap: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => editmedication()));
          //     },
          //     child: Container(
          //       margin: EdgeInsets.only(top: 300, left: 15, right: 15),
          //       height: 45,
          //       width: MediaQuery.of(context).size.width / 1.1,
          //       child: Center(child: Text("Next")),
          //       color: const Color(0xFF999999),
          //     ),
          //   ),
          // ),
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
