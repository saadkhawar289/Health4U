import 'package:flutter/material.dart';
import 'package:healthy/editprofile.dart';

class changepassword extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<changepassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, top: 50),
                    height: 20,
                    width: 30,
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 90, top: 60),
                  height: 30,
                  width: 150,
//                  color: Colors.red,
                  child: Text(
                    "Change Password",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
          ),
          Column(
            children: [
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Current password',
                  labelText: 'Current password',
                  contentPadding: EdgeInsets.only(left: 21.0, top: 15),
                  border: InputBorder.none,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 16),
                child: Divider(
                  thickness: 2,
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'New password',
                  labelText: 'New password',
                  contentPadding: EdgeInsets.only(left: 21.0, top: 15),
                  border: InputBorder.none,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 16),
                child: Divider(
                  thickness: 2,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => editprofile()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 30, left: 13, right: 12),
                  height: 43,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Center(child: Text("Save password")),
                  color: const Color(0xFF999999),
                ),
              ),
              // Container(
              //     margin: EdgeInsets.only(top: 450, left: 20),
              //     height: 5,
              //     width: 160,
              //     decoration: BoxDecoration(
              //         color: Colors.black,
              //         borderRadius: BorderRadius.all(Radius.circular(10)))),
            ],
          )
        ],
      ),
    );
  }
}
