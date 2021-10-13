import 'package:flutter/material.dart';

import 'changepassword.dart';

class EditProfilePatient extends StatefulWidget {
  @override
  _EditProfilePatientState createState() => _EditProfilePatientState();
}

class _EditProfilePatientState extends State<EditProfilePatient> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.7,
            backgroundColor: const Color(0xFFF7F7F7),
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.black,
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Edit Profile",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                )
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'First Name',
                        suffixText: "Edit  ",
                        contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                        border: InputBorder.none,
                      ),
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
                        suffixText: "Edit  ",
                        contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                        border: InputBorder.none,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: '12/12/2020',
                        suffixText: "Edit  ",
                        contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                        border: InputBorder.none,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => changepassword()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Container(
                          color: const Color(0xFFF7F7F7),
                          // color: Colors.lightGreen,
                          height: 45,
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Change Password",
                                  // style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  // color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
