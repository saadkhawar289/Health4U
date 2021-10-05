import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HowItWork extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HowItWork> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: const Color(0xFFF7F7F7),
              elevation: 0,
              // leading: Icon(Icons.arrow_back),
              toolbarHeight: 0.14.sh,
              iconTheme: Theme.of(context).iconTheme,
              title: Center(
                child: Container(
                    height: 0.15.sh,
                    width: 0.15.sw,
                    child: Image.asset("assets/ic_logo.png")),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(18.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Adding this app to your daily routine with diabetes (Type 1, Type 2, or gestational diabetes) will make your life easier.",
                      style: TextStyle(fontSize: 14.sp),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'This app is your diabetes logbook, which keeps your diabetes data under control. With one app you \'ll have:',
                      style: TextStyle(fontSize: 14.sp),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18.0.w, top: 7.h),
                      child: Text(
                        'Easy and personalized dashboard (diet, meds, carb intake, blood glucose levels and more).',
                        style: TextStyle(fontSize: 14.sp),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18.0.w, top: 7.h),
                      child: Text(
                        'See clear blood sugar level graphs.                                                            ',
                        style: TextStyle(fontSize: 14.sp),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18.0.w, top: 7.h),
                      child: Text(
                        'Daily, weekly, and monthly reports, that you can share directly with your doctor.',
                        style: TextStyle(fontSize: 14.sp),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18.0.w, top: 7.h),
                      child: Text(
                        'Traffic light feature that addresses the problems and barriers faced by diabetics by providing greater clarity on existing ranges and the choice of healthier alternatives.',
                        style: TextStyle(fontSize: 14.sp),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18.0.w, top: 7.h),
                      child: Text(
                        'Scan and Go feature provide an interactive and personalised customer experience, transforming weekly shop from a chore to an engaging, interactive and personalised health experience.',
                        style: TextStyle(fontSize: 14.sp),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18.0.w, top: 7.h),
                      child: Text(
                        'This app provides digital GP consultations and help maximise both the medical and societal benefits.',
                        style: TextStyle(fontSize: 14.sp),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
