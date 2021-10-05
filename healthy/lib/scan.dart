import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class scan extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<scan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Icon(Icons.west_sharp),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Rectangle 5743.png"))),
          ),
        ],
      ),
    );
  }
}
