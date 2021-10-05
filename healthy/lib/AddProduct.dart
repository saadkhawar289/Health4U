import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_format/date_format.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthy/frontscreenRetail.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'ImagePicker.dart';
import 'Model/Product.dart';

class AddProduct extends StatefulWidget {
   String? editAble;
  AddProduct({this.editAble});
  @override
  _State createState() => _State();
}

class _State extends State<AddProduct> {
  @override
  void initState() {
    if(widget.editAble==null){
      return;
    }
else{
      loadProduct();
    }
    super.initState();
  }



  Future<bool> loadProduct() async {
    try {
      // loader = true;
      print('loading===================================');
      User? user = FirebaseAuth.instance.currentUser;
      await FirebaseFirestore.instance
          .collection("Product")
          .doc(widget.editAble)
          .get()
          .then((data) => {
          print("0000000000000000000000000${data['name'].toString()}"),

        _controllerName.text = data['name'].toString(),
        _controllerProduct.text=data['price'].toString(),
        _controllerDescroption.text=data['descp'].toString(),
        _controllerWeight.text=data['weight'].toString()

        // _controllerNameLast.text = data['lName'],
        // _controllerMob.text = data['MobileNo'],
        // _controllerPhone.text = data['PhoneNo'],
      });
      print('loading++++++++++++++++++++++++++++');

      setState(() {
   //     loader = false;
      });
    //  print('==============================$loader');
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
    //loader = false;

    return true;
  }
   ProductHelper pp=ProductHelper();

  int _value = 0;
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerProduct = TextEditingController();
  TextEditingController _controllerDescroption = TextEditingController();
  TextEditingController _controllerFiber = TextEditingController();
  TextEditingController _controllerSugar = TextEditingController();
  TextEditingController _controllerCholesterol = TextEditingController();
  TextEditingController _controllerMonosaturated = TextEditingController();
  TextEditingController _controllerPolysaturated = TextEditingController();
  TextEditingController _controllerSaturated = TextEditingController();
  TextEditingController _controllerarbohydrates = TextEditingController();
  TextEditingController _controllerKilocalories = TextEditingController();
  TextEditingController _controllerWeight = TextEditingController();
  TextEditingController _controllerDate = TextEditingController();
   User? user = FirebaseAuth.instance.currentUser;

   DateTime pickedDate = DateTime.now();
  Map<String,dynamic> formValues={
    'name':null,
    'descp':null,
    'price':null,
    'weight':null,
    'uID':null

 //   'category':null
  };

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2021),
        lastDate: DateTime(DateTime.now().year + 2));

    if (picked != null && picked != pickedDate)
      setState(() {
        pickedDate = picked;

        _controllerDate.text = pickedDate.toString().substring(0, 11);
        _controllerDate.text = formatDate(picked, [dd, '/', mm, '/', yyyy]);
        // dateController.text = ;
      });
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:SafeArea(
        child: Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height * 3,
            width: MediaQuery.of(context).size.width * 3,
            // color: Colors.red,
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Icon(Icons.west_sharp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Text(
                        '',
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
                        'Product',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Product Name',
                            contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                            border: InputBorder.none,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z, ]"))
                          ],
                          controller: _controllerName,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please Enter the Product Name";
                            }
                          },
                          onSaved: (value){
                            formValues['name']=value;
                          }
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Product Price',
                            contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                            border: InputBorder.none,
                          ),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(5),
                            FilteringTextInputFormatter.allow(RegExp(r"[0-9,., ]"))
                          ],
                          controller: _controllerProduct,
                          validator: (val) {
                            if (val!.isEmpty|| val.length<=2) {
                              return "Please Enter the Product Price";
                            }
                          },
                          onSaved: (value){
                            formValues['price']=value;
                          }),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                            //helperMaxLines:
                            hintText: 'Product description ',
                            contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                            border: InputBorder.none,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z, ]"))
                          ],
                          controller: _controllerDescroption,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please Enter the Product description";
                            }
                          },
                          onSaved: (value){
                            formValues['descp']=value;
                          }),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10, right: 10),
                      //   child: Divider(
                      //     thickness: 2,
                      //   ),
                      // ),
                      // TextFormField(
                      //     decoration: InputDecoration(
                      //       hintText: 'Fiber in percentage',
                      //       contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                      //       border: InputBorder.none,
                      //     ),
                      //     inputFormatters: [
                      //       LengthLimitingTextInputFormatter(5),
                      //       FilteringTextInputFormatter.allow(RegExp(r"[0-9,.,]"))
                      //     ],
                      //     controller: _controllerFiber,
                      //     validator: (val) {
                      //       if (val!.isEmpty) {
                      //         return "Please Enter the correct %";
                      //       }
                      //     }),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10, right: 10),
                      //   child: Divider(
                      //     thickness: 2,
                      //   ),
                      // ),
                      // TextFormField(
                      //     decoration: InputDecoration(
                      //       hintText: 'Sugar in percentage ',
                      //       contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                      //       border: InputBorder.none,
                      //     ),
                      //     inputFormatters: [
                      //       LengthLimitingTextInputFormatter(5),
                      //       FilteringTextInputFormatter.allow(RegExp(r"[0-9,.,]"))
                      //     ],
                      //     controller: _controllerSugar,
                      //     validator: (val) {
                      //       if (val!.isEmpty) {
                      //         return "Please Enter the correct %";
                      //       }
                      //     }),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10, right: 10),
                      //   child: Divider(
                      //     thickness: 2,
                      //   ),
                      // ),
                      // TextFormField(
                      //     decoration: InputDecoration(
                      //       hintText: 'Cholesterol in percentage ',
                      //       contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                      //       border: InputBorder.none,
                      //     ),
                      //     inputFormatters: [
                      //       LengthLimitingTextInputFormatter(5),
                      //       FilteringTextInputFormatter.allow(RegExp(r"[0-9,.,]"))
                      //     ],
                      //     controller: _controllerCholesterol,
                      //     validator: (val) {
                      //       if (val!.isEmpty) {
                      //         return "Please Enter the correct %";
                      //       }
                      //     }),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10, right: 10),
                      //   child: Divider(
                      //     thickness: 2,
                      //   ),
                      // ),
                      // TextFormField(
                      //     decoration: InputDecoration(
                      //       hintText: 'Monosaturated in percentage ',
                      //       contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                      //       border: InputBorder.none,
                      //     ),
                      //     inputFormatters: [
                      //       LengthLimitingTextInputFormatter(5),
                      //       FilteringTextInputFormatter.allow(RegExp(r"[0-9,.,]"))
                      //     ],
                      //     controller: _controllerMonosaturated,
                      //     validator: (val) {
                      //       if (val!.isEmpty) {
                      //         return "Please Enter the correct %";
                      //       }
                      //     }),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10, right: 10),
                      //   child: Divider(
                      //     thickness: 2,
                      //   ),
                      // ),
                      // TextFormField(
                      //     decoration: InputDecoration(
                      //       hintText: 'Polysaturated in percentage ',
                      //       contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                      //       border: InputBorder.none,
                      //     ),
                      //     inputFormatters: [
                      //       LengthLimitingTextInputFormatter(5),
                      //       FilteringTextInputFormatter.allow(RegExp(r"[0-9,.,]"))
                      //     ],
                      //     controller: _controllerPolysaturated,
                      //     validator: (val) {
                      //       if (val!.isEmpty) {
                      //         return "Please Enter the correct %";
                      //       }
                      //     }),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10, right: 10),
                      //   child: Divider(
                      //     thickness: 2,
                      //   ),
                      // ),
                      //
                      // TextFormField(
                      //     decoration: InputDecoration(
                      //       hintText: 'Saturated Fat in percentage ',
                      //       contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                      //       border: InputBorder.none,
                      //     ),
                      //     inputFormatters: [
                      //       LengthLimitingTextInputFormatter(5),
                      //       FilteringTextInputFormatter.allow(RegExp(r"[0-9,.,]"))
                      //     ],
                      //     controller: _controllerSaturated,
                      //     validator: (val) {
                      //       if (val!.isEmpty) {
                      //         return "Please Enter the correct %";
                      //       }
                      //     }),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10, right: 10),
                      //   child: Divider(
                      //     thickness: 2,
                      //   ),
                      // ),
                      // TextFormField(
                      //     decoration: InputDecoration(
                      //       hintText: 'Carbohydrates in percentage ',
                      //       contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                      //       border: InputBorder.none,
                      //     ),
                      //     inputFormatters: [
                      //       LengthLimitingTextInputFormatter(5),
                      //       FilteringTextInputFormatter.allow(RegExp(r"[0-9,.,]"))
                      //     ],
                      //     controller: _controllerarbohydrates,
                      //     validator: (val) {
                      //       if (val!.isEmpty) {
                      //         return "Please Enter the correct %";
                      //       }
                      //     }),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10, right: 10),
                      //   child: Divider(
                      //     thickness: 2,
                      //   ),
                      // ),
                      //
                      // TextFormField(
                      //     decoration: InputDecoration(
                      //       hintText: 'Kilocalories in percentage ',
                      //       contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                      //       border: InputBorder.none,
                      //     ),
                      //     inputFormatters: [
                      //       LengthLimitingTextInputFormatter(5),
                      //       FilteringTextInputFormatter.allow(RegExp(r"[0-9,.,]"))
                      //     ],
                      //     controller: _controllerKilocalories,
                      //     validator: (val) {
                      //       if (val!.isEmpty) {
                      //         return "Please Enter the correct %";
                      //       }
                      //     }),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 10, right: 10),
                      //   child: Divider(
                      //     thickness: 2,
                      //   ),
                      // ),
                      TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Weight',
                            contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                            border: InputBorder.none,
                          ),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(8),
                            FilteringTextInputFormatter.allow(RegExp(r"[0-9,.,a-z,A-Z]"))
                          ],
                          controller: _controllerWeight,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Please enter the proper weight";
                            }
                          },
                          onSaved: (value){
                            formValues['weight']=value;
                          }),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      // TextFormField(
                      //   controller: _controllerDate,
                      //   onTap: () {
                      //     _selectDate(context);
                      //   },
                      //   decoration: InputDecoration(
                      //     hintText: 'Expiry date',
                      //     contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                      //     border: InputBorder.none,
                      //   ),
                      //   validator: (val) {
                      //     if (val!.isEmpty || !val.contains("/")) {
                      //       return "Please Enter valid expiry date";
                      //     }
                      //   },
                      //   onSaved: (String? value) {},
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom:
                                BorderSide(width: 2, color: Colors.black12))),
                        // color: Colors.cyanAccent,
                        child: Row(
                          children: [
                            Text("Choice Category"),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          RadioListTile(
                            value: 1,
                            activeColor: Colors.red,
                            groupValue: _value,
                            onChanged: (dynamic val) {
                              setState(() {
                                _value = val;
                              });
                            },
                            title: Text(
                              "Red",
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400),
                              maxLines: 1,
                            ),
                          ),
                          RadioListTile(
                            value: 2,
                            activeColor: Colors.green,
                            groupValue: _value,
                            onChanged: (dynamic val) {
                              setState(() {
                                _value = val;
                              });
                            },
                            title: Text(
                              "Green",
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400),
                              maxLines: 1,
                            ),
                          ),
                          RadioListTile(
                            value: 3,
                            activeColor: Colors.amber,
                            groupValue: _value,
                            onChanged: (dynamic val) {
                              setState(() {
                                _value = val;
                              });
                            },
                            title: Text(
                              "Amber",
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400),
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: ImageInput(),
                      ),

                      InkWell(
                        onTap: () async{
                          if (!_formKey.currentState!.validate()) {
                            return;
                          }

                          _formKey.currentState!.save();
                          formValues['uID']=user!.uid.toString();
                       if(widget.editAble==null){
                         await   pp.addProduct(formValues).then((value) => {

                           if(value){
                             Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) => forntscreenR()))
                           }
                           else
                             print('nahiUpload hoa')

                         });
                       }
                       else{
                            pp.updateProduct(formValues, widget.editAble).then((value) => {

                              if(value){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => forntscreenR()))
                              }
                              else
                                print('nahiUpload hoa')

                            });
                       }


                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 20,bottom: 20),
                          height: 43,
                          width: MediaQuery.of(context).size.width / 1.1,
                          child: Center(child: Text("Upload",style: TextStyle(color: Colors.white,fontSize: 17.sp,fontWeight:FontWeight.w600 ),)),
                          color: Colors.lightGreen,
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
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}

