import 'package:flutter/material.dart';
import 'package:healthy/Emailpassword.dart';

class againpassword extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<againpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              // child: Icon(Icons.west_sharp),
              child: Image.asset("assets/35438.png"),
            ),
          ],
        ),
        Container(
          height: 30,
          width: 40,
          //color: Colors.red,
          margin: EdgeInsets.only(left: 15, top: 20),
          child: Row(
            children: [
              Text(
                'New Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          height: 70,
          width: 40,

          //color: Colors.red,
          margin: EdgeInsets.only(left: 8, top: 20),
          child: Row(
            children: [
              Text(
                'Enter the email you used to create your \n account and we,ll send you an email to \n reset your password',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'New password',
              contentPadding: EdgeInsets.only(left: 15.0, top: 15),
              border: InputBorder.none,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Divider(
            thickness: 2,
          ),
        ),
        Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => emailpassword()));
              },
              child: Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 15,
                ),
                height: 50,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Center(child: Text("Save Passmword")),
                color: const Color(0xFF999999),
              ),
            ),
          ],
        ),
        // Row(
        //   children: [
        //     Container(
        //         margin: EdgeInsets.only(top: 380, left: 100),
        //         height: 5,
        //         width: 160,
        //         decoration: BoxDecoration(
        //             color: Colors.black,
        //             borderRadius: BorderRadius.all(Radius.circular(10)))),
        //   ],
        // ),
      ],
    ));
  }
}
