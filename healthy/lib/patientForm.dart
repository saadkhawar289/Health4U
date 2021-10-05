import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthy/symptomsTest.dart';

class PatientForm extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<PatientForm> {
  DateTime pickedDate = DateTime.now();
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

        _controllerDate.text = pickedDate.toString().substring(0, 11);
        _controllerDate.text = formatDate(picked, [dd, '/', mm, '/', yyyy]);
        // dateController.text = ;
      });
  }

  int _value = 0;
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerphone = TextEditingController();
  TextEditingController _controllercode = TextEditingController();
  TextEditingController _controllerDate = TextEditingController();

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
                  child: Text(
                    ' Exsiting User?Log in',
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
                    'Patient Information',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                        hintText: 'Patient Name',
                        contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                        border: InputBorder.none,
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z, ]"))
                      ],
                      controller: _controllerName,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter the Patient Name";
                        }
                      }),

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
                        hintText: 'dd-mm-yyy',
                        contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                        border: InputBorder.none,
                      ),
                      controller: _controllerDate,
                      validator: (val) {
                        if (val!.isEmpty || !val.contains("/")) {
                          return "Please Enter valid Date of Brith";
                        }
                      }),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),

                  TextFormField(
                      decoration: InputDecoration(
                        hintText: ' Post code',
                        contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                        border: InputBorder.none,
                      ),
                      controller: _controllercode,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(8),
                        FilteringTextInputFormatter.allow(
                            RegExp("[0-9 ,a-z,A-Z]"))
                      ],
                      validator: (val) {
                        if (val!.isEmpty || val.length > 8 || val.length < 6) {
                          return "Please enter code";
                        }
                      }),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  // TextFormField(
                  //     decoration: InputDecoration(
                  //       hintText: 'Mobile number(07424790689)',
                  //       contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                  //       border: InputBorder.none,
                  //     ),
                  //     controller: _controllerphone,
                  //     inputFormatters: [
                  //       LengthLimitingTextInputFormatter(11),
                  //       FilteringTextInputFormatter.allow(RegExp("[0-9 ]"))
                  //     ],
                  //     validator: (val) {
                  //       if (val!.isEmpty || val.length != 11) {
                  //         return "Please enter Contact number";
                  //       }
                  //     }),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 10, right: 10),
                  //   child: Divider(
                  //     thickness: 2,
                  //   ),
                  // ),

                  InkWell(
                    onTap: () {
                      if (!_formKey.currentState!.validate()) {
                        return;
                      }
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SymptomsTest(
                                    navigation: 'doctor',
                                  )));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 43,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Center(child: Text("Next")),
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
