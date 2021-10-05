import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/DoctorSinup.dart';
import 'package:healthy/Retailinformation.dart';
import 'package:healthy/signup.dart';

class AccountSelection extends StatefulWidget {
  const AccountSelection({Key? key}) : super(key: key);

  @override
  _AccountSelectionState createState() => _AccountSelectionState();
}

class _AccountSelectionState extends State<AccountSelection> {
  int _value = 0;
  bool customer = false;
  bool HealthProvider = false;
  bool superMarket = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            // toolbarHeight: 10,
            elevation: 0,
            backgroundColor: Colors.white,
          ),
          body: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                      //color: Colors.red,
                      height: 0.20.sh,
                      child: Image.asset('assets/ic_logo_intro.png')),
                ),
                SizedBox(
                  height: 0.06.sh,
                ),
                InkWell(
                  onTap: () {
                    print('cstomer$customer');
                  },
                  child: RadioListTile(
                      value: 1,
                      dense: true,
                      activeColor: Colors.green,
                      groupValue: _value,
                      onChanged: (dynamic val) {
                        setState(() {
                          _value = val;
                          customer = true;
                          superMarket = false;
                          HealthProvider = false;
                        });
                      },
                      title: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: InkWell(
                            onTap: () {
                              customer = true;
                            },
                            child: Container(
                              color: Colors.grey[350],
                              width: 0.90.sw,
                              height: 0.06.sh,
                              child: Center(
                                child: Text('Customer',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    print('health$HealthProvider');
                  },
                  child: RadioListTile(
                      value: 2,
                      dense: true,
                      activeColor: Colors.green,
                      groupValue: _value,
                      onChanged: (dynamic val) {
                        setState(() {
                          _value = val;
                          superMarket = false;
                          customer = false;
                          HealthProvider = true;
                        });
                      },
                      title: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: InkWell(
                            onTap: () {
                              HealthProvider = true;
                            },
                            child: Container(
                              color: Colors.grey[350],
                              width: 0.90.sw,
                              height: 0.06.sh,
                              child: Center(
                                child: Text('Health Provider',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    print('narket$superMarket');
                  },
                  child: RadioListTile(
                      value: 3,
                      dense: true,
                      activeColor: Colors.green,
                      groupValue: _value,
                      onChanged: (dynamic val) {
                        setState(() {
                          _value = val;
                          superMarket = true;
                          customer = false;
                          HealthProvider = false;
                          print('kkkkkkk');
                          print(superMarket);
                          print(customer);
                        });
                      },
                      title: Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Center(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              color: Colors.grey[350],
                              width: 0.90.sw,
                              height: 0.06.sh,
                              child: Center(
                                child: Text('Super Market Chain',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ),
                        ),
                      )),
                ),
                Spacer(),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      if (customer == true) {
                        print('cstomer');
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => singup()));
                      } else if (HealthProvider == true) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DoctorSingup()));
                        print('provider');
                      } else if (superMarket == true) {
                        print('health');

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Retailinformation()));
                      }
                    },
                    child: Center(
                      child: Container(
                        color: Colors.lightGreen,
                        height: 43,
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Center(
                          child: Text('Next',
                              style: TextStyle(
                                  fontSize: 17.sp, fontWeight: FontWeight.w600,color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
