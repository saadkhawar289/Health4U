// import 'package:flutter/material.dart';
// //import 'package:healthy/forntscreen.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:healthy/forntscreen.dart';
//
// class editmedication2 extends StatefulWidget {
//   @override
//   _State createState() => _State();
// }
//
// class _State extends State<editmedication2> {
//   bool zinic = false;
//   bool zinic1 = false;
//   bool zinic2 = false;
//   bool zinic3 = false;
//   bool zinic4 = false;
//   bool zinic5 = false;
//   bool zinic6 = false;
//   bool zinic7 = false;
//   bool zinic8 = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           InkWell(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: Container(
//               padding: EdgeInsets.only(left: 10, top: 40),
//               alignment: Alignment.centerLeft,
//               height: 100,
//               width: MediaQuery.of(context).size.width,
//               child: Icon(Icons.arrow_forward_ios),
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.only(left: 14),
//             alignment: Alignment.centerLeft,
//             height: 60,
//             width: MediaQuery.of(context).size.width,
//             child: Text(
//               "What medication do you take?",
//               style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.only(left: 14, top: 17),
//             alignment: Alignment.centerLeft,
//             height: 60,
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//                 //  color: Colors.red,
//                 border: Border(
//                     bottom: BorderSide(color: Colors.black26, width: 1))),
//             // child: Text(
//             //   "Insulin",
//             //   style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
//             // ),
//           ),
//           Container(
//               height: MediaQuery.of(context).size.height / 1.8,
//               width: MediaQuery.of(context).size.width,
//               //color: Colors.blue,
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 50,
//                       decoration: BoxDecoration(
//                           //  color: Colors.red,
//                           border: Border(
//                               bottom:
//                                   BorderSide(color: Colors.black26, width: 1))),
//                       child: ListTile(
//                         title: Text("Metformin",
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                             )),
//                         trailing: Checkbox(
//                           value: zinic,
//                           onChanged: (bool? value) {
//                             // This is where we update the state when the checkbox is tapped
//                             setState(() {
//                               zinic = value!;
//                               // isChecked1 = false;
//                             });
//                           },
//                         ),
//                         //trailing: Icon(Icons.where_to_vote),
//                       ),
//                     ),
//                     Container(
//                       height: 50,
//                       decoration: BoxDecoration(
//                           //  color: Colors.red,
//                           border: Border(
//                               bottom:
//                                   BorderSide(color: Colors.black26, width: 1))),
//                       child: ListTile(
//                         title: Text("Metformin",
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                             )),
//                         trailing: Checkbox(
//                           value: zinic1,
//                           onChanged: (bool? value) {
//                             // This is where we update the state when the checkbox is tapped
//                             setState(() {
//                               zinic1 = value!;
//                               // isChecked1 = false;
//                             });
//                           },
//                         ),
//                         //trailing: Icon(Icons.where_to_vote),
//                       ),
//                     ),
//                     Container(
//                       height: 50,
//                       decoration: BoxDecoration(
//                           //  color: Colors.red,
//                           border: Border(
//                               bottom:
//                                   BorderSide(color: Colors.black26, width: 1))),
//                       child: ListTile(
//                         title: Text("Metformin",
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                             )),
//                         trailing: Checkbox(
//                           value: zinic2,
//                           onChanged: (bool? value) {
//                             // This is where we update the state when the checkbox is tapped
//                             setState(() {
//                               zinic2 = value!;
//                               // isChecked1 = false;
//                             });
//                           },
//                         ),
//                         //trailing: Icon(Icons.where_to_vote),
//                       ),
//                     ),
//                     Container(
//                       height: 50,
//                       decoration: BoxDecoration(
//                           //  color: Colors.red,
//                           border: Border(
//                               bottom:
//                                   BorderSide(color: Colors.black26, width: 1))),
//                       child: ListTile(
//                         title: Text("Metformin",
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                             )),
//                         trailing: Checkbox(
//                           value: zinic3,
//                           onChanged: (bool? value) {
//                             // This is where we update the state when the checkbox is tapped
//                             setState(() {
//                               zinic3 = value!;
//                               // isChecked1 = false;
//                             });
//                           },
//                         ),
//                         //trailing: Icon(Icons.where_to_vote),
//                       ),
//                     ),
//                     Container(
//                       height: 50,
//                       decoration: BoxDecoration(
//                           //  color: Colors.red,
//                           border: Border(
//                               bottom:
//                                   BorderSide(color: Colors.black26, width: 1))),
//                       child: ListTile(
//                         title: Text("Metformin",
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                             )),
//                         trailing: Checkbox(
//                           value: zinic4,
//                           onChanged: (bool? value) {
//                             // This is where we update the state when the checkbox is tapped
//                             setState(() {
//                               zinic4 = value!;
//                               // isChecked1 = false;
//                             });
//                           },
//                         ),
//                         //trailing: Icon(Icons.where_to_vote),
//                       ),
//                     ),
//                     Container(
//                       height: 50,
//                       decoration: BoxDecoration(
//                           //  color: Colors.red,
//                           border: Border(
//                               bottom:
//                                   BorderSide(color: Colors.black26, width: 1))),
//                       child: ListTile(
//                         title: Text("Metformin",
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                             )),
//                         trailing: Checkbox(
//                           value: zinic6,
//                           onChanged: (bool? value) {
//                             // This is where we update the state when the checkbox is tapped
//                             setState(() {
//                               zinic6 = value!;
//                               // isChecked1 = false;
//                             });
//                           },
//                         ),
//                         //trailing: Icon(Icons.where_to_vote),
//                       ),
//                     ),
//                     Container(
//                       height: 50,
//                       decoration: BoxDecoration(
//                           //  color: Colors.red,
//                           border: Border(
//                               bottom:
//                                   BorderSide(color: Colors.black26, width: 1))),
//                       child: ListTile(
//                         title: Text("Metformin",
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                             )),
//                         trailing: Checkbox(
//                           value: zinic7,
//                           onChanged: (bool? value) {
//                             // This is where we update the state when the checkbox is tapped
//                             setState(() {
//                               zinic7 = value!;
//                               // isChecked1 = false;
//                             });
//                           },
//                         ),
//                         //trailing: Icon(Icons.where_to_vote),
//                       ),
//                     ),
//                     Container(
//                       height: 50,
//                       decoration: BoxDecoration(
//                           //  color: Colors.red,
//                           border: Border(
//                               bottom:
//                                   BorderSide(color: Colors.black26, width: 1))),
//                       child: ListTile(
//                         title: Text("Metformin",
//                             style: TextStyle(
//                               fontSize: 16.sp,
//                             )),
//                         trailing: Checkbox(
//                           value: zinic8,
//                           onChanged: (bool? value) {
//                             // This is where we update the state when the checkbox is tapped
//                             setState(() {
//                               zinic8 = value!;
//                               // isChecked1 = false;
//                             });
//                           },
//                         ),
//                         //trailing: Icon(Icons.where_to_vote),
//                       ),
//                     ),
//                   ],
//                 ),
//               )),
//
//           InkWell(
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => forntscreen(
//                             navigation: 'patient',
//                           )));
//             },
//             child: Container(
//               margin: EdgeInsets.only(left: 15, right: 15),
//               height: 45,
//               width: MediaQuery.of(context).size.width / 1.1,
//               child: Center(
//                   child: Text("Next",
//                       style: TextStyle(
//                         fontSize: 17.sp,
//                       ))),
//               color: Colors.lightGreen,
//             ),
//           ),
//           SizedBox(
//             height: 30,
//           )
//           // Container(
//           //     margin: EdgeInsets.only(top: 40, left: 100, right: 100),
//           //     height: 5,
//           //     width: 160,
//           //     decoration: BoxDecoration(
//           //         color: Colors.black,
//           //         borderRadius: BorderRadius.all(Radius.circular(10)))),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:healthy/forntscreen.dart';
//
// class editmedication2 extends StatefulWidget {
//   @override
//   _State createState() => _State();
// }
//
// class _State extends State<editmedication2> {
//   @override
//   initState() {
//     super.initState();
//   }
//
//   bool Humalog = false;
//   bool Lantus = false;
//   bool Levemir = false;
//   bool Novorapid = false;
//   bool Insuman = false;
//   bool Insulatard = false;
//
//   List<bool> value = [];
//   List<String> listOMedicines = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           InkWell(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: Container(
//               padding: EdgeInsets.only(left: 10, top: 40),
//               alignment: Alignment.centerLeft,
//               height: 100,
//               width: MediaQuery.of(context).size.width,
//               child: Icon(Icons.arrow_forward_ios),
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.only(left: 14),
//             alignment: Alignment.centerLeft,
//             height: 60,
//             width: MediaQuery.of(context).size.width,
//             child: Text(
//               "What medication do you take?",
//               style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.only(left: 14, top: 17),
//             alignment: Alignment.centerLeft,
//             height: 60,
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//                 //  color: Colors.red,
//                 border: Border(
//                     bottom: BorderSide(color: Colors.black26, width: 1))),
//             child: Text(
//               "Insulin",
//               style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Container(
//               height: MediaQuery.of(context).size.height / 1.8,
//               width: MediaQuery.of(context).size.width,
//               //color: Colors.blue,
//               child: Column(
//                 children: [
//                   Container(
//                     height: 50,
//                     decoration: BoxDecoration(
//                         //  color: Colors.red,
//                         border: Border(
//                             bottom:
//                                 BorderSide(color: Colors.black26, width: 1))),
//                     child: ListTile(
//                       title: Text("Humalog",
//                           style: TextStyle(
//                             fontSize: 16.sp,
//                           )),
//                       trailing: Checkbox(
//                         value: Humalog,
//                         onChanged: (bool? value) {
//                           // This is where we update the state when the checkbox is tapped
//                           setState(() {
//                             Humalog = value!;
//                             // isChecked1 = false;
//                           });
//                         },
//                       ),
//                       //trailing: Icon(Icons.where_to_vote),
//                     ),
//                   ),
//                   Container(
//                     height: 50,
//                     decoration: BoxDecoration(
//                         //  color: Colors.red,
//                         border: Border(
//                             bottom:
//                                 BorderSide(color: Colors.black26, width: 1))),
//                     child: ListTile(
//                       title: Text("Lantus",
//                           style: TextStyle(
//                             fontSize: 16.sp,
//                           )),
//                       trailing: Checkbox(
//                         value: Lantus,
//                         onChanged: (bool? value) {
//                           // This is where we update the state when the checkbox is tapped
//                           setState(() {
//                             Lantus = value!;
//                             // isChecked1 = false;
//                           });
//                         },
//                       ),
//                       //trailing: Icon(Icons.where_to_vote),
//                     ),
//                   ),
//                   Container(
//                     height: 50,
//                     decoration: BoxDecoration(
//                         //  color: Colors.red,
//                         border: Border(
//                             bottom:
//                                 BorderSide(color: Colors.black26, width: 1))),
//                     child: ListTile(
//                       title: Text("Levemir",
//                           style: TextStyle(
//                             fontSize: 16.sp,
//                           )),
//                       trailing: Checkbox(
//                         value: Levemir,
//                         onChanged: (bool? value) {
//                           // This is where we update the state when the checkbox is tapped
//                           setState(() {
//                             Levemir = value!;
//                             // isChecked1 = false;
//                           });
//                         },
//                       ),
//                       //trailing: Icon(Icons.where_to_vote),
//                     ),
//                   ),
//                   Container(
//                     height: 50,
//                     decoration: BoxDecoration(
//                         //  color: Colors.red,
//                         border: Border(
//                             bottom:
//                                 BorderSide(color: Colors.black26, width: 1))),
//                     child: ListTile(
//                       title: Text("Novorapid",
//                           style: TextStyle(
//                             fontSize: 16.sp,
//                           )),
//                       trailing: Checkbox(
//                         value: Novorapid,
//                         onChanged: (bool? value) {
//                           // This is where we update the state when the checkbox is tapped
//                           setState(() {
//                             Novorapid = value!;
//                             // isChecked1 = false;
//                           });
//                         },
//                       ),
//                       //trailing: Icon(Icons.where_to_vote),
//                     ),
//                   ),
//                   Container(
//                     height: 50,
//                     decoration: BoxDecoration(
//                         //  color: Colors.red,
//                         border: Border(
//                             bottom:
//                                 BorderSide(color: Colors.black26, width: 1))),
//                     child: ListTile(
//                       title: Text("Insuman",
//                           style: TextStyle(
//                             fontSize: 16.sp,
//                           )),
//                       trailing: Checkbox(
//                         value: Insuman,
//                         onChanged: (bool? value) {
//                           // This is where we update the state when the checkbox is tapped
//                           setState(() {
//                             Insuman = value!;
//                             // isChecked1 = false;
//                           });
//                         },
//                       ),
//                       //trailing: Icon(Icons.where_to_vote),
//                     ),
//                   ),
//                   Container(
//                     height: 50,
//                     decoration: BoxDecoration(
//                         //  color: Colors.red,
//                         border: Border(
//                             bottom:
//                                 BorderSide(color: Colors.black26, width: 1))),
//                     child: ListTile(
//                       title: Text("Insulatard",
//                           style: TextStyle(
//                             fontSize: 16.sp,
//                           )),
//                       trailing: Checkbox(
//                         value: Insulatard,
//                         onChanged: (bool? value) {
//                           // This is where we update the state when the checkbox is tapped
//                           setState(() {
//                             Insulatard = value!;
//                             // isChecked1 = false;
//                           });
//                         },
//                       ),
//                       //trailing: Icon(Icons.where_to_vote),
//                     ),
//                   ),
//                   // Container(
//                   //   height: 50,
//                   //   decoration: BoxDecoration(
//                   //       //  color: Colors.red,
//                   //       border: Border(
//                   //           bottom:
//                   //               BorderSide(color: Colors.black26, width: 1))),
//                   //   child: ListTile(
//                   //     title: Text("Metformin",
//                   //         style: TextStyle(
//                   //           fontSize: 16.sp,
//                   //         )),
//                   //     trailing: Checkbox(
//                   //       value: zinic7,
//                   //       onChanged: (bool? value) {
//                   //         // This is where we update the state when the checkbox is tapped
//                   //         setState(() {
//                   //           zinic7 = value!;
//                   //           // isChecked1 = false;
//                   //         });
//                   //       },
//                   //     ),
//                   //     //trailing: Icon(Icons.where_to_vote),
//                   //   ),
//                   // ),
//                   // Container(
//                   //   height: 50,
//                   //   decoration: BoxDecoration(
//                   //       //  color: Colors.red,
//                   //       border: Border(
//                   //           bottom:
//                   //               BorderSide(color: Colors.black26, width: 1))),
//                   //   child: ListTile(
//                   //     title: Text("Metformin",
//                   //         style: TextStyle(
//                   //           fontSize: 16.sp,
//                   //         )),
//                   //     trailing: Checkbox(
//                   //       value: zinic8,
//                   //       onChanged: (bool? value) {
//                   //         // This is where we update the state when the checkbox is tapped
//                   //         setState(() {
//                   //           zinic8 = value!;
//                   //           // isChecked1 = false;
//                   //         });
//                   //       },
//                   //     ),
//                   //     //trailing: Icon(Icons.where_to_vote),
//                   //   ),
//                   // ),
//                 ],
//               )),
//
//           InkWell(
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => forntscreen()));
//             },
//             child: Container(
//               margin: EdgeInsets.only(left: 15, right: 15),
//               height: 43,
//               width: MediaQuery.of(context).size.width / 1.1,
//               child: Center(
//                   child: Text("Next",
//                       style: TextStyle(
//                           fontSize: 17.sp,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w600))),
//               color: Colors.lightGreen,
//             ),
//           ),
//           SizedBox(
//             height: 30,
//           )
//           // Container(
//           //     margin: EdgeInsets.only(top: 40, left: 100, right: 100),
//           //     height: 5,
//           //     width: 160,
//           //     decoration: BoxDecoration(
//           //         color: Colors.black,
//           //         borderRadius: BorderRadius.all(Radius.circular(10)))),
//         ],
//       ),
//     );
//   }
// }
// //////////////
// ////////////////
// //////////////
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/selectpils2.dart';

