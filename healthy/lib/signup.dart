import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_format/date_format.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/AcceptedCondition.dart';
import 'package:healthy/EditDiabetes.dart';
import 'package:healthy/privacyPolicy.dart';
import 'package:healthy/profile3.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';


import 'login.dart';

class singup extends StatefulWidget {
  final String? source;
  singup({this.source});
  @override
  _State createState() => _State();
}

//final scaffoldKeys = GlobalKey<ScaffoldState>();
bool show = true;
List<String> docs = ['saad', 'haron', 'jawad'];

class _State extends State<singup> {
  bool loader = false;
  String meassage = 'enter correct email';
  @override
  void initState() {
    if (widget.source == 'edit') {
      loadUser();
    } else {}
    super.initState();

  }
  _showSnackBar(String text) {
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  DateTime pickedDate = DateTime.now();
  Map<String, dynamic> formValues = {
    'fName': null,
    'type': null,
    'lName': null,
    'date': null,
    'email': null,
    'password': null,
    'uID': null,
    'MobileNo': null,
    'PhoneNo': null,
    'DoctorID': null
  };
  Widget DropDown() {
    return DropdownButton<String>(
      iconEnabledColor: Colors.red,
      iconSize: 30,
      dropdownColor: Colors.white,
      underline: Container(),
      elevation: 5,
      items: docs.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value) {
        _controllerName.text = value.toString();
      },
    );
  }

