import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthy/OnlinePractitioner.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Confirmation extends StatefulWidget {
  @override
  _ConfirmationState createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 80,
            elevation: 0.7,
            backgroundColor: const Color(0xFFF7F7F7),
            iconTheme: Theme.of(context).iconTheme,
            leading: InkWell(
              onTap: ()async {
                var pref = await SharedPreferences.getInstance();
                var name= pref.getString('first_name');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OnlinePractitioner(name!)));
              },
              child: Container(
                child: Icon(Icons.clear),
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Confirmation",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
          body: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(60), // radius of 10
                          color: Colors.lightGreen,
                        ),
                        child: Image.asset("assets/tick.jpeg")),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Your appointment is now confirmed!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), // radius of 10
                      //  color: Colors.lightGreen,
                      color: const Color(0xFFF7F7F7),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            // child: Image.asset("assets/5880.png"),
                            // decoration: BoxDecoration(
                            //   borderRadius:
                            //       BorderRadius.circular(30), // radius of 10
                            // ),
                            foregroundDecoration: const BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/dr1.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("Dr Akeel"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("Fri Nov 1 , 15:00-15:15"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
