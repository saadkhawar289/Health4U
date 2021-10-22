import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthy/Editmedication.dart';
import 'package:healthy/PatientVasulization.dart';
import 'package:healthy/purchase%20history.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'EditDiabetes.dart';
import 'EditProfilePatient.dart';
import 'forntscreen.dart';

class profile3 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<profile3> {
  String? firstName;
  String? lastName;
  bool loader = true;
  @override
  void initState() {
    loadUser();
    super.initState();
  }

  loadUser() async {
    setState(() {
      loader = true;
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      firstName = prefs.getString('first_name');
      lastName = prefs.getString('last_name');
      var date = prefs.getString('dob');
      print(lastName);

      loader = false;
    });
  }

  Widget build(BuildContext context) {
    return loader == true
        ? CircularProgressIndicator()
        : Scaffold(
            body: ListView(
              children: [
                Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xFFF7F7F7),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => forntscreen()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 10, top: 60),
                          height: 20,
                          width: 30,
                          decoration: BoxDecoration(
                              //color: Colors.red,
                              image: DecorationImage(
                                  image: AssetImage("assets/35438.png"))),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 110, top: 60),
                        height: 20,
                        width: 100,
//                  color: Colors.red,
                        child: Text(
                          "Profile",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          //  color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage("assets/ic_profile.png"))),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      //color: Colors.red,
                      child: Text(
                        '$firstName $lastName',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () async {
                        SharedPreferences preferences =
                            await SharedPreferences.getInstance();
                        var fName = preferences.getString('first_name');
                        var lName = preferences.getString('last_name');
                        var dob = preferences.getString('dob');
                        print(dob);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProfilePatient(
                                      dobs: dob!,
                                      fstName: fName!,
                                      lstName: lName!,
                                    )));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Edit Profile",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    editdiabetes(true, 'profile')));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Edit Diabetes Type",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => editmedication(true)));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Edit Medication",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PatientVisualization()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "My statistics ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    // InkWell(
                    //   onTap: () {
                    //     Navigator.push(context,
                    //         MaterialPageRoute(builder: (context) => DiabitiesSym()));
                    //   },
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(8.0),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       children: [
                    //         Text(
                    //           "View GP Notes",
                    //           style: TextStyle(fontWeight: FontWeight.bold),
                    //         ),
                    //         Icon(Icons.arrow_forward_ios),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // Divider(
                    //   thickness: 1,
                    // ),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => purchasehistory()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Purchase History",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    // Container(
                    //     margin: EdgeInsets.only(top: 350, left: 70, right: 70),
                    //     height: 5,
                    //     width: 160,
                    //     decoration: BoxDecoration(
                    //         color: Colors.black,
                    //         borderRadius: BorderRadius.all(Radius.circular(10)))),
                  ],
                ),
              ],
            ),
          );
  }
}
