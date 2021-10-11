import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class SelectDoctor extends StatefulWidget {
  const SelectDoctor({Key? key}) : super(key: key);

  @override
  _SelectDoctorState createState() => _SelectDoctorState();
}

class _SelectDoctorState extends State<SelectDoctor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            iconTheme: Theme.of(context).iconTheme,
            leading: InkWell(
              child: Icon(Icons.close),
              onTap: () => Navigator.pop(context),
            ),
            title: Column(
              children: [
                Text(
                  'Doctors',
                  style: TextStyle(
                      fontSize: 17.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Select a Doctor',
                  style: TextStyle(
                      fontSize: 17.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            centerTitle: true,
          ),
          backgroundColor: const Color(0xFFF7F7F7),
          body: Padding(
            padding: EdgeInsets.all(
              20.h,
            ),
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0.w),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: CircleAvatar(
                              maxRadius: 30,
                              child: Image.asset(
                                'assets/dr1.jpg',
                                fit: BoxFit.fill,
                                height: 70,
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 16.0, left: 8),
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Dr Saad',
                                            style: TextStyle(
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.bold))),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.info_outline,
                                              size: 15.sp,
                                              color: Colors.blue,
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                showDialog(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return AlertDialog(

                                                        title: Align(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            child: InkWell(
                                                              child: InkWell(
                                                                onTap:()=> Navigator.pop(context),
                                                                child: Icon(
                                                                    Icons.close),
                                                              ),
                                                            )),
                                                        content: Container(
                                                          height: 250,
                                                          child: Column(
                                                            children: [
                                                              CircleAvatar(
                                                                radius: 30,
                                                                child: Image.asset(
                                                                    'assets/dr1.jpg'),
                                                              ),
                                                              SizedBox(
                                                                height: 4.h,
                                                              ),
                                                              Text(
                                                                'Dr Saad',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        17.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              SizedBox(
                                                                height: 8.h,
                                                              ),
                                                              Text('Language',style: TextStyle(
                                                                  fontSize:
                                                                  14.sp,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w500,color: Colors.blue),),

                                                              Padding(
                                                                padding:  EdgeInsets.symmetric(horizontal: 35.w,vertical: 5.h),
                                                                child: Container(
                                                                  child:Row(
                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                    children: [
                                                                      Container(
                                                                        height: 20,
                                                                        width: 70,
                                                                        decoration: BoxDecoration(
                                                                          borderRadius: BorderRadius.circular(20),

                                                                          color: Colors.lightGreen,
                                                                        ),
                                                                        child: Center(
                                                                            child: Text('French',
                                                                                style: TextStyle(
                                                                                  fontSize: 12.sp,
                                                                                    color: Colors.white))),
                                                                      ),
                                                                      Container(
                                                                        height: 20,
                                                                        width: 70,
                                                                        decoration: BoxDecoration(
                                                                          borderRadius: BorderRadius.circular(20),

                                                                          color: Colors.lightGreen,
                                                                        ),
                                                                        child: Center(
                                                                            child: Text('English',
                                                                                style: TextStyle(
                                                                                    fontSize: 12.sp,
                                                                                    color: Colors.white))),
                                                                      ),
                                                                    ],
                                                                  ) ,
                                                                ),
                                                              ),
                                                              Center(child: Text('Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'))

                                                            ],
                                                          ),
                                                        ),

                                                      );
                                                    });
                                              },
                                              child: Text(
                                                'About Dr Saad',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14.sp,
                                                    color: Colors.blue),
                                              ),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 2,
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(right: 12.0, top: 20.h),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, '/timeReservation');
                                          },
                                          child: Icon(
                                            Icons.arrow_forward,
                                            size: 28,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )))
                        ],
                      ),
                    )),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0.w),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: CircleAvatar(
                              maxRadius: 30,
                              child: Image.asset(
                                'assets/dr2.jpg',
                                fit: BoxFit.fill,
                                height: 70,
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 16.0, left: 8),
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Dr Sadia',
                                            style: TextStyle(
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.bold))),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.info_outline,
                                              size: 15.sp,
                                              color: Colors.blue,
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Text(
                                              'About Dr Sadia',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14.sp,
                                                  color: Colors.blue),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 2,
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(right: 12.0, top: 20.h),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, '/timeReservation');
                                          },
                                          child: Icon(
                                            Icons.arrow_forward,
                                            size: 28,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )))
                        ],
                      ),
                    )),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0.w),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: CircleAvatar(
                              maxRadius: 30,
                              child: Image.asset(
                                'assets/dr1.jpg',
                                fit: BoxFit.fill,
                                height: 70,
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 16.0, left: 8),
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Dr Ashfaq',
                                            style: TextStyle(
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.bold))),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.info_outline,
                                              size: 15.sp,
                                              color: Colors.blue,
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Text(
                                              'About Dr Ashfaq',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14.sp,
                                                  color: Colors.blue),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 2,
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(right: 12.0, top: 20.h),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, '/timeReservation');
                                          },
                                          child: Icon(
                                            Icons.arrow_forward,
                                            size: 28,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )))
                        ],
                      ),
                    )),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0.w),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: CircleAvatar(
                              maxRadius: 30,
                              child: Image.asset(
                                'assets/dr3.png',
                                fit: BoxFit.fill,
                                height: 70,
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 16.0, left: 8),
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Dr Amna',
                                            style: TextStyle(
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.bold))),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.info_outline,
                                              size: 15.sp,
                                              color: Colors.blue,
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Text(
                                              'About Dr Amna',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14.sp,
                                                  color: Colors.blue),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 2,
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(right: 12.0, top: 20.h),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, '/timeReservation');
                                          },
                                          child: Icon(
                                            Icons.arrow_forward,
                                            size: 28,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )))
                        ],
                      ),
                    )),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0.w),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: CircleAvatar(
                              maxRadius: 30,
                              child: Image.asset(
                                'assets/dr2.jpg',
                                fit: BoxFit.fill,
                                height: 70,
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 16.0, left: 8),
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Dr Ayesha',
                                            style: TextStyle(
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.bold))),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.info_outline,
                                              size: 15.sp,
                                              color: Colors.blue,
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            Text(
                                              'About Dr Ayesha',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14.sp,
                                                  color: Colors.blue),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 2,
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(right: 12.0, top: 20.h),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, '/timeReservation');
                                          },
                                          child: Icon(
                                            Icons.arrow_forward,
                                            size: 28,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )))
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
