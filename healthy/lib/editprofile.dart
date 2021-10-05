import 'package:flutter/material.dart';
import 'package:healthy/changepassword.dart';

class editprofile extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<editprofile> {
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
                    margin: EdgeInsets.only(left: 10, top: 60),
                    height: 20,
                    width: 30,
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 110, top: 60),
                  height: 20,
                  width: 100,
//                  color: Colors.red,
                  child: Text(
                    "Edit Profile",
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
                decoration: InputDecoration(
                  hintText: 'First Name',
                  labelText: 'First Name',
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
                  labelText: 'Last Name',
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
                  hintText: '30/MM/YYYY',
                  labelText: 'Date of Birth',
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
                  hintText: 'Email',
                  labelText: 'Email',
                  suffixText: "Edit      ",
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
                  padding: const EdgeInsets.only(top: 35, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Change password",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Divider(
                  thickness: 1,
                ),
              ),
              // Container(
              //     margin: EdgeInsets.only(top: 350),
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
