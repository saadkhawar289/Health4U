import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthy/IntroScreen.dart';
import 'package:healthy/login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/selectAccount.dart';

class HomeScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomeScreen> {
  bool wilPop = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Confirmation!'),
                content: Text('Are you sure you want to quit?'),
                actions: <Widget>[
                  FlatButton(
                    onPressed: () {
                      exit(0);
                    },
                    child: Text('Yes'),
                  ),
                  FlatButton(
                    onPressed: () {
                      wilPop = false;
                      Navigator.pop(context);
                    },
                    child: Text('No'),
                  )
                ],
              );
            });
        return await wilPop;
      },
      child: Scaffold(
          body: Container(
        height: MediaQuery.of(context).size.height * 2,
        width: MediaQuery.of(context).size.width * 3,
        // color: Colors.orange,
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              //     color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 90),
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        //  color: Colors.black,
                        image: DecorationImage(
                            image: AssetImage("assets/ic_logo_intro.png"))),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    //  color: Colors.red,
                    //width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AccountSelection()));
                          },
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width / 2.5,
                            margin: EdgeInsets.only(left: 6, right: 6),
                            //   color: const Color(0xFF97d329),
                            color: Colors.lightGreen,
                            child: Center(child: Text("Sign up",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 17.sp),)),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 6, right: 6),
                            height: 50,
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: Center(child: Text("Log in",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 17.sp),)),
                            color: Colors.lightGreen,
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => IntroScreen()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Text("How it works"),
                    ),
                  )
                  // Container(
                  //   decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //           image: AssetImage("assets/Rectangle 6302.png"))),
                  // ),
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
        ),
      )),
    );
  }
}
