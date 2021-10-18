import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';




class Product {

  String? name;
  String? weight;
  num? price;
  String? descp;
  String? id;
  String? image;
  String? brand;



  Product({
    @required this.name,
    @required this.id,
    @required this.price,
    @required this.weight,
    @required this.descp,
    @required this.image,
    @required this.brand

  });

  Product.fromJson(Map<String, dynamic> json)
      : name = json['name'],

        price = json['price'],
        descp = json['descp'];

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'descp': descp,
      'weight':weight,
    };
  }
}

class ProductHelper{
  bool loader = false;
 late  Product aa;

  List<Product> get proList {
    return productsList;
  }

  List<Product> productsList = [];





  Future<bool>getListOfProducts() async{
    try {
      loader=true;
      print('loading===================================');
      User? user = FirebaseAuth.instance.currentUser;
      var userID = user!.uid;

   var ss= FirebaseFirestore.instance
          .collection("Product").doc()
        .get();
ss.then((value) => {
   value.reference.get().asStream(),


});
      //     .then((data) => {
      //
      //       if(userID==data['uID']){
      //         aa
      //         = Product(
      //             name: data['name'],
      //             id: data['uID'],
      //             price:data['price'] ,
      //             weight: data['weight'],
      //             descp:data['descp']),
      //         productsList.add(aa),
      //       },
      //       print(data['name']),
      //     print(data['price']),
      // print(data['descp']),
      //
      //
      //
      //   loader=false
      // });
print('done');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        return false;
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        return false;
      }
      else{
        print('==========================$e');
      }
    } catch (e) {
      print(e);
      return false;
    }
    loader = false;

    return true;
  }


  Future<bool> addProduct(Map<String, dynamic> data) async {
    List<dynamic> productList=[];
    try {
      User? user = FirebaseAuth.instance.currentUser;

      DocumentReference ref = await FirebaseFirestore.instance.collection("Product").doc();
      ref.set(data).whenComplete(() async=>{


        print('========================${ref.id}'),

        await  FirebaseFirestore.instance.collection("Retailer").doc(user!.uid).get().then((data)async =>
        {
          productList=data['products'],
          if(productList.length==0){

            productList.add(ref.id),
            await FirebaseFirestore.instance.collection("Retailer").doc(user.uid).update({
              'products':productList
            })
          }
          else{
            productList=data['products'],
            productList.add(ref.id),
            await FirebaseFirestore.instance.collection("Retailer").doc(user.uid).update({
              'products':productList
            })
          }



        }),



      });
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

  Future<bool> updateProduct(Map<String, dynamic> data,String? id) async {
    try {
      User? user = FirebaseAuth.instance.currentUser;

      DocumentReference ref =  FirebaseFirestore.instance.collection("Product").doc(id);
      ref.update(data);

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





