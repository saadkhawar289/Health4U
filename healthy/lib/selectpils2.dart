import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/forntscreen.dart';

class selectpills2 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<selectpills2> {

  initState() {
    loadUserPills();
    super.initState();
  }



  List<String> listOPills = [];
  Map<String, dynamic> pills = {'pills': []};
  List<dynamic> fetchedListOMedicines = [];
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



  Future<bool> loadUserPills() async {
    try {
      // loader = true;
      print('loading===================================');
      User? user = FirebaseAuth.instance.currentUser;

      await FirebaseFirestore.instance
          .collection("Patient")
          .doc(user!.uid)
          .get()
          .then((data) => {

        fetchedListOMedicines = data['pills'],
        print('${fetchedListOMedicines.length}---------fetchedListOMedicines'),
        fetchedListOMedicines.forEach((element) {
          if (element.contains('Metformin'))
          {
            setState(() {
              Metformin = true;

            });
          }
          else if (element.contains('Empagliflozin'))
          {
            setState(() {
              Empagliflozin =true;
            });
          }
          else if (element.contains('Dapagliflozin'))
          {
            setState(() {
              Dapagliflozin = true;
            });
          }
          else if (element.contains('Canagliflozin'))
          {
            setState(() {
              Canagliflozin = true;
            });
          }
          else if (element.contains('Gliclzide'))
          {
            setState(() {
              Gliclzide = true;
            });
          }
          else if (element.contains('Glimerpiride'))
          {
            setState(() {
              Pioglitazone = true;
            });
          }
          else if (element.contains('Pioglitazone'))
          {
            setState(() {
              Pioglitazone = true;
            });
          }
          else if (element.contains('Alogliptin'))
          {
            setState(() {
              Alogliptin = true;
            });
          }
          else if (element.contains('Linagliptin'))
          {
            setState(() {
              Linagliptin = true;
            });
          }
          else if (element.contains('Saxagliptin'))
          {
            setState(() {
              Saxagliptin = true;
            });
          }
          else if (element.contains('Liraglutide'))
          {
            setState(() {
              Liraglutide = true;
            });
          }
          else if (element.contains('Liraglutide'))
          {
            setState(() {
              Liraglutide = true;
            });
          }

        })

        //
      });
      print('loading++++++++++++++++++++++++++++');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        return false;
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
    // loader = false;

    return true;
  }

  Future<bool> addPatientPills(Map<String, dynamic> data) async {
    try {
print(';;;;;;;;;;;;;;;');
      User? user = FirebaseAuth.instance.currentUser;
      DocumentReference ref =
      FirebaseFirestore.instance.collection("Patient").doc(user!.uid);
      ref.update(data);
      print('ssssssssssssssss');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return false;
      } else if (e.code == 'email-already-in-use') {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }

    return true;
  }









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
              child: Icon(Icons.arrow_back_ios),
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
                              if(value){
                                listOPills.add('Metformin');
                              }
                              else{
                                listOPills.remove('Metformin');
                              }
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
                              if(value){
                                listOPills.add('Empagliflozin');
                              }
                              else{
                                listOPills.remove('Empagliflozin');
                              }                            });
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
                              if(value){
                                listOPills.add('Dapagliflozin');
                              }
                              else{
                                listOPills.remove('Dapagliflozin');
                              }                                  });
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
                              if(value){
                                listOPills.add('Canagliflozin');
                              }
                              else{
                                listOPills.remove('Canagliflozin');
                              }                             });
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
                              if(value){
                                listOPills.add('Gliclzide');
                              }
                              else{
                                listOPills.remove('Gliclzide');
                              }
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
                              if(value){
                                listOPills.add('Glimerpiride');
                              }
                              else{
                                listOPills.remove('Glimerpiride');
                              }                            });
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
                              if(value){
                                listOPills.add('Pioglitazone');
                              }
                              else{
                                listOPills.remove('Pioglitazone');
                              }
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
                              if(value){
                                listOPills.add('Alogliptin');
                              }
                              else{
                                listOPills.remove('Alogliptin');
                              }                            });
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
                              if(value){
                                listOPills.add('Linagliptin');
                              }
                              else{
                                listOPills.remove('Linagliptin');
                              }
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
                              if(value){
                                listOPills.add('Saxagliptin');
                              }
                              else{
                                listOPills.remove('Saxagliptin');
                              }                            });
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
                              if(value){
                                listOPills.add('Liraglutide');
                              }
                              else{
                                listOPills.remove('Liraglutide');
                              }                                  });
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
                              if(value){
                                listOPills.add('Dulaglutide');
                              }
                              else{
                                listOPills.remove('Dulaglutide');
                              }                            });
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
              pills['pills']=listOPills;
              print(listOPills.length);
              addPatientPills(pills).then((value) => {
                if(value){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => forntscreen()))
                }
            else{
  print('error')
                }
              });

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
