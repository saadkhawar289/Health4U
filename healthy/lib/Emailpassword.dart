import 'package:flutter/material.dart';
import 'package:healthy/Email.dart';

class emailpassword extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<emailpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => email()));
      },
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Text(
          "Email with new \n Password link ",
          style: TextStyle(fontSize: 20),
        )),
      ),
    ));
  }
}
