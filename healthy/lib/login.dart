import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/forntscreen.dart';
import 'package:healthy/frontscreenRetail.dart';
import 'package:healthy/newpassword.dart';
import 'package:healthy/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'DoctorLandingScreen.dart';

class Login extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final scaffKey = GlobalKey<ScaffoldState>(debugLabel: "scaffold-get-phone");
  TextEditingController _controller = TextEditingController();
  TextEditingController _controllerPass = TextEditingController();
  ValueNotifier<bool> loading = ValueNotifier(false);
  bool show = true;
  Map<String, dynamic> formValues = {
    'email': null,
    'password': null,
  };

  _showSnackBar(String text) {
    final snackBar = SnackBar(
      content: Text('$text'),
    );
    scaffKey.currentState!.showSnackBar(snackBar);
  }

  Future<bool> logIn(Map<String, dynamic> data) async {
    loading.value = true;
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _controller.text, password: _controllerPass.text);
      loading.value = false;

      return true;
    } catch (e) {
      if (e.toString() ==
          '[firebase_auth/user-not-found] There is no user record corresponding to this identifier. The user may have been deleted.') {
        _showSnackBar('Email not Registered');
        loading.value = false;
        return false;
      } else if (e.toString() ==
          '[firebase_auth/wrong-password] The password is invalid or the user does not have a password.')
        loading.value = false;
      _showSnackBar('Incorrect Password');
      return false;
    }
  }

  Future<bool> loadUser() async {
    String localStorageValue;
    try {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();

      User? user = FirebaseAuth.instance.currentUser;
      formValues['uID'] = user!.uid;
      await FirebaseFirestore.instance
          .collection("Users")
          .doc(user.uid)
          .get()
          .then((data) async => {
                await sharedPreferences.setString(
                    "first_name", data.get('fName')),
                await sharedPreferences.setString(
                    "last_name", data.get('lName')),
                await sharedPreferences.setString(
                    "password", data.get('password')),
                print(data.get('fName')),
                print("ffffffffffffffffffffffffffffffffffffffffffff"),
                print(data.get('lName')),
                if (data.get('type') == 'Customer')
                  {
                    await FirebaseFirestore.instance
                        .collection("SymptomsTestResults")
                        .doc(user.uid)
                        .get()
                        .then((value) async => {
                              localStorageValue = value['HbA1c'],
                              await sharedPreferences.setString(
                                  'HbA1c', localStorageValue),
                            }),
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => forntscreen()))
                  }
                else if (data['type'] == 'Doctor')
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorLandingScreen()))
                  }
                else
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => forntscreenR()))
                  }
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
      print('-000-0-0-0-0-0-0-0-$e');
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  height: 0.15.sh,
                  width: 0.15.sw,
                  margin: EdgeInsets.only(top: 0.02.sh, right: 0.10.sw),
                  child: Image.asset("assets/ic_logo.png")),
            ),
          ],
        ),
      ),
      key: scaffKey,
      body: Container(
          height: MediaQuery.of(context).size.height * 3,
          width: MediaQuery.of(context).size.width * 3,
          //color: Colors.blue,
          child: ListView(
            children: [
              Container(
                // color: Colors.red,
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 2.3,
                      //color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container()),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 10,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => singup()));
                              },
                              child: Text(
                                "Create acccount",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        "Log in",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Email',
                                contentPadding:
                                    EdgeInsets.only(left: 15.0, top: 15),
                                border: InputBorder.none,
                              ),
                              controller: _controller,
                              validator: (val) => val!.isEmpty ||
                                      !val.contains("@") ||
                                      val != _controller.text
                                  ? "Enter Valid email "
                                  : null,
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: TextFormField(
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
                                contentPadding:
                                    EdgeInsets.only(left: 15.0, top: 15),
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

                            // TextFormField(
                            //   controller: _controllerPass,
                            //   validator: (val) {
                            //     if (val!.isEmpty || val.length <= 8) {
                            //       return "enter a password greater then 8";
                            //     }
                            //   },
                            //   onSaved: (String? value) {
                            //     formValues['password'] = value;
                            //   },
                            //   inputFormatters: [
                            //     LengthLimitingTextInputFormatter(12),
                            //     FilteringTextInputFormatter.allow(
                            //         RegExp("[0-9,@#*&^%?/>< a-z A-Z ]"))
                            //   ],
                            //   obscureText: show,
                            //   decoration: const InputDecoration(
                            //
                            //       contentPadding:
                            //           EdgeInsets.only(left: 15.0, top: 15),
                            //       border: InputBorder.none,
                            //
                            //       hintText: 'Password'),
                            // ),
                          ),
                          Divider(
                            thickness: 1,
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (!_formKey.currentState!.validate()) {
                          return;
                        }
                        _formKey.currentState!.save();
                        logIn(formValues).then((value) => {
                              if (value)
                                {loadUser()}
                              else
                                {print('loginErrorrrr')}
                            });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 12),
                        height: 43,
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: loading.value == true
                            ? CircularProgressIndicator()
                            : Center(
                                child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w600),
                              )),
                        color: Colors.lightGreen,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => newpassword()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Container(
              //         margin: EdgeInsets.only(left: 70, right: 70),
              //         height: 5,
              //         width: 160,
              //         decoration: BoxDecoration(
              //             color: Colors.black,
              //             borderRadius: BorderRadius.all(Radius.circular(10)))),
              //   ],
              // ),
            ],
          )),
    );
  }
}
