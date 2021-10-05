import 'package:flutter/material.dart';
import 'package:healthy/sugeryinformation.dart';

class personalinformation extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<personalinformation> {
  late DateTime pickedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Icon(Icons.west_sharp),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  ' Exsiting User?Log in',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
            height: 30,
            width: 40,
            //color: Colors.red,
            margin: EdgeInsets.only(left: 15, top: 40, bottom: 20),
            child: Row(
              children: [
                Text(
                  'Personal Information',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'First Name',
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
                onTap: () {
                  _pickDate() async {
                    DateTime? date = await showDatePicker(
                        context: context,
                        firstDate: DateTime(2001),
                        lastDate: DateTime(2022),
                        initialDate: pickedDate);

                    if (date != null) {
                      setState(() {
                        pickedDate = date;
                      });
                    }
                  }
                },
                decoration: InputDecoration(
                    hintText: 'Date of Birth',
                    contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                    border: InputBorder.none,
                    suffixIcon: (Icon(Icons.margin))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Divider(
                  thickness: 2,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Date of Birth',
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
                  hintText: 'Confirm Email',
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
                  hintText: 'Post code',
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
                  hintText: '44 03478950034',
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
                  hintText: '+12 03478950034',
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
                  hintText: 'password',
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
                  hintText: 'Confirm Password',
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
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, bottom: 5),
                    height: 20,
                    width: 20,
                    // color: Colors.cyanAccent,
                    color: const Color(0xFF999999),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 30,
                      //   color: Colors.red,
                      width: MediaQuery.of(context).size.width / 1.4,
                      child: Text('Terms and condition accepted'),
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SugeryInformation()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 43,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Center(child: Text("Next")),
                  color: const Color(0xFF999999),
                ),
              ),
              // Container(
              //     margin: EdgeInsets.only(top: 20),
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
