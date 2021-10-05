import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login1 extends StatefulWidget {
  @override
  _Login1State createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF999999),
        toolbarHeight: 100,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
                //color: Colors.black,
                image: DecorationImage(
                    image: AssetImage("assets/Rectangle 6302.png"))),
          ),
          Container(
            margin: EdgeInsets.only(left: 18),
            height: 50,
            width: MediaQuery.of(context).size.width / 1.1,
            color: const Color(0xFF999999),
            child: Center(child: Text("Customer")),
          ),
          Container(
            margin: EdgeInsets.only(left: 18, top: 10),
            height: 50,
            width: MediaQuery.of(context).size.width / 1.1,
            color: const Color(0xFF999999),
            child: Center(child: Text("Health Care Provider")),
          ),
          Container(
            margin: EdgeInsets.only(left: 18, top: 10),
            height: 50,
            width: MediaQuery.of(context).size.width / 1.1,
            color: const Color(0xFF999999),
            child: Center(child: Text("SuperMarket Chain")),
          ),
        ],
      ),
    );
  }
}
