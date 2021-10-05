import 'package:flutter/material.dart';
import 'package:healthy/setting.dart';

class termcondition extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<termcondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => setting()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, top: 60),
                    height: 20,
                    width: 30,
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 90, top: 60),
                  height: 20,
                  width: 130,

                  //color: Colors.red,
                  child: Text(
                    "Term & Conditions",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "terms, the rules and the guidelines of acceptable \n"
                  "behavior and other useful sections to which \n"
                  "users must agree in order to use or access\n"
                  " your website and mobile app.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          // Container(
          //     margin: EdgeInsets.only(top: 380, left: 80, right: 80),
          //     height: 5,
          //     width: 160,
          //     decoration: BoxDecoration(
          //         color: Colors.black,
          //         borderRadius: BorderRadius.all(Radius.circular(10)))),
        ],
      ),
    );
  }
}