class editmedication2 extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<editmedication2> {
  @override
  initState() {

      loadUserMedicines();


    super.initState();
  }
  Future<bool> loadUserMedicines() async {
    try {
      // loader = true;
      print('loading===================================');
      User? user = FirebaseAuth.instance.currentUser;

      await FirebaseFirestore.instance
          .collection("Patient")
          .doc(user!.uid)
          .get()
          .then((data) => {

        fetchedListOMedicines = data['medicines'],
        print('${fetchedListOMedicines.length}---------fetchedListOMedicines'),
        fetchedListOMedicines.forEach((element) {
          if (element.contains('Humalog'))
          {
            setState(() {
              Humalog = true;

            });
          }
          else if (element.contains('Lantus'))
          {
            setState(() {
              Lantus =true;
            });
          }
          else if (element.contains('Levemir'))
          {
            setState(() {
              Levemir = true;
            });
          }
          else if (element.contains('Novorapid'))
          {
            setState(() {
              Novorapid = true;
            });
          }
          else if (element.contains('Insuman'))
          {
            setState(() {
              Insuman = true;
            });
          }
          else if (element.contains('Insulatard'))
          {
            setState(() {
              Insulatard = true;
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


  bool Humalog = false;
  bool Lantus = false;
  bool Levemir = false;
  bool Novorapid = false;
  bool Insuman = false;
  bool Insulatard = false;

  Future<bool> addPatientMedicines(Map<String, dynamic> data) async {
    try {

      User? user = FirebaseAuth.instance.currentUser;
      DocumentReference ref =
      FirebaseFirestore.instance.collection("Patient").doc(user!.uid);
      ref.update(data);
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

  // List<bool> value = [];
  List<String> listOMedicines = [];
  Map<String, dynamic> medicines = {'medicines': []};
  List<dynamic> fetchedListOMedicines = [];




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
              "What medication do you take?",
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
              "Insulin",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
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
                      title: Text("Humalog",
                          style: TextStyle(
                            fontSize: 16.sp,
                          )),
                      trailing: Checkbox(
                        value: Humalog,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            Humalog = value!;
                            listOMedicines.add('Humalog');


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
                      title: Text("Lantus",
                          style: TextStyle(
                            fontSize: 16.sp,
                          )),
                      trailing: Checkbox(
                        value: Lantus,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            Lantus = value!;
                            listOMedicines.add('Lantus');
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
                      title: Text("Levemir",
                          style: TextStyle(
                            fontSize: 16.sp,
                          )),
                      trailing: Checkbox(
                        value: Levemir,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            Levemir = value!;
                            listOMedicines.add('Levemir');

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
                      title: Text("Novorapid",
                          style: TextStyle(
                            fontSize: 16.sp,
                          )),
                      trailing: Checkbox(
                        value: Novorapid,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            Novorapid = value!;
                            listOMedicines.add('Novorapid');
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
                      title: Text("Insuman",
                          style: TextStyle(
                            fontSize: 16.sp,
                          )),
                      trailing: Checkbox(
                        value: Insuman,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            Insuman = value!;
                            listOMedicines.add('Insuman');
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
                      title: Text("Insulatard",
                          style: TextStyle(
                            fontSize: 16.sp,
                          )),
                      trailing: Checkbox(
                        value: Insulatard,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            Insulatard = value!;
                            listOMedicines.add('Insulatard');
                          });
                        },
                      ),
                      //trailing: Icon(Icons.where_to_vote),
                    ),
                  ),
                  // Container(
                  //   height: 50,
                  //   decoration: BoxDecoration(
                  //       //  color: Colors.red,
                  //       border: Border(
                  //           bottom:
                  //               BorderSide(color: Colors.black26, width: 1))),
                  //   child: ListTile(
                  //     title: Text("Metformin",
                  //         style: TextStyle(
                  //           fontSize: 16.sp,
                  //         )),
                  //     trailing: Checkbox(
                  //       value: zinic7,
                  //       onChanged: (bool? value) {
                  //         // This is where we update the state when the checkbox is tapped
                  //         setState(() {
                  //           zinic7 = value!;
                  //           // isChecked1 = false;
                  //         });
                  //       },
                  //     ),
                  //     //trailing: Icon(Icons.where_to_vote),
                  //   ),
                  // ),
                  // Container(
                  //   height: 50,
                  //   decoration: BoxDecoration(
                  //       //  color: Colors.red,
                  //       border: Border(
                  //           bottom:
                  //               BorderSide(color: Colors.black26, width: 1))),
                  //   child: ListTile(
                  //     title: Text("Metformin",
                  //         style: TextStyle(
                  //           fontSize: 16.sp,
                  //         )),
                  //     trailing: Checkbox(
                  //       value: zinic8,
                  //       onChanged: (bool? value) {
                  //         // This is where we update the state when the checkbox is tapped
                  //         setState(() {
                  //           zinic8 = value!;
                  //           // isChecked1 = false;
                  //         });
                  //       },
                  //     ),
                  //     //trailing: Icon(Icons.where_to_vote),
                  //   ),
                  // ),
                ],
              )),

          InkWell(
            onTap: () {
              print(listOMedicines);
              medicines['medicines']=listOMedicines.isEmpty?fetchedListOMedicines:listOMedicines;
              addPatientMedicines(medicines).then((value) => {
                if(value){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => selectpills2()))
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
