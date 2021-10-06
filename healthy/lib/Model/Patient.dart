import 'package:flutter/material.dart';



class Patient {

  String? name;
  String? doctorID;
  String? uID;
  List<String> symptomsTest=[];
  List<String> medicines=[];
  List<String> pills=[];
  String? typeOfDiabetes;




  Patient({
    @required this.name,
    @required this.uID,

  });

  Patient.fromJson(Map<String, dynamic> json)
      : name = json['name'];


  Map<String, dynamic> toJson() {
    return {
      'name': name,
      
    };
  }
}