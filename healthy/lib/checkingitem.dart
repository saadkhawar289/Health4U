import 'dart:async';

import "package:flutter/material.dart";
import 'package:healthy/SelectProduct.dart';

class CheckItems extends StatefulWidget {
  const CheckItems({Key? key}) : super(key: key);

  @override
  _CheckItemsState createState() => _CheckItemsState();
}

class _CheckItemsState extends State<CheckItems> {
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  void startTimer() {
    Timer(Duration(seconds: 6), () {
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => SelectedProduct()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    color: Colors.green,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Checking item')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
