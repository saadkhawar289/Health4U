import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/DoctorSyntomTest.dart';
import 'package:healthy/drawer.dart';
import 'package:healthy/profile3.dart';
import 'package:healthy/setting.dart';

class PatientEMRDoc extends StatefulWidget {
  @override
  _PatientEMRState createState() => _PatientEMRState();
}

class _PatientEMRState extends State<PatientEMRDoc> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          drawer: CustomDrawer(vis: 2,),
          backgroundColor: Colors.white,
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
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 14),
                  alignment: Alignment.centerLeft,
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Patient EMR",
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      height: 0.03.sh,
                      child: Row(
                        children: [
                          Text(
                            'Patient Name:',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 17.sp),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Aman  Muhammad',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      height: 0.03.sh,
                      child: Row(
                        children: [
                          Text(
                            'Patient Date of Birth:',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 17.sp),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '20/08/1997',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      height: 0.03.sh,
                      child: Row(
                        children: [
                          Text(
                            'Contact number:',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17.sp),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '03131533387',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      height: 0.03.sh,
                      child: Row(
                        children: [
                          Text(
                            'Post code:',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17.sp),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '44740',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 28.0),
                  child: Center(
                      child:InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SymptomsTestDoc()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 12),
                          height: 43,
                          width: MediaQuery.of(context).size.width / 1.1,
                          child:Center(child: Text("Next")),
                          color: Colors.lightGreen,
                        ),
                      ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
