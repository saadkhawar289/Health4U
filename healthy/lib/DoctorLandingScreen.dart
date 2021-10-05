import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/UserList.dart';
import 'package:healthy/drawer.dart';
import 'package:healthy/patientForm.dart';

class DoctorLandingScreen extends StatefulWidget {
  const DoctorLandingScreen({Key? key}) : super(key: key);

  @override
  _DoctorLandingScreenState createState() => _DoctorLandingScreenState();
}

class _DoctorLandingScreenState extends State<DoctorLandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          drawer:CustomDrawer(vis: 2,),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color(0xFFF7F7F7),
            elevation: 0,
            // leading: Icon(Icons.arrow_back),
            toolbarHeight: 0.14.sh,
            iconTheme: Theme.of(context).iconTheme,
            title: Container(
                height: 0.15.sh,
                width: 0.15.sw,
                child: Image.asset("assets/ic_logo.png")),
          ),
          body: Padding(
            padding: EdgeInsets.all(20.sp),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UsersList()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[350],
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        width: 0.37.sw,
                        height: 0.28.sh,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                size: 55.sp,
                                color: Colors.greenAccent[700],
                              ),
                              Text('View Patients',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PatientForm()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[350],
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        width: 0.37.sw,
                        height: 0.28.sh,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person_add,
                                size: 55.sp,
                                color: Colors.greenAccent[700],
                              ),
                              Text('Add Patients',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
