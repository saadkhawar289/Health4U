import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SymptomsTestDoc extends StatefulWidget {
  const SymptomsTestDoc({Key? key}) : super(key: key);

  @override
  _SymptomsTestState createState() => _SymptomsTestState();
}

class _SymptomsTestState extends State<SymptomsTestDoc> {
  int _value = 0;
  int _value2 = 0;
  int _value3 = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Text(
                'Symptoms-test results',
                style: TextStyle(color: Colors.black),
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HbA1c Test',
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    // height: 10,
                    // width: 60,
                    child: Text(
                      '4%',
                      style: TextStyle(fontSize: 18.sp),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Foot Test',
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      // height: 10,
                      // width: 60,
                      child: Column(
                        children: [
                          RadioListTile(
                            value: 1,
                            dense: true,
                            activeColor: Colors.green,
                            groupValue: 0,
                            onChanged: (dynamic val) {
                              setState(() {
                                _value = val;
                              });
                            },
                            title: Text(
                              "Dry skin",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0.sp,
                                  fontWeight: FontWeight.w400),
                              maxLines: 1,
                            ),
                          ),
                          RadioListTile(
                            value: 2,
                            dense: true,
                            activeColor: Colors.green,
                            groupValue: 2,
                            onChanged: (dynamic val) {
                              setState(() {
                                _value = val;
                              });
                            },
                            title: Text(
                              "loosing sensation in the toes",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0.sp,
                                  fontWeight: FontWeight.w400),
                              maxLines: 1,
                            ),
                          ),
                          RadioListTile(
                            value: 3,
                            dense: true,
                            activeColor: Colors.green,
                            groupValue: 0,
                            onChanged: (dynamic val) {
                              setState(() {
                                _value = val;
                              });
                            },
                            title: Text(
                              "black/harden skin",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0.sp,
                                  fontWeight: FontWeight.w400),
                              maxLines: 1,
                            ),
                          ),
                          RadioListTile(
                            value: 4,
                            dense: true,
                            activeColor: Colors.green,
                            groupValue: 0,
                            onChanged: (dynamic val) {
                              setState(() {
                                _value = val;
                              });
                            },
                            title: Text(
                              "taking flexitol medicine",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0.sp,
                                  fontWeight: FontWeight.w400),
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Eyes Test',
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      // height: 10,
                      // width: 60,
                      child: Column(
                        children: [
                          RadioListTile(
                            value: 1,
                            dense: true,
                            activeColor: Colors.green,
                            groupValue: 1,
                            onChanged: (dynamic val) {
                              setState(() {
                                _value2 = val;
                              });
                            },
                            title: Text(
                              "Gradually worsening vision",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0.sp,
                                  fontWeight: FontWeight.w400),
                              maxLines: 1,
                            ),
                          ),
                          RadioListTile(
                            value: 2,
                            dense: true,
                            activeColor: Colors.green,
                            groupValue: 0,
                            onChanged: (dynamic val) {
                              setState(() {
                                _value2 = val;
                              });
                            },
                            title: Text(
                              "Sudden vision loss",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0.sp,
                                  fontWeight: FontWeight.w400),
                              maxLines: 1,
                            ),
                          ),
                          RadioListTile(
                            value: 3,
                            dense: true,
                            activeColor: Colors.green,
                            groupValue: 0,
                            onChanged: (dynamic val) {
                              setState(() {
                                _value2 = val;
                              });
                            },
                            title: Text(
                              "shapes floating in your field of vision ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0.sp,
                                  fontWeight: FontWeight.w400),
                              maxLines: 1,
                            ),
                          ),
                          RadioListTile(
                            value: 4,
                            dense: true,
                            activeColor: Colors.green,
                            groupValue: 0,
                            onChanged: (dynamic val) {
                              setState(() {
                                _value2 = val;
                              });
                            },
                            title: Text(
                              "blurred or patchy vision",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0.sp,
                                  fontWeight: FontWeight.w400),
                              maxLines: 1,
                            ),
                          ),
                          RadioListTile(
                            value: 5,
                            dense: true,
                            activeColor: Colors.green,
                            groupValue: 0,
                            onChanged: (dynamic val) {
                              setState(() {
                                _value2 = val;
                              });
                            },
                            title: Text(
                              "eye pain or redness",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0.sp,
                                  fontWeight: FontWeight.w400),
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Kidney Test',
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      // height: 10,
                      // width: 60,
                      child: Column(
                        children: [
                          RadioListTile(
                            value: 5,
                            dense: true,
                            activeColor: Colors.green,
                            groupValue: 0,
                            onChanged: (dynamic val) {
                              setState(() {
                                _value3 = val;
                              });
                            },
                            title: Text(
                              "dehydration",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0.sp,
                                  fontWeight: FontWeight.w400),
                              maxLines: 1,
                            ),
                          ),
                          RadioListTile(
                            value: 5,
                            dense: true,
                            activeColor: Colors.green,
                            groupValue: 5,
                            onChanged: (dynamic val) {
                              setState(() {
                                _value3 = val;
                              });
                            },
                            title: Text(
                              "taking ramipiril medicne",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0.sp,
                                  fontWeight: FontWeight.w400),
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Center(
                  //   child: ElevatedButton(
                  //     child: Text('Next'),
                  //     onPressed: () {},
                  //     style: ButtonStyle(
                  //         backgroundColor:
                  //             MaterialStateProperty.all(Colors.green),
                  //         textStyle: MaterialStateProperty.all(TextStyle(
                  //           fontSize: 20.sp,
                  //         ))),
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
