import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/Editmedication.dart';
import 'package:healthy/forntscreen.dart';
import 'package:healthy/pills3.dart';
import 'package:healthy/selectpills.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'diabitiesSymptoms.dart';

class editdiabetes extends StatefulWidget {
  final bool isEditAble;
  final String navigation;

  editdiabetes(this.isEditAble,this.navigation);

  @override
  _State createState() => _State();
}

class _State extends State<editdiabetes> {
  int _value = 0;
  final sKey = GlobalKey<ScaffoldState>(debugLabel: "Scaffold key");
  var dbSavedValue;
  List<String> listOPills = [];
  Map<String, dynamic> pills = {'pills': []};
  List<dynamic> fetchedListOMedicines = [];


  _showSnackBar(String text) {
    final snackBar = SnackBar(
      content: Text('$text'),
    );
    sKey.currentState!.showSnackBar(snackBar);
  }

  User? user = FirebaseAuth.instance.currentUser;

  Map<String, dynamic> patient = {
    'doctorID': null,
    'uID': null,
    'symptomsTest': [],
    'medicines': [],
    'pills': [],
    'typeOfDiabetes': null,
  };
  Map<String, dynamic> symptomsTest = {
    'HbA1c': 5,
    'FootHealth': [],
    'EyeHealth': [],
    'KidneyHealth': [],
    'uID': null
  };

  Future<bool> addPatientRecord(Map<String, dynamic> data) async {
    try {
      User? user = FirebaseAuth.instance.currentUser;

      DocumentReference ref =
          FirebaseFirestore.instance.collection("Patient").doc(user!.uid);
     if(widget.navigation=='profile'){
       ref.update(data);
       print('profileeeeeeeeeeeeeeeeeeeeeeeeee');

     }else{
       print('signuppppppppppppppppppppppppppp');

       ref.set(data);
     }


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

  // Future<bool> saveSymptomsResult(Map<String, dynamic> data) async {
  //   try {
  //     User? user = FirebaseAuth.instance.currentUser;
  //
  //     await FirebaseFirestore.instance
  //         .collection("SymptomsTestResults")
  //         .doc(user!.uid)
  //         .set(data);
  //   } catch (e) {
  //     _showSnackBar(e.toString());
  //     return false;
  //   }
  //   return true;
  // }

  Future<bool> loadUserDaibities() async {
    try {
      // loader = true;
      print('loading===================================');
      User? user = FirebaseAuth.instance.currentUser;
      patient['uID'] = user!.uid;
      await FirebaseFirestore.instance
          .collection("Patient")
          .doc(user.uid)
          .get()
          .then((data) => {
                print(user.uid),
                dbSavedValue = data['typeOfDiabetes'],
        patient['medicines']=data['medicines'],
        patient['pills']=data['pills'],
                if (dbSavedValue == 'Type1')
                  {
                    setState(() {
                      _value = 1;
                    })
                  }
                else if (dbSavedValue == 'Type2')
                  {
                    setState(() {
                      _value = 2;
                    })
                  }
                else if (dbSavedValue == 'Gestational')
                  {
                    setState(() {
                      _value = 3;
                    })
                  }
                else if (dbSavedValue == 'Prediabetes')
                  {
                    setState(() {
                      _value = 4;
                    })
                  }
                else
                  {
                    setState(() {
                      _value = 5;
                    })
                  }
              });
      print('loading++++++++++++++++++++++++++++');
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
    // loader = false;

    return true;
  }

  @override
  void initState() {
    if(widget.isEditAble){
      loadUserDaibities();
    }
    else{

    }

    super.initState();

  }

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
                  patient['typeOfDiabetes'] = 'Type1';
                  patient['uID'] = user!.uid;
                  addPatientRecord(patient).then((value) => {
                        if (value)
                          {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>widget.isEditAble? forntscreen(): editmedication(false)))
                          }
                        else
                          {_showSnackBar("some thing went worng")}
                      });
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
                            patient['typeOfDiabetes'] = 'Type1';
                            addPatientRecord(patient).then((value) => {
                                  if (value)
                                    {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>widget.isEditAble? forntscreen():
                                                  editmedication(true)))
                                    }
                                  else
                                    {_showSnackBar('some thing went worng')}
                                });
                          });
                        });
                      },
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  patient['typeOfDiabetes'] = 'Type2';
                  addPatientRecord(patient).then((value) => {
                        if (value)
                          {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>widget.isEditAble? forntscreen(): selectpills()))
                          }
                        else
                          {_showSnackBar("some thing went worng")}
                      });
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
                            patient['typeOfDiabetes'] = 'Type2';
                            addPatientRecord(patient).then((value) => {
                                  if (value)
                                    {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>widget.isEditAble? forntscreen():
                                                  selectpills()))
                                    }
                                  else
                                    {_showSnackBar("some thing went worng")}
                                });
                          });
                        });
                      },
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  patient["typeOfDiabetes"] = 'Gestational';
                  addPatientRecord(patient).then((value) => {
                        if (value)
                          {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>widget.isEditAble? forntscreen(): selectpills3()))
                          }
                        else
                          {_showSnackBar("some thing went worng")}
                      });
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
                            patient["typeOfDiabetes"] = 'Gestational';
                            addPatientRecord(patient).then((value) => {
                                  if (value)
                                    {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>widget.isEditAble? forntscreen():selectpills3()))
                                    }
                                  else
                                    {}
                                });
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
              patient['typeOfDiabetes'] = 'Prediabetes';
              addPatientRecord(patient).then((value) => {
                    if (value)
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>widget.isEditAble? forntscreen():forntscreen()))
                      }
                    else
                      {_showSnackBar("some thing is worng")}
                  });
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => forntscreen(
              //               navigation: 'user',
              //             )));
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
                        patient['typeOfDiabetes'] = 'Prediabetes';
                        addPatientRecord(patient).then((value) => {
                              if (value)
                                {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>widget.isEditAble? forntscreen():forntscreen()))
                                }
                              else
                                {_showSnackBar("some thing is worng")}
                            });
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
                        patient['typeOfDiabetes'] = "don't Know";
                        addPatientRecord(patient).then((value) => {
                              if (value)
                                {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DiabitiesSym()))
                                }
                              else
                                {_showSnackBar('some thing went worng')}
                            });
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
