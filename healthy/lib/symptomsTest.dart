import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/DoctorLandingScreen.dart';

import 'forntscreen.dart';

class SymptomsTest extends StatefulWidget {
  final String navigation;
  SymptomsTest({required this.navigation});

  @override
  _SymptomsTestState createState() => _SymptomsTestState();
}

class _SymptomsTestState extends State<SymptomsTest> {
  bool drySkin = false;
  TextEditingController controller = TextEditingController();
  bool losingSensation = false;
  bool blackSkin = false;
  bool flexitol = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool worseningVision = false;
  bool visionLoss = false;
  bool floaters = false;
  bool patchyVision = false;
  bool eyePain = false;

  bool dehydration = false;
  bool ramipiril = false;

  final scaffoldKey = GlobalKey<ScaffoldState>(debugLabel: "scaffold");

  List<String> footHealth = [];
  List<String> eyeHealth = [];
  List<String> kidneyHealth = [];

  Map<String, dynamic> symptomsTest = {
    'HbA1c': null,
    'FootHealth': null,
    'EyeHealth': null,
    'KidneyHealth': null,
    'uID': null
  };

  Future<bool> SaveSymptomsResult(Map<String, dynamic> data) async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      symptomsTest['uID'] = user!.uid;
      await FirebaseFirestore.instance
          .collection("SymptomsTestResults")
          .doc(user.uid)
          .set(data);
    } catch (e) {
      _showSnackBar(e.toString());
      return false;
    }
    return true;
  }

  _showSnackBar(String text) {
    final snackBar = SnackBar(
      content: Text('$text'),
    );
    scaffoldKey.currentState!.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Text(
                'Symptoms & test results',
                style: TextStyle(color: Colors.black),
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HbA1c Test',
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    // height: 10,
                    // width: 60,
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                        controller: controller,
                        decoration:
                            InputDecoration(hintText: "Enter test percentage"),
                        style: TextStyle(fontSize: 16.sp),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(2),
                          FilteringTextInputFormatter.allow(RegExp(r"[0-9]"))
                        ],
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter the correct %";
                          }
                        },
                        onSaved: (String? value) {
                          symptomsTest['HbA1c'] = 22;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Foot Health',
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                activeColor: Colors.green,
                                value: drySkin,
                                onChanged: (bool? value) {
                                  // This is where we update the state when the checkbox is tapped
                                  setState(() {
                                    if (drySkin != true) {
                                      drySkin = value!;
                                      footHealth.add('Dry Skin');
                                      print(footHealth.length);
                                    } else {
                                      drySkin = false;
                                      footHealth.remove('Dry Skin');
                                      print(footHealth.length);
                                    }
                                    // isChecked1 = false;
                                  });
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  height: 40,
                                  //color: Colors.blue,
                                  child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             AcceptedCondition()));
                                      },
                                      child: Center(child: Text('Dry skin'))),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: losingSensation,
                                activeColor: Colors.green,
                                onChanged: (bool? value) {
                                  // This is where we update the state when the checkbox is tapped
                                  setState(() {
                                    if (losingSensation != true) {
                                      losingSensation = value!;
                                      footHealth
                                          .add('Loosing sensation in the toes');
                                      print(footHealth.length);
                                    } else {
                                      losingSensation = false;
                                      footHealth.remove(
                                          'Loosing sensation in the toes');
                                      print(footHealth.length);
                                    }
                                    // isChecked1 = false;
                                  });
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  height: 40,
                                  //color: Colors.blue,
                                  child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             AcceptedCondition()));
                                      },
                                      child: Center(
                                          child: Text(
                                              'Loosing sensation in the toes'))),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: Colors.green,
                                value: blackSkin,
                                onChanged: (bool? value) {
                                  // This is where we update the state when the checkbox is tapped
                                  setState(() {
                                    if (blackSkin != true) {
                                      blackSkin = value!;

                                      footHealth.add('Black/harden skin');
                                      print(footHealth.length);
                                    } else {
                                      blackSkin = false;
                                      footHealth.remove('Black/harden skin');
                                      print(footHealth.length);
                                    }
                                    // isChecked1 = false;
                                  });
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  height: 40,
                                  //color: Colors.blue,
                                  child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             AcceptedCondition()));
                                      },
                                      child: Center(
                                          child: Text('Black/harden skin'))),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: Colors.green,
                                value: flexitol,
                                onChanged: (bool? value) {
                                  // This is where we update the state when the checkbox is tapped
                                  setState(() {
                                    if (flexitol != true) {
                                      flexitol = value!;
                                      footHealth
                                          .add('Taking flexitol medicine');
                                      print(footHealth.length);
                                    } else {
                                      flexitol = false;
                                      footHealth
                                          .remove('Taking flexitol medicine');
                                      print(footHealth.length);
                                    }
                                    // isChecked1 = false;
                                  });
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  height: 40,
                                  //color: Colors.blue,
                                  child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             AcceptedCondition()));
                                      },
                                      child: Center(
                                          child: Text(
                                              'Taking flexitol medicine'))),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Eyes Health',
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      // height: 10,
                      // width: 60,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Checkbox(activeColor: Colors.green,
                                value: worseningVision,
                                onChanged: (bool? value) {
                                  // This is where we update the state when the checkbox is tapped
                                  setState(() {
                                    if (worseningVision != true) {
                                      worseningVision = value!;
                                      eyeHealth
                                          .add('Gradually worsening vision');
                                      print(eyeHealth.length);
                                    } else {
                                      worseningVision = false;
                                      eyeHealth
                                          .remove('Gradually worsening vision');
                                      print(eyeHealth.length);
                                    }
                                    // isChecked1 = false;
                                  });
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  height: 40,
                                  //color: Colors.blue,
                                  child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             AcceptedCondition()));
                                      },
                                      child: Center(
                                          child: Text(
                                              'Gradually worsening vision'))),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: Colors.green,
                                value: visionLoss,
                                onChanged: (bool? value) {
                                  // This is where we update the state when the checkbox is tapped
                                  setState(() {
                                    if (visionLoss != true) {
                                      visionLoss = value!;
                                      eyeHealth.add('Sudden vision loss');
                                      print(eyeHealth.length);
                                    } else {
                                      visionLoss = false;
                                      eyeHealth.remove('Sudden vision loss');
                                      print(eyeHealth.length);
                                    }
                                    // isChecked1 = false;
                                  });
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  height: 40,
                                  //color: Colors.blue,
                                  child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             AcceptedCondition()));
                                      },
                                      child: Center(
                                          child: Text('Sudden vision loss'))),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: Colors.green,
                                value: floaters,
                                onChanged: (bool? value) {
                                  // This is where we update the state when the checkbox is tapped
                                  setState(() {
                                    if (floaters != true) {
                                      floaters = value!;
                                      eyeHealth.add(
                                          'Shapes floating in your field of vision');
                                      print(eyeHealth.length);
                                    } else {
                                      floaters = false;
                                      eyeHealth.remove(
                                          'Shapes floating in your field of vision');
                                      print(eyeHealth.length);
                                    }
                                    // isChecked1 = false;
                                  });
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  height: 40,
                                  //color: Colors.blue,
                                  child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             AcceptedCondition()));
                                      },
                                      child: Center(
                                          child: Text(
                                              'Shapes floating in your field of vision'))),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: Colors.green,
                                value: patchyVision,
                                onChanged: (bool? value) {
                                  // This is where we update the state when the checkbox is tapped
                                  setState(() {
                                    if (patchyVision != true) {
                                      patchyVision = value!;
                                      eyeHealth.add('Blurred or patchy vision');
                                      print(eyeHealth.length);
                                    } else {
                                      patchyVision = false;
                                      eyeHealth
                                          .remove('Blurred or patchy vision');
                                      print(eyeHealth.length);
                                    }
                                    // isChecked1 = false;
                                  });
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  height: 40,
                                  //color: Colors.blue,
                                  child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             AcceptedCondition()));
                                      },
                                      child: Center(
                                          child: Text(
                                              'Blurred or patchy vision'))),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: Colors.green,
                                value: eyePain,
                                onChanged: (bool? value) {
                                  // This is where we update the state when the checkbox is tapped
                                  setState(() {
                                    if (eyePain != true) {
                                      eyePain = value!;
                                      eyeHealth.add('Eye pain or redness');
                                      print(eyeHealth.length);
                                    } else {
                                      eyePain = false;
                                      eyeHealth.remove('Eye pain or redness');
                                      print(eyeHealth.length);
                                    }
                                    // isChecked1 = false;
                                  });
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  height: 40,
                                  //color: Colors.blue,
                                  child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             AcceptedCondition()));
                                      },
                                      child: Center(
                                          child: Text('Eye pain or redness'))),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Kidney Health',
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      // height: 10,
                      // width: 60,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                activeColor: Colors.green,
                                value: dehydration,
                                onChanged: (bool? value) {
                                  // This is where we update the state when the checkbox is tapped
                                  setState(() {
                                    if (dehydration != true) {
                                      dehydration = value!;
                                      kidneyHealth.add('Dehydration');
                                      print(kidneyHealth.length);
                                    } else {
                                      dehydration = false;
                                      kidneyHealth.remove('Dehydration');
                                      print(kidneyHealth.length);
                                    }
                                    // isChecked1 = false;
                                  });
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  height: 40,
                                  //color: Colors.blue,
                                  child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             AcceptedCondition()));
                                      },
                                      child:
                                          Center(child: Text('Dehydration'))),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                activeColor: Colors.green,
                                value: ramipiril,
                                onChanged: (bool? value) {
                                  // This is where we update the state when the checkbox is tapped
                                  setState(() {
                                    if (ramipiril != true) {
                                      ramipiril = value!;
                                      kidneyHealth
                                          .add('Taking ramipiril medicne');
                                      print(kidneyHealth.length);
                                    } else {
                                      ramipiril = false;
                                      kidneyHealth
                                          .remove('Taking ramipiril medicne');
                                      print(kidneyHealth.length);
                                    }
                                    // isChecked1 = false;
                                  });
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  height: 40,
                                  //color: Colors.blue,
                                  child: InkWell(
                                      onTap: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             AcceptedCondition()));
                                      },
                                      child: Center(
                                          child: Text(
                                              'Taking ramipiril medicne'))),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  Center(
                    child:InkWell(
                      onTap: (){
                        if (!_formKey.currentState!.validate()) {
                          print('sssssss');
                          return;
                        } else {
                          if (widget.navigation == 'doctor') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DoctorLandingScreen()));
                          } else {
                            symptomsTest['FootHealth'] = footHealth;
                            symptomsTest['EyeHealth'] = eyeHealth;
                            symptomsTest['KidneyHealth'] = kidneyHealth;
                            symptomsTest['HbA1c'] = controller.text;
                            print(symptomsTest);
                            SaveSymptomsResult(symptomsTest).then((value) => {
                              if (value)
                                {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              forntscreen()))
                                }
                              else
                                {_showSnackBar('Something went wrong')}
                            });
                          }
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 12),
                        height: 43,
                        width: MediaQuery.of(context).size.width / 1.1,
                        child:Center(child: Text("Finish",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w600,color: Colors.white),)),
                        color: Colors.lightGreen,
                      ),
                    ),),




                  // Center(
                  //   child: RaisedButton(
                  //     onPressed: () {
                  //       if (!_formKey.currentState!.validate()) {
                  //         print('sssssss');
                  //         return;
                  //       } else {
                  //         if (widget.navigation == 'doctor') {
                  //           Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                   builder: (context) =>
                  //                       DoctorLandingScreen()));
                  //         } else {
                  //           symptomsTest['FootHealth'] = footHealth;
                  //           symptomsTest['EyeHealth'] = eyeHealth;
                  //           symptomsTest['KidneyHealth'] = kidneyHealth;
                  //           symptomsTest['HbA1c'] = controller.text;
                  //           print(symptomsTest);
                  //           SaveSymptomsResult(symptomsTest).then((value) => {
                  //                 if (value)
                  //                   {
                  //                     Navigator.push(
                  //                         context,
                  //                         MaterialPageRoute(
                  //                             builder: (context) =>
                  //                                 forntscreen()))
                  //                   }
                  //                 else
                  //                   {_showSnackBar('Something went wrong')}
                  //               });
                  //         }
                  //       }
                  //     },
                  //     child: Text("Next"),
                  //     color: Colors.lightGreen,
                  //   ),
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
