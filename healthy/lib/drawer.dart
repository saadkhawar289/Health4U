import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/profail2.dart';
import 'package:healthy/profile3.dart';
import 'package:healthy/profile3Doctor.dart';
import 'package:healthy/setting.dart';
import 'package:healthy/shops.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'OnlinePractitioner.dart';

class CustomDrawer extends StatelessWidget {
  final int vis;
  CustomDrawer({required this.vis});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            AppBar(
              elevation: 0,
              backgroundColor: Colors.white54,
              automaticallyImplyLeading:
                  false, // this for the button to hide when drawer is open
              title: InkWell(
                radius: 30,
                onTap: () => Navigator.of(context).pop(),
                child: Icon(
                  Icons.close,
                  size: 35,
                  color: Colors.black,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(top: 30.h, left: 20.w),
                height: 150,
                width: 150, //MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    color: Colors.white,

                    //  color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage("assets/ic_logo_intro.png"))),
              ),
            ),
            vis == 2 || vis == 3
                ? Container()
                : ListTile(
                    leading: Icon(Icons.shopping_cart_sharp),
                    title: Text('Shop'),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => shops()));
                    },
                  ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                if (vis == 2) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => profile4Doctor()));
                } else if (vis == 1) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profile3()));
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => profile2()));
                }
              },
            ),
            vis == 2 || vis == 3
                ? Container()
                : ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Online Practitioner'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OnlinePractitioner()));
                    },
                  ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => setting()));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Confirmation!'),
                        content: Text('Are you sure you want to logout?'),
                        actions: <Widget>[
                          FlatButton(
                            onPressed: () async {
                              FirebaseAuth.instance.signOut();
                              SharedPreferences pref =
                                  await SharedPreferences.getInstance();
                              pref.remove('first_name');
                              pref.remove('last_name');
                              pref.remove('password');
                              pref.remove('dob');

                              Navigator.pushReplacementNamed(
                                  context, '/homeScreen');
                            },
                            child: Text('Yes'),
                          ),
                          FlatButton(
                            onPressed: () => {
                              Navigator.of(context).pop(),
                            },
                            child: Text('No'),
                          )
                        ],
                      );
                    });
              },
            ),
            //  LogoutListTile()
          ],
        ),
      ),
    );
  }
}