  Future<bool> signUp(Map<String, dynamic> data) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _controller.text, password: _controllerPass.text);
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setString("email", _controller.text);
      sharedPreferences.setString("Password", _controllerPass.text);
      await sharedPreferences.setString(
          "first_name", data['fName']);
    await sharedPreferences.setString(
        "last_name", data['lName']);

      User? user = FirebaseAuth.instance.currentUser;
      formValues['uID'] = user!.uid;
      formValues['type'] = 'Customer';

      await FirebaseFirestore.instance
          .collection("Users")
          .doc(user.uid)
          .set(data);
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        meassage = 'The password provided is too weak';
        _showSnackBar('The password provided is too weak');
        return false;
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        meassage = 'The account already exists for that email.';
        _showSnackBar('The account already exists for that email.');
        return false;
      } else if (e.toString() ==
          '[firebase_auth/invalid-email] The email address is badly formatted') {
        meassage = 'enter valid email';
        _showSnackBar('enter valid email');
      }
      return false;
    } catch (e) {
      print(e);

      return false;
    }
  }

  Future<bool> loadUser() async {
    try {
      loader = true;
      print('loading===================================');
      User? user = FirebaseAuth.instance.currentUser;
      formValues['uID'] = user!.uid;
      await FirebaseFirestore.instance
          .collection("Users")
          .doc(user.uid)
          .get()
          .then((data) => {
                _controllerName.text = data['fName'],
                _controllerNameLast.text = data['lName'],
                _controllerMob.text = data['MobileNo'],
                _controllerPhone.text = data['PhoneNo'],
              });
      print('loading++++++++++++++++++++++++++++');

      setState(() {
        loader = false;
      });
      print('==============================$loader');
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
    loader = false;

    return true;
  }

  Future<bool> editinfo(Map<String, dynamic> data) async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      SharedPreferences preferences = await SharedPreferences.getInstance();
      formValues['email'] = preferences.getString("email");
      formValues['password'] = preferences.getString("Password");
      formValues['uID'] = user!.uid;
      FirebaseFirestore.instance.collection("Users").doc(user.uid).update(data);
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
    //
    // try {
    //   await FirebaseAuth.instance.signInWithEmailAndPassword(
    //       email: "barry.allen@example.com",
    //       password: "SuperSecretPassword!"
    //
    //   );
    // }
    // on FirebaseAuthException catch  (e) {
    //   print('Failed with error code: ${e.code}');
    //   print(e.message);
    //   print("khan");
    // }
    return true;
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

        _controllerDate.text = pickedDate.toString().substring(0, 11);
        _controllerDate.text = formatDate(picked, [dd, '/', mm, '/', yyyy]);
        // dateController.text = ;
      });
  }

  bool isChecked = false;
  bool privacyCheck = false;
  TextEditingController _controller = TextEditingController();
  TextEditingController _controllerPass = TextEditingController();
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerNameLast = TextEditingController();
  TextEditingController _controllerDate = TextEditingController();
  TextEditingController _controllerconfirm = TextEditingController();
  TextEditingController _controllerMob = TextEditingController();
  TextEditingController _controllerPhone = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
       //   key: scaffoldKeys,
          //  appBar: AppBar(
          //  backgroundColor: Colors.white,
          //),
          body: ListView(
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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: widget.source == 'edit'
                          ? Container()
                          : Text(
                              'Exsiting User? Log in',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
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
                    widget.source == 'edit'
                        ? Text(
                            'Edit your Profile',
                            style: TextStyle(
                                fontSize: 20.sp, fontWeight: FontWeight.bold),
                          )
                        : Text(
                            'Create your Profile',
                            style: TextStyle(
                                fontSize: 20.sp, fontWeight: FontWeight.bold),
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
                        // suffix: Padding(
                        //   padding: const EdgeInsets.only(right: 30.0),
                        //   child: DropDown(),
                        // ),
                        hintText: 'First Name',
                        contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                        border: InputBorder.none,
                      ),
                      // initialValue: formValues['fName'] == null
                      //     ? "Name"
                      //     : formValues['fName'],
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z, ]"))
                      ],
                      controller: _controllerName,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter the Name";
                        }
                      },
                      onSaved: (String? value) {
                        formValues['fName'] = value;
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
                        hintText: 'Last Name',
                        contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                        border: InputBorder.none,
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z, ]"))
                      ],
                      controller: _controllerNameLast,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter the Name";
                        }
                      },
                      onSaved: (String? value) {
                        formValues['lName'] = value;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    widget.source == 'edit'
                        ? Container()
                        : TextFormField(
                            onTap: () {
                              _selectDate(context);
                            },
                            decoration: InputDecoration(
                              hintText: 'Date of birth',
                              contentPadding:
                                  EdgeInsets.only(left: 15.0, top: 15),
                              border: InputBorder.none,
                            ),
                            controller: _controllerDate,
                            validator: (val) {
                              if (val!.isEmpty || !val.contains("/")) {
                                return "Please Enter valid Date of Brith";
                              }
                            },
                            onSaved: (String? value) {
                              formValues['date'] = value;
                            },
                          ),
                    widget.source == 'edit'
                        ? Container()
                        : Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Divider(
                              thickness: 2,
                            ),
                          ),

                    widget.source == 'edit'
                        ? Container()
                        : TextFormField(
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp("[0-9,@,a-z,A-Z,.]"))
                            ],
                            decoration: InputDecoration(
                              hintText: 'Email',
                              contentPadding:
                                  EdgeInsets.only(left: 15.0, top: 15),
                              border: InputBorder.none,
                            ),
                            controller: _controller,
                            validator: (val) =>
                                val!.isEmpty || !val.contains("@")
                                    ? "enter a valid eamil"
                                    : null,
                            onSaved: (String? value) {
                              formValues['email'] = value;
                            },
                          ),
                    widget.source == 'edit'
                        ? Container()
                        : Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Divider(
                              thickness: 2,
                            ),
                          ),
                    widget.source == 'edit'
                        ? Container()
                        : TextFormField(
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp("[0-9,@,a-z,A-Z,.]"))
                            ],
                            decoration: InputDecoration(
                              hintText: 'Confirm Email',
                              contentPadding:
                                  EdgeInsets.only(left: 15.0, top: 15),
                              border: InputBorder.none,
                            ),
                            controller: _controllerconfirm,
                            validator: (val) => val!.isEmpty ||
                                    !val.contains("@") ||
                                    val != _controller.text
                                ? "email not matched"
                                : null,
                          ),
                    widget.source == 'edit'
                        ? Container()
                        : Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Divider(
                              thickness: 2,
                            ),
                          ),
                    TextFormField(
                      obscureText: show,
                      decoration: InputDecoration(
                        suffixIcon: show == false
                            ? InkWell(
                                onTap: () {
                                  setState(() {
                                    show = true;
                                  });
                                },
                                child: Icon(
                                  Icons.visibility,
                                  color: Colors.grey,
                                ))
                            : InkWell(
                                onTap: () {
                                  setState(() {
                                    show = false;
                                  });
                                },
                                child: Icon(Icons.visibility_off,
                                    color: Colors.grey)),
                        hintText: 'Password',
                        contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                        border: InputBorder.none,
                      ),
                      controller: _controllerPass,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(12),
                        FilteringTextInputFormatter.allow(
                            RegExp("[0-9,@#*&^%?/>< a-z A-Z ]"))
                      ],
                      validator: (val) {
                        if (val!.isEmpty || val.length <= 8) {
                          return "enter a password greater then 8";
                        }
                      },
                      onSaved: (String? value) {
                        formValues['password'] = value;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    // TextFormField(
                    //   decoration: InputDecoration(
                    //     hintText: 'Mobile number(07424790689)',
                    //     contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                    //     border: InputBorder.none,
                    //   ),
                    //   controller: _controllerMob,
                    //   inputFormatters: [
                    //     LengthLimitingTextInputFormatter(11),
                    //     FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                    //   ],
                    //   validator: (val) {
                    //     if (val!.isEmpty || val.length != 11) {
                    //       return "Enter Valid  Mobile No";
                    //     }
                    //   },
                    //   onSaved: (String? value) {
                    //     formValues['MobileNo'] = value;
                    //   },
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 10, right: 10),
                    //   child: Divider(
                    //     thickness: 2,
                    //   ),
                    // ),
                    // TextFormField(
                    //   decoration: InputDecoration(
                    //     hintText: 'Landline number(01274272388)',
                    //     contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                    //     border: InputBorder.none,
                    //   ),
                    //   controller: _controllerPhone,
                    //   inputFormatters: [
                    //     LengthLimitingTextInputFormatter(11),
                    //     FilteringTextInputFormatter.allow(RegExp("[0-9]"))
                    //   ],
                    //   validator: (val) {
                    //     if (val!.isEmpty || val.length != 11) {
                    //       return "Please Valid Enter LandLine No ";
                    //     }
                    //   },
                    //   onSaved: (String? value) {
                    //     formValues['PhoneNo'] = value;
                    //   },
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 10, right: 10),
                    //   child: Divider(
                    //     thickness: 2,
                    //   ),
                    // ),

                    Row(
                      children: [
                        widget.source == 'edit'
                            ? Container()
                            : Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  // This is where we update the state when the checkbox is tapped
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 40,
                            // color: Colors.red,
                            width: 150,
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AcceptedCondition()));
                                },
                                child: widget.source == 'edit'
                                    ? Container()
                                    : Center(
                                        child: Text('Terms and Conditions'))),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        // widget.source == 'edit'
                        //     ? Container()
                        //     : Checkbox(
                        //   value: privacyCheck,
                        //   onChanged: (bool? value) {
                        //     // This is where we update the state when the checkbox is tapped
                        //     setState(() {
                        //       privacyCheck = value!;
                        //     });
                        //   },
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                              height: 40,
                              // color: Colors.red,
                              width: 100,
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PrivacyPolicy()));
                                  },
                                  child: widget.source == 'edit'
                                      ? Container()
                                      : Center(
                                          child: Text(
                                            'Privacy Policy',
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ))),
                        ),
                      ],
                    ),

                    InkWell(
                      onTap: () {
                        if (!_formKey.currentState!.validate() ||
                            isChecked != true) {
                          return;
                        }
                        if (_controller.text.contains('') ||
                            _controllerconfirm.text.contains('')) {
                          _controller.text.trim();
                          _controllerconfirm.text.trim();
                          formValues['email'].toString().trim();
                        }

                        _formKey.currentState!.save();

                        if (widget.source == 'edit') {
                          print('edit===================================');
                          editinfo(formValues).then((value) => {
                                if (value)
                                  {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => profile3()))
                                  }
                                else
                                  {print('Gando ho tm')}
                              });
                        } else {
                          signUp(formValues).then((value) => {
                                if (value)
                                  {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                editdiabetes(false)))
                                  }
                                else
                                  {
                                    _showSnackBar(meassage),
                                  }
                              });
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 70, bottom: 20),
                        height: 43,
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Center(
                            child: Text(
                          "Create Account",
                          style: TextStyle(
                              fontSize: 17.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )),
                        color: Colors.lightGreen,
                      ),
                    ),
                    // Container(
                    //     margin: EdgeInsets.only(top: 80),
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
      ),
      color: Colors.white,
    );
  }
}
