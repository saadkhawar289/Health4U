import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class Doctor {
  String? uID;
  String? surgeryName;
  String? surgeryPostCode;




  Doctor({
    @required this.surgeryName,
    @required this.uID,
    @required this.surgeryPostCode,

  });

  Doctor.fromJson(Map<String, dynamic> json)
      : surgeryName = json['surgeryName'],
        uID = json['uID'],
        surgeryPostCode = json['surgeryPostCode'];

  Map<String, dynamic> toJson() {
    return {
      'surgeryName': surgeryName,
      'uID': uID,
      'surgeryPostCode': surgeryPostCode,
    };
  }
}


class DoctorHelper{

  Future<bool>addDocInfo(Map<String,dynamic> data)async{
    try {
      User? user = FirebaseAuth.instance.currentUser;
      DocumentReference ref =  FirebaseFirestore.instance.collection("Doctor").doc(user!.uid);
      ref.set(data);
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
    return true;
  }

}

  Future<bool>addPatient()async{
    return true;
  }






