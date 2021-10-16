import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/forntscreen.dart';

class selectpills2 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<selectpills2> {
  bool Metformin = false;
  bool Empagliflozin = false;
  bool Dapagliflozin = false;
  bool Canagliflozin = false;
  bool Gliclzide = false;
  bool Glimerpiride = false;
  bool Pioglitazone = false;
  bool Alogliptin = false;
  bool Linagliptin = false;
  bool Saxagliptin = false;
  bool Liraglutide = false;
  bool Dulaglutide = false;
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
            child: Text(
              "Pills",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height / 1.8,
              width: MediaQuery.of(context).size.width,
              //color: Colors.blue,
              child: SingleChildScrollView(
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
                          value: Metformin,
                          onChanged: (bool? value) {
                            // This is where we update the state when the checkbox is tapped
                            setState(() {
                              Metformin = value!;
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
                        title: Text("Empagliflozin",
                            style: TextStyle(
                              fontSize: 16.sp,
                            )),
                        trailing: Checkbox(
                          value: Empagliflozin,
                          onChanged: (bool? value) {
                            // This is where we update the state when the checkbox is tapped
                            setState(() {
                              Empagliflozin = value!;
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
                        title: Text("Dapagliflozin",
                            style: TextStyle(
                              fontSize: 16.sp,
                            )),
                        trailing: Checkbox(
                          value: Dapagliflozin,
                          onChanged: (bool? value) {
                            // This is where we update the state when the checkbox is tapped
                            setState(() {
                              Dapagliflozin = value!;
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
                        title: Text("Canagliflozin",
                            style: TextStyle(
                              fontSize: 16.sp,
                            )),
                        trailing: Checkbox(
                          value: Canagliflozin,
                          onChanged: (bool? value) {
                            // This is where we update the state when the checkbox is tapped
                            setState(() {
                              Canagliflozin = value!;
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
                        title: Text("Gliclzide",
                            style: TextStyle(
                              fontSize: 16.sp,
                            )),
                        trailing: Checkbox(
                          value: Gliclzide,
                          onChanged: (bool? value) {
                            // This is where we update the state when the checkbox is tapped
                            setState(() {
                              Gliclzide = value!;
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
                        title: Text("Glimerpiride",
                            style: TextStyle(
                              fontSize: 16.sp,
                            )),
                        trailing: Checkbox(
                          value: Glimerpiride,
                          onChanged: (bool? value) {
                            // This is where we update the state when the checkbox is tapped
                            setState(() {
                              Glimerpiride = value!;
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
                        title: Text("Pioglitazone",
                            style: TextStyle(
                              fontSize: 16.sp,
                            )),
                        trailing: Checkbox(
                          value: Pioglitazone,
                          onChanged: (bool? value) {
                            // This is where we update the state when the checkbox is tapped
                            setState(() {
                              Pioglitazone = value!;
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
                        title: Text("Alogliptin",
                            style: TextStyle(
                              fontSize: 16.sp,
                            )),
                        trailing: Checkbox(
                          value: Alogliptin,
                          onChanged: (bool? value) {
                            // This is where we update the state when the checkbox is tapped
                            setState(() {
                              Alogliptin = value!;
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
                        title: Text("Linagliptin",
                            style: TextStyle(
                              fontSize: 16.sp,
                            )),
                        trailing: Checkbox(
                          value: Linagliptin,
                          onChanged: (bool? value) {
                            // This is where we update the state when the checkbox is tapped
                            setState(() {
                              Linagliptin = value!;
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
                        title: Text("Saxagliptin",
                            style: TextStyle(
                              fontSize: 16.sp,
                            )),
                        trailing: Checkbox(
                          value: Saxagliptin,
                          onChanged: (bool? value) {
                            // This is where we update the state when the checkbox is tapped
                            setState(() {
                              Saxagliptin = value!;
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
                        title: Text("Liraglutide",
                            style: TextStyle(
                              fontSize: 16.sp,
                            )),
                        trailing: Checkbox(
                          value: Liraglutide,
                          onChanged: (bool? value) {
                            // This is where we update the state when the checkbox is tapped
                            setState(() {
                              Liraglutide = value!;
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
                        title: Text("Dulaglutide",
                            style: TextStyle(
                              fontSize: 16.sp,
                            )),
                        trailing: Checkbox(
                          value: Dulaglutide,
                          onChanged: (bool? value) {
                            // This is where we update the state when the checkbox is tapped
                            setState(() {
                              Dulaglutide = value!;
                              // isChecked1 = false;
                            });
                          },
                        ),
                        //trailing: Icon(Icons.where_to_vote),
                      ),
                    ),
                  ],
                ),
              )),

          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => forntscreen()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              height: 43,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Center(
                  child: Text("Next",
                      style: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600))),
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
