import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/DoctorLandingScreen.dart';
import 'package:healthy/Model/Doctor.dart';

class DoctorinformationSirgery extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DoctorinformationSirgery> {
  int _value = 0;
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerphone = TextEditingController();
  TextEditingController _controllercode = TextEditingController();
  Map<String, dynamic> formValues = {
    'uID': null,
    'surgeryName': null,
    'surgeryPostCode': null,
  };
  User? user = FirebaseAuth.instance.currentUser;
  DoctorHelper docHelper = DoctorHelper();

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
            Container(
              height: 30,
              width: 40,
              //color: Colors.red,
              margin: EdgeInsets.only(left: 15, top: 40, bottom: 20),
              child: Row(
                children: [
                  Text(
                    'Doctor Information',
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
                        FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z, ]"))
                      ],
                      controller: _controllerName,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter the Surgery Name";
                        }
                      },
                      onSaved: (value) {
                        formValues['surgeryName'] = value;
                      }),

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
                        FilteringTextInputFormatter.allow(
                            RegExp("[0-9,a-z,A-Z ]"))
                      ],
                      validator: (val) {
                        if (val!.isEmpty || val.length > 8 || val.length < 6) {
                          return "Please enter code";
                        }
                      },
                      onSaved: (value) {
                        formValues['surgeryPostCode'] = value;
                      }),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      if (!_formKey.currentState!.validate()) {
                        return;
                      }
                      _formKey.currentState!.save();
                      formValues['uID'] = user!.uid;
                      docHelper.addDocInfo(formValues).then((value) => {
                            if (value)
                              {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DoctorLandingScreen()))
                              }
                            else
                              {}
                          });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 43,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Center(
                          child: Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )),
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
