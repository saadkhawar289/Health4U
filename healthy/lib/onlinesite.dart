import 'package:flutter/material.dart';

class onlinesite extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<onlinesite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // color: Colors.red,
            child: Center(
                child: Text(
              "Redirect to online site",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
            )),
          )
        ],
      ),
    );
  }
}
