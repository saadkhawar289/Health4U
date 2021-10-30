import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthy/setting.dart';

class aboutus extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<aboutus> {
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
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, top: 60),
                    height: 20,
                    width: 30,
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 110, top: 60),
                  height: 20,
                  width: 100,
//                  color: Colors.red,
                  child: Text(
                    "About us",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
          ),
          Container(
            margin: EdgeInsets.only(top: 70),
            height: 180,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                //color: Colors.red,
                image: DecorationImage(
                    image: AssetImage("assets/Rectangle 5867.png"))),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text('Healthy4You is a telehealth platform which personalises food and drink shopping according to medical history and also provides an online GP service',

                  style: TextStyle(fontSize: 14),
                ),
              )
            ],
          ),
          // Container(
          //     margin: EdgeInsets.only(top: 320, left: 80, right: 80),
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
