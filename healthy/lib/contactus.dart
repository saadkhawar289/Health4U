import 'package:flutter/material.dart';
import 'package:healthy/setting.dart';

class contactus extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<contactus> {
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
Navigator.of(context).pop();                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, top: 60),
                    height: 20,
                    width: 30,
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 90, top: 60),
                  height: 20,
                  width: 130,

                  //color: Colors.red,
                  child: Text(
                    "Contact us",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
          ),
          Container(
            padding: EdgeInsets.only(left: 15, top: 25),
            height: 50,
            width: MediaQuery.of(context).size.width,
            // color: Colors.red,
            child: Text(
              "Give us a call",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 20),
                child: Text(
                  "Monday-Friday: 8am-10am\nSaturday: 8am-10am\nSunday: 8am-10am",
                  style: TextStyle(fontSize: 17),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.only(top: 12),
              height: 43,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Center(child: Text("Call us")),
              color: Colors.lightGreen,
            ),
          ),
          // Container(
          //     margin: EdgeInsets.only(top: 450, left: 75, right: 75),
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
