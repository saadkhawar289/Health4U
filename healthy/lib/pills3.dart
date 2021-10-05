import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/symptomsTest.dart';

class selectpills3 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<selectpills3> {
  bool zinic = false;
  bool zinic1 = false;
  bool zinic2 = false;
  bool zinic3 = false;
  bool zinic4 = false;
  bool zinic5 = false;
  bool zinic6 = false;
  bool zinic7 = false;
  bool zinic8 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(left: 10, top: 40),
              alignment: Alignment.centerLeft,
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 14),
            alignment: Alignment.centerLeft,
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Text(
              "What pills do you take?",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 14, top: 17),
            alignment: Alignment.centerLeft,
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                //  color: Colors.red,
                border: Border(
                    bottom: BorderSide(color: Colors.black26, width: 1))),
            // child: Text(
            //   "Insulin",
            //   style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            // ),
          ),
          Container(
              height: MediaQuery.of(context).size.height / 1.8,
              width: MediaQuery.of(context).size.width,
              //color: Colors.blue,
              child: Column(
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        //  color: Colors.red,
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.black26, width: 1))),
                    child: ListTile(
                      title: Text("Metformin",
                          style: TextStyle(
                            fontSize: 16.sp,
                          )),
                      trailing: Checkbox(
                        value: zinic,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            zinic = value!;
                            // isChecked1 = false;
                          });
                        },
                      ),
                      //trailing: Icon(Icons.where_to_vote),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        //  color: Colors.red,
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.black26, width: 1))),
                    child: ListTile(
                      title: Text("Metformin",
                          style: TextStyle(
                            fontSize: 16.sp,
                          )),
                      trailing: Checkbox(
                        value: zinic1,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            zinic1 = value!;
                            // isChecked1 = false;
                          });
                        },
                      ),
                      //trailing: Icon(Icons.where_to_vote),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        //  color: Colors.red,
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.black26, width: 1))),
                    child: ListTile(
                      title: Text("Metformin",
                          style: TextStyle(
                            fontSize: 16.sp,
                          )),
                      trailing: Checkbox(
                        value: zinic2,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            zinic2 = value!;
                            // isChecked1 = false;
                          });
                        },
                      ),
                      //trailing: Icon(Icons.where_to_vote),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        //  color: Colors.red,
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.black26, width: 1))),
                    child: ListTile(
                      title: Text("Metformin",
                          style: TextStyle(
                            fontSize: 16.sp,
                          )),
                      trailing: Checkbox(
                        value: zinic3,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            zinic3 = value!;
                            // isChecked1 = false;
                          });
                        },
                      ),
                      //trailing: Icon(Icons.where_to_vote),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        //  color: Colors.red,
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.black26, width: 1))),
                    child: ListTile(
                      title: Text("Metformin",
                          style: TextStyle(
                            fontSize: 16.sp,
                          )),
                      trailing: Checkbox(
                        value: zinic4,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            zinic4 = value!;
                            // isChecked1 = false;
                          });
                        },
                      ),
                      //trailing: Icon(Icons.where_to_vote),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        //  color: Colors.red,
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.black26, width: 1))),
                    child: ListTile(
                      title: Text("Metformin",
                          style: TextStyle(
                            fontSize: 16.sp,
                          )),
                      trailing: Checkbox(
                        value: zinic6,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            zinic6 = value!;
                            // isChecked1 = false;
                          });
                        },
                      ),
                      //trailing: Icon(Icons.where_to_vote),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        //  color: Colors.red,
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.black26, width: 1))),
                    child: ListTile(
                      title: Text("Metformin",
                          style: TextStyle(
                            fontSize: 16.sp,
                          )),
                      trailing: Checkbox(
                        value: zinic7,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            zinic7 = value!;
                            // isChecked1 = false;
                          });
                        },
                      ),
                      //trailing: Icon(Icons.where_to_vote),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        //  color: Colors.red,
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.black26, width: 1))),
                    child: ListTile(
                      title: Text("Metformin",
                          style: TextStyle(
                            fontSize: 16.sp,
                          )),
                      trailing: Checkbox(
                        value: zinic8,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            zinic8 = value!;
                            // isChecked1 = false;
                          });
                        },
                      ),
                      //trailing: Icon(Icons.where_to_vote),
                    ),
                  ),
                ],
              )),

          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SymptomsTest(
                            navigation: 'patient',
                          )));
            },
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              height: 43,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Center(
                  child: Text("Next",
                      style: TextStyle(
                        fontSize: 17.sp,
                      ))),
              color: Colors.lightGreen,
            ),
          ),
          SizedBox(
            height: 30,
          )
          // Container(
          //     margin: EdgeInsets.only(top: 40, left: 100, right: 100),
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
