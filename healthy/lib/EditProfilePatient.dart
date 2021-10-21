import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_format/date_format.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:healthy/profile3.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'changepassword.dart';

class EditProfilePatient extends StatefulWidget {
  final fstName, lstName, dobs;

  EditProfilePatient(
      {required this.lstName, required this.fstName, required this.dobs});

  @override
  _EditProfilePatientState createState() => _EditProfilePatientState();
}

class _EditProfilePatientState extends State<EditProfilePatient> {
  Map<String, dynamic> formValues = {
    'fName': null,
    'lName': null,
    'date': null,
  };
  DateTime pickedDate = DateTime.now();

  TextEditingController fName = TextEditingController();
  TextEditingController lName = TextEditingController();
  TextEditingController dob = TextEditingController();

  _showSnackBar(String text) {
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(1980),
      firstDate: DateTime(1975),
      lastDate: DateTime(2008),
    );
    if (picked != null && picked != pickedDate)
      setState(() {
        pickedDate = picked;

        dob.text = pickedDate.toString().substring(0, 11);
        dob.text = formatDate(picked, [dd, '/', mm, '/', yyyy]);
        // dateController.text = ;
      });
  }

  Future<bool> editinfo() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      formValues['fName'] = fName.text.isEmpty?widget.fstName:fName.text;
      formValues['lName'] = lName.text.isEmpty?widget.lstName:lName.text;
      formValues['date'] = dob.text.isEmpty?widget.dobs:dob.text;
      FirebaseFirestore.instance
          .collection("Users")
          .doc(user!.uid)
          .update(formValues);
      var pref = await SharedPreferences.getInstance();
      pref.remove('first_name');
      pref.remove('last_name');
      pref.remove('dob');

      var s = await pref.setString('first_name', formValues['fName']);
      var f = await pref.setString('last_name', formValues['lName']);
      var c = await pref.setString('dob', formValues['date']);

      print(s);
      print(f);
      print(c);

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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.7,
            backgroundColor: const Color(0xFFF7F7F7),
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.black,
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Edit Profile",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                )
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: fName,
                      decoration: InputDecoration(
                        hintText: widget.fstName,
                        //  suffixText: "Edit  ",
                        contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                        border: InputBorder.none,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    TextFormField(
                      controller: lName,
                      decoration: InputDecoration(
                        hintText: widget.lstName,
                        //  suffixText: "Edit  ",
                        contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                        border: InputBorder.none,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    TextFormField(
                      onTap: () {
                        _selectDate(context);
                      },
                      decoration: InputDecoration(
                        hintText: widget.dobs,
                        contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                        border: InputBorder.none,
                      ),
                      controller: dob,
                      validator: (val) {
                        if (val!.isEmpty || !val.contains("/")) {
                          return "Please Enter valid Date of Brith";
                        }
                      },
                      onSaved: (String? value) {
                        formValues['date'] = value;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => changepassword()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Container(
                          color: const Color(0xFFF7F7F7),
                          // color: Colors.lightGreen,
                          height: 45,
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Change Password",
                                  // style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  // color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Spacer(),
                    InkWell(
                      onTap: () {
                        editinfo().then((value) => {
                              if (value)
                                {
                                  _showSnackBar('Data saving...'),
                                  Future.delayed(Duration(seconds: 2), () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => profile3()));
                                  })
                                }
                              else
                                {_showSnackBar('Data not saved')}
                            });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 70, bottom: 20),
                        height: 43,
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Center(
                            child: Text(
                          "Save",
                          style: TextStyle(
                              fontSize: 17.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )),
                        color: Colors.lightGreen,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
