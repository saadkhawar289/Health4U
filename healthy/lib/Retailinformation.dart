import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthy/frontscreenRetail.dart';
import 'package:healthy/login.dart';
import 'package:healthy/signup.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Retailinformation extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Retailinformation> {
  ValueNotifier<bool> loader=ValueNotifier(false);
String meassage='please enter another email';
final retailerScaffold = GlobalKey<ScaffoldState>(debugLabel: "retailerScaffold");


_showSnackBar(String text) {
  final snackBar = SnackBar(
    content: Text('$text'),
  );
  retailerScaffold.currentState!.showSnackBar(snackBar);
}

Future<bool> addRetailerData() async {

  print('=============enter addretailer');

  try{
    User? user = FirebaseAuth.instance.currentUser;
    retailerData['uiD']=user!.uid;

    await    FirebaseFirestore.instance.collection("Retailer").doc(user.uid).set(retailerData);
    setState(() {
      loader.value=false;

    });

   return true;
  }
  catch(e){
    loader.value=false;
    return false;
  }



}


  Future<bool> signUp(Map<String, dynamic> data) async {
  print('=============enter signup');
  setState(() {
    loader.value=true;

  });
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _controlleremail.text, password: _controllerPass.text);
      SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
      sharedPreferences.setString("email", _controlleremail.text);
      sharedPreferences.setString("Password", _controllerPass.text);
      User? user = FirebaseAuth.instance.currentUser;
      formValues['uID'] = user!.uid;

      await    FirebaseFirestore.instance.collection("Users").doc(user.uid).set(data);

      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        meassage = 'The password provided is too weak';
        loader.value=false;
        _showSnackBar('The password provided is too weak');
        return false;
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        meassage = 'The account already exists for that email.';
        loader.value=false;
        _showSnackBar('The account already exists for that email.');
        return false;
      } else if (e.toString() ==
          '[firebase_auth/invalid-email] The email address is badly formatted') {
        meassage = 'enter valid email';
        loader.value=false;
        _showSnackBar('enter valid email');
      }
      return false;
    } catch (e) {
      print(e);
      loader.value=false;
      return false;
    }
  }


  Map<String, dynamic> retailerData = {

    'brandName':null,
    'postCode':null,
    'products':[],
    'uiD':null,
  };

  Map<String, dynamic> formValues = {
    'fNane':'',
    'lName':'',
    'date':'',
    'type':'Retailer',
    'email': null,
    'password': null,
    'uID': null,
    //'products':null
  };





  int _value = 0;
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controlleremail = TextEditingController();
  TextEditingController _controllerconfirm = TextEditingController();
  TextEditingController _controllercode = TextEditingController();
  TextEditingController _controllerPass = TextEditingController();
  TextEditingController _controllerPhone = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    singup ss = singup();

    return Container(
      color: Colors.white,
      child:SafeArea(
        child: Scaffold(
          key:retailerScaffold ,
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
                      child: InkWell(
                        onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));},
                        child: Text(
                          'Exsiting User?Log in',
                          style: TextStyle(
                              fontSize: 15,
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
                      Text(
                        'Retailer Information',
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
                            hintText: 'Brand Name',
                            contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                            border: InputBorder.none,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z, ]"))
                          ],
                          controller: _controllerName,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please Enter the Brand Name";
                            }
                          },
                        onSaved: (String? value) {
                          retailerData['brandName'] = value;
                        },),

                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      TextFormField(
                        inputFormatters: [

                          FilteringTextInputFormatter.allow(
                              RegExp("[0-9,@,a-z,A-Z,.]"))
                        ],
                        decoration: InputDecoration(
                          hintText: 'Email address',
                          contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                          border: InputBorder.none,
                        ),
                        controller: _controlleremail,
                        validator: (val) => val!.isEmpty || !val.contains("@")
                            ? "enter a valid eamil"
                            : null,
                          onSaved: (String? value) {
                            formValues['email'] = value;
                          }
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      TextFormField(
                        inputFormatters: [

                          FilteringTextInputFormatter.allow(
                              RegExp("[0-9,@,a-z,A-Z,.]"))
                        ],
                        decoration: InputDecoration(
                          hintText: 'Confirm Email',
                          contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                          border: InputBorder.none,
                        ),
                        controller: _controllerconfirm,
                        validator: (val) => val!.isEmpty ||
                            !val.contains("@") ||
                            val != _controlleremail.text
                            ? "email not matched"
                            : null,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Head office Post code',
                            contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                            border: InputBorder.none,
                          ),
                          controller: _controllercode,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(8),
                            FilteringTextInputFormatter.allow(
                                RegExp("[0-9 ,a-z,A-z]"))
                          ],
                          validator: (val) {
                            if (val!.isEmpty || val.length > 8 || val.length < 6) {
                              return "Please enter code";
                            }
                          },
                          onSaved: (String? value) {
                            retailerData['postCode'] = value;
                          }),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      // TextFormField(
                      //     decoration: InputDecoration(
                      //       hintText: 'Landline number(01274272388) ',
                      //       contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                      //       border: InputBorder.none,
                      //     ),
                      //     controller: _controllerPhone,
                      //     inputFormatters: [
                      //       LengthLimitingTextInputFormatter(11),
                      //       FilteringTextInputFormatter.allow(RegExp("[0-9 ]"))
                      //     ],
                      //     validator: (val) {
                      //       if (val!.isEmpty || val.length != 11) {
                      //         return "Please Enter Number ";
                      //       }
                      //     }),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10, right: 10),
                      //   child: Divider(
                      //     thickness: 2,
                      //   ),
                      // ),
                      TextFormField(
                          obscureText: show,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            suffixIcon:show==false?
                            InkWell(
                                onTap: (){
                                  setState(() {
                                    show=true;
                                  });

                                },
                                child: Icon(Icons.visibility,color: Colors.grey,)):
                            InkWell(
                                onTap: (){
                                  setState(() {
                                    show=false;
                                  });

                                },
                                child: Icon(Icons.visibility_off,color: Colors.grey)),
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
                            if (val!.isEmpty || val.length <= 6) {
                              return "enter a password greater then 6";
                            }
                          },
                          onSaved: (String? value) {
                            formValues['password'] = value;
                          }
                          ),
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
                        signUp(formValues).then((value) => {
                          if(value){
                            addRetailerData().then((value) => {
                              if(value){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => forntscreenR()))
                              }
                              else{
                                _showSnackBar('data not saved try again')
                              }
                            })

                          }
                          else{
                           //o _showSnackBar('some thing went wrong try agian or check internet connectivity')
                            
                          }
                          
                          
                        });
                         
                        },
                        child:loader.value==true?CircularProgressIndicator(color: Colors.lightGreen,): Container(
                          margin: EdgeInsets.only(top: 20),
                          height: 43,
                          width: MediaQuery.of(context).size.width / 1.1,
                          child: Center(child: Text("Next",style: TextStyle(fontSize: 17.sp,color: Colors.white,fontWeight: FontWeight.w600),)),
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
        ),
      ) ,
    );
  }
}
