
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AutocompleteBasicExample extends StatefulWidget {
   AutocompleteBasicExample({Key? key}) : super(key: key);

  @override
  _AutocompleteBasicExampleState createState() => _AutocompleteBasicExampleState();
}

class _AutocompleteBasicExampleState extends State<AutocompleteBasicExample> {
  @override
  void initState() {
   // print('++++++++++++++++${widget.productID}');
    loadUser();
    super.initState();
  }
bool loader=false;

  Future<bool> loadUser() async {

  var docID;
  setState(() {
    loader=true;
  });
    try {

      print('loading===================================');
      User? user = FirebaseAuth.instance.currentUser;
      await FirebaseFirestore.instance
          .collection("Doctor")

          .get()
          .then((data) async=> {
       //  docID =
            data.docs.forEach((element) {
              docID=element.get('uID');
                FirebaseFirestore.instance
                  .collection("Users")
                  .doc(docID)
                  .get().then((value) => {
                _kOptions.add(value['fName'])
            });


        })

      });
      print('loading++++++++++++++++++++++++++++');
      setState(() {
        loader=false;
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

 List<String> _kOptions = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:loader==true?CircularProgressIndicator(): Center(
        child: Autocomplete<String>(
          optionsBuilder: (TextEditingValue textEditingValue) {
            if (textEditingValue.text == '') {
              return const Iterable<String>.empty();
            }
            return _kOptions.where((String option) {
              return option.contains(textEditingValue.text.toLowerCase());
            });
          },
          onSelected: (String selection) {
            print('You just selected $selection');
          },
        ),
      ),
    ) ;
  }
}