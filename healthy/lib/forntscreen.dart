import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/profile3.dart';
import 'package:healthy/setting.dart';
import 'package:healthy/shops.dart';
import 'package:healthy/sugeryinformation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

import 'OnlinePractitioner.dart';
import 'Provider/cart_view_model.dart';

class forntscreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<forntscreen> {
  Widget _buildDrawer(BuildContext context) {
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
            ListTile(
              leading: Icon(Icons.shopping_cart_sharp),
              title: Text('Shop'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => shops()));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profile3()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Online Practitioner'),
              onTap: () async{
                var pref = await SharedPreferences.getInstance();
                var name= pref.getString('first_name');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OnlinePractitioner(name!)));
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
                            onPressed: () => {
                        context.read<CartViewModel>().addedCartItems.clear(),

                        // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => HomeScreen())),
                              Navigator.pushReplacementNamed(
                                  context, '/homeScreen'),
                              // Navigator.of(context).pushReplacement(
                              //     MaterialPageRoute(
                              //         builder: (context) => home())),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          drawer: _buildDrawer(context),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color(0xFFF7F7F7),
            elevation: 0,
            // leading: Icon(Icons.arrow_back),
            toolbarHeight: 0.14.sh,
            iconTheme: Theme.of(context).iconTheme,
            title: Container(
                height: 0.15.sh,
                width: 0.15.sw,
                child: Image.asset("assets/ic_logo.png")),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height * 2,
            width: MediaQuery.of(context).size.width * 3,
            //color: Colors.red,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 120),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      //,color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage("assets/ic_logo_small.png"))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Center(
                    child: Text(
                      "Ready to shop?",
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Center(
                    child: Text(
                      "Get started by tapping",
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Center(
                    child: Text(
                      "on the shop button below",
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => shops()));
                  },
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 110, left: 10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(70)),
                          color: const Color(0xFFC4C4C4),
                          image: DecorationImage(
                              image: AssetImage("assets/ic_cart.png"))),
                    ),
                  ),
                ),

                // Column(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     Container(
                //         margin: EdgeInsets.only(top: 100, left: 20),
                //         height: 5,
                //         width: 160,
                //         decoration: BoxDecoration(
                //             color: Colors.black,
                //             borderRadius: BorderRadius.all(Radius.circular(10)))),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
