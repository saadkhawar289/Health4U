import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/forntscreen.dart';

class Temporarycondition extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Temporarycondition> {
  bool iron = false;
  bool zinic = false;
  bool calcium = false;
  bool VitaminD = false;
  bool VitaminB12 = false;
  bool magnisium = false;
  Map<String, dynamic> Temporaraycondition = {
    'iron': false,
    'zinic': false,
    'calcium': false,
    'VitaminD': false,
    'VitaminB12': false,
    'magnisium': false,
    'uID': null
  };
  final scafKey =
      GlobalKey<ScaffoldState>(debugLabel: "scaffold-get-phone");
  _showSnackBar(String text) {
    final snackBar = SnackBar(
      content: Text('$text'),
    );
    scafKey.currentState!.showSnackBar(snackBar);
  }

  Future<bool> saveTemporaryCondition(Map<String, dynamic> data) async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      Temporaraycondition['uID'] = user!.uid;
      await FirebaseFirestore.instance
          .collection("TemporaryConditions")
          .doc(user.uid)
          .set(data);
    } catch (e) {
      _showSnackBar(e.toString());
      return false;
    }
    return true;
  }

  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 3,
        width: MediaQuery.of(context).size.width * 3,
        child: ListView(
          children: [
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width * 3,
              decoration: BoxDecoration(
                  color: const Color(0xFFF7F7F7),
                  border: Border(
                    bottom: BorderSide(width: 1, color: Colors.black12),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_forward_ios)),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => forntscreen()));
                          },
                          child: Text(
                            "Skip for now",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.sp),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          Text(
                            "Temporary Condition",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.sp),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 20),
              child: Row(
                children: [
                  Text(
                    "Are you suffering from any temporary \ncondition? if so please select",
                    style:
                        TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20),
              child: Row(
                children: [
                  Text(
                    "You can update this page in your profile",
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        "Low in Iron",
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.normal),
                      ),
                    ),
                    Spacer(),
                    Checkbox(
                      value: iron,
                      onChanged: (bool? value) {
                        // This is where we update the state when the checkbox is tapped
                        setState(() {
                          if (iron != true) {
                            iron = value!;
                            Temporaraycondition['iron'] = true;
                            print(Temporaraycondition['iron']);
                          } else {
                            iron = false;
                            Temporaraycondition['iron'] = false;
                            print(Temporaraycondition['iron']);
                          }
                        });
                      },
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                  height: 3,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        "Low in zinc",
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.normal),
                      ),
                    ),
                    Spacer(),
                    Checkbox(
                      value: zinic,
                      onChanged: (bool? value) {
                        // This is where we update the state when the checkbox is tapped
                        setState(() {
                          if (zinic != true) {
                            zinic = value!;
                            Temporaraycondition['zinic'] = true;
                            print(Temporaraycondition['zinic']);
                          } else {
                            zinic = false;
                            Temporaraycondition['zinic'] = false;
                            print(Temporaraycondition['zinic']);
                          }
                        });
                      },
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                  height: 3,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        "Low in calcium",
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.normal),
                      ),
                    ),
                    Spacer(),
                    Checkbox(
                      value: calcium,
                      onChanged: (bool? value) {
                        // This is where we update the state when the checkbox is tapped
                        setState(() {
                          if (calcium != true) {
                            calcium = value!;
                            Temporaraycondition['calcium'] = true;
                            print(Temporaraycondition['calcium']);
                          } else {
                            calcium = false;
                            Temporaraycondition['calcium'] = false;
                            print(Temporaraycondition['calcium']);
                          }
                        });
                      },
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                  height: 3,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        "Low in Vitamin D",
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.normal),
                      ),
                    ),
                    Spacer(),
                    Checkbox(
                      value: VitaminD,
                      onChanged: (bool? value) {
                        // This is where we update the state when the checkbox is tapped
                        setState(() {
                          if (VitaminD != true) {
                            VitaminD = value!;
                            Temporaraycondition['VitaminD'] = true;
                            print(Temporaraycondition['VitaminD']);
                          } else {
                            VitaminD = false;
                            Temporaraycondition['VitaminD'] = false;
                            print(Temporaraycondition['VitaminD']);
                          }
                        });
                      },
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                  height: 3,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        "Low in Vitamin B12",
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.normal),
                      ),
                    ),
                    Spacer(),
                    Checkbox(
                      value: VitaminB12,
                      onChanged: (bool? value) {
                        // This is where we update the state when the checkbox is tapped
                        setState(() {
                          if (VitaminB12 != true) {
                            VitaminB12 = value!;
                            Temporaraycondition['VitaminB12'] = true;
                            print(Temporaraycondition['VitaminB12']);
                          } else {
                            VitaminB12 = false;
                            Temporaraycondition['VitaminB12'] = false;
                            print(Temporaraycondition['VitaminB12']);
                          }
                        });
                      },
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                  height: 3,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text(
                        "Low in Magnesium",
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.normal),
                      ),
                    ),
                    Spacer(),
                    Checkbox(
                      value: magnisium,
                      onChanged: (bool? value) {
                        // This is where we update the state when the checkbox is tapped
                        setState(() {
                          if (magnisium != true) {
                            magnisium = value!;
                            Temporaraycondition['magnisium'] = true;
                            print(Temporaraycondition['magnisium']);
                          } else {
                            magnisium = false;
                            Temporaraycondition['magnisium'] = false;
                            print(Temporaraycondition['magnisium']);
                          }
                        });
                      },
                    ),
                    Divider(
                      thickness: 2,
                      height: 3,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 20),
                  child: Row(
                    children: [
                      Text(
                        "We will help you choose products that have a\n high value in the above deficiency",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    saveTemporaryCondition(Temporaraycondition).then((value) =>
                        {
                          if (value)
                            {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => forntscreen()))
                            }
                          else
                            {_showSnackBar('something went wrong try again')}
                        });
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                    height: 45,
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Center(child: Text("Next")),
                    color: const Color(0xFF999999),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
