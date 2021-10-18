import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;


class newpassword extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<newpassword> {

TextEditingController emailController =TextEditingController();
var key=GlobalKey<FormState>();
String? mail;
  Future<bool> passReset(String email)async{

    try{
      var url=Uri.parse('https://identitytoolkit.googleapis.com/v1/accounts:sendOobCode?key=AIzaSyDZO71lOat12Id_lb4zuX_gqNcApLphHVQ');
      final Map<String, dynamic> authData = {
        'email': email,
        'requestType': 'PASSWORD_RESET'
      };
      http.Response response;
      response = await http.post(
        url,
        body: json.encode(authData),
        headers: {'Content-type': 'application/json'},
      );
      print(response.body);
      return true;
    }
    catch(e){
      return false;
    }


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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: Theme.of(context).iconTheme,
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Form(
          key: key,
          child: ListView(
            children: [
              Container(
                // height: 30,
                // width: 40,
                //color: Colors.red,
                margin: EdgeInsets.only(left: 15, top: 20),
                child: Row(
                  children: [
                    Text(
                      'Enter your email registered \nwith our app',
                      style:
                          TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 70,
                width: 40,

                //color: Colors.red,
                margin: EdgeInsets.only(left: 8, top: 20),
                child: Row(
                  children: [
                    Text(
                      ' Enter the email you used to create your \n account and we,ll send you an email to \n reset your password',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: TextFormField(
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
                  controller: emailController,
                  validator: (val) =>
                  val!.isEmpty || !val.contains("@")
                      ? "enter a valid eamil"
                      : null,
                  onSaved: (String? value) {
                    mail = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Divider(
                  thickness: 2,
                ),
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      if(!key.currentState!.validate()){
                        return;
                      }
                      key.currentState!.save();
                      passReset(emailController.text).then((value) => {
                        if(value){
                          showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Confirmation!'),
                              content: Text(
                                  'Kindly check your email to reset your password'),
                              actions: <Widget>[
                                FlatButton(
                                  onPressed: () => {
                                    Navigator.of(context).pop(),
                                    Navigator.of(context).pop(),
                                  },
                                  child: Text('Okay'),
                                )
                              ],
                            );
                          })
                        }
                        else{
                          _showSnackBar('Some thing went wrong try again')
                        }
                      });

                    },
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 30,
                        ),
                        height: 50,
                        width: 0.80.sw,
                        child: Center(
                            child: Text(
                          "Reset",
                          style: TextStyle(fontSize: 17.sp),
                        )),
                        color: Colors.lightGreen,
                      ),
                    ),
                  ),
                ],
              ),
              // Row(
              //   children: [
              //     Container(
              //         margin: EdgeInsets.only(top: 380, left: 100),
              //         height: 5,
              //         width: 160,
              //         decoration: BoxDecoration(
              //             color: Colors.black,
              //             borderRadius: BorderRadius.all(Radius.circular(10)))),
              //   ],
              // ),
            ],
          ),
        ));
  }
}
