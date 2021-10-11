import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnlinePractitioner extends StatefulWidget {
  const OnlinePractitioner({Key? key}) : super(key: key);

  @override
  _OnlinePractitionerState createState() => _OnlinePractitionerState();
}

class _OnlinePractitionerState extends State<OnlinePractitioner> {
  Color? cl1=Colors.lightGreen;
  Color? cl2=Colors.transparent;
  Color? textClr=Colors.black;
  Color? textClr2=Colors.white;
  bool past=false;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: const Color(0xFFF7F7F7),
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              iconTheme: Theme.of(context).iconTheme,
              leading: InkWell(
                child: Icon(Icons.close),
                onTap: () => Navigator.pop(context),
              ),
              title: Text(
                'Online Practitioner',
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            ),
            body: Padding(
              padding: EdgeInsets.only(top: 20.0.h),
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10.0.w),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 6),
                                blurRadius: 2,
                                color: Colors.grey,
                              )
                            ],
                          ),
                          width: MediaQuery.of(context).size.width * 0.90,
                          height: 80.h,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: CircleAvatar(
                                    radius: 30,
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: Colors.white,
                                    ),
                                    backgroundColor: Colors.lightGreen,
                                  ),
                                ),
                                Expanded(
                                    flex: 3,
                                    child: Padding(
                                      padding:  EdgeInsets.only(
                                          top: 16.0, left: 8),
                                      child: Column(
                                        children: [
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Text('Hi Aman',
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w500))),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'How can we help?',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18.sp),
                                              )),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'Book an appointment',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                   ),
                                              ))
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    flex: 2,
                                    child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 12.0),
                                          child: InkWell(
                                            onTap: (){
                                              Navigator.of(context).pushNamed('/BookPractitioner');
                                            },
                                            child: Icon(
                                              Icons.arrow_forward,
                                              size: 33,
                                            ),
                                          ),
                                        )))
                              ],
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap:(){
                            setState(() {
                              cl1=Colors.lightGreen;
                              cl2=Colors.transparent;
                              textClr=Colors.black;
                              textClr2=Colors.white;
                              past=false;
                            });
                          },
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              color: cl1,
                              borderRadius: BorderRadius.circular(20),

                            ),
                            child: Center(
                                child: Text('Upcoming',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp,
                                        color: textClr2))),
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              cl1=Colors.transparent;
                              cl2=Colors.lightGreen;
                              textClr=Colors.white;
                              textClr2=Colors.black;
                              past=true;
                            });
                          },
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              color: cl2,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: Text(
                              'Past',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16.sp,color: textClr),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 90,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0.w),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: CircleAvatar(

                                maxRadius: 30,
                                child: Image.asset('assets/dr1.jpg',fit: BoxFit.fill,height: 70,),
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
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Fri Jun 19 2021',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.sp),
                                          )),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            '15:00-15:15',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.sp),
                                          ))
                                    ],
                                  ),
                                )),
                            Expanded(
                                flex: 2,
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 12.0),
                                      child: Column(
                                        children: [
                                          InkWell(
                                            onTap:(){
                                              showModalBottomSheet(
                                                shape:RoundedRectangleBorder(  borderRadius: BorderRadius.only(
                                                  topLeft:Radius.circular(15),
                                                  topRight: Radius.circular(15),
                                                )),
                                                  context: context,
                                                  builder: (BuildContext context) {
                                                    return Container(

                                                        decoration: BoxDecoration(
                                                          //  color:Colors.red,
                                                        ),
                                                        height: 0.26.sh,
                                                        padding: EdgeInsets.only(top: 60.0.h,),
                                                        child: Column(
                                                          children: [
                                                            Align(
                                                                alignment:Alignment.centerLeft,
                                                                child: Padding(
                                                                  padding:  EdgeInsets.only(left: 18.0.w),
                                                                  child: InkWell(
                                                                    onTap: (){
                                                                      showDialog(
                                                                          context: context,
                                                                          builder: (BuildContext context) {
                                                                            return AlertDialog(
                                                                              title: Text('Are you sure you want to\nCancel your appointment'),
                                                                              content: Text(
                                                                                  'You will no be able to undo the action'),
                                                                              actions: <Widget>[
                                                                                FlatButton(
                                                                                  onPressed: () => {
                                                                                    Navigator.of(context).pop(),
                                                                                  },
                                                                                  child: Text('No'),
                                                                                ),
                                                                                FlatButton(
                                                                                  onPressed: () => {
                                                                                    Navigator.of(context).pop(),
                                                                                  },
                                                                                  child: Text('Yes,Cancel',style: TextStyle(
                                                                                    color: Colors.red
                                                                                  ),),
                                                                                )
                                                                              ],
                                                                            );
                                                                          });
                                                                    },
                                                                    child: Text('Cancel appointment',style: TextStyle(
                                                                      fontWeight: FontWeight.w600
                                                                    ),),
                                                                  ),
                                                                )),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Divider(
                                                              height: 2,
                                                              thickness: 1,
                                                              color: Colors.grey,
                                                            ),
                                                            SizedBox(
                                                              height: 15.h,
                                                            ),
                                                            Align(
                                                                alignment:Alignment.centerLeft,
                                                                child: Padding(
                                                                  padding:  EdgeInsets.only(left: 18.0.w),
                                                                  child: InkWell(
                                                                    onTap: (){
                                                                      Navigator.pushNamed(
                                                                          context, '/timeReservation');
                                                                    },
                                                                    child: Text('Change time and date',style: TextStyle(
                                                                        fontWeight: FontWeight.w600
                                                                    )),
                                                                  ),
                                                                )),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Divider(
                                                              height: 2,
                                                              thickness: 1,
                                                              color: Colors.grey,
                                                            ),
                                                          ],
                                                        ));
                                                  });
                                            },
                                            child: Icon(
                                              Icons.more_horiz,
                                              size: 33,
                                            ),
                                          ),
                                          InkWell(
                                            onTap:(){
                                              Navigator.pushNamed(context, '/BookPractitioner');
                                            },
                                            child: Icon(
                                              Icons.arrow_forward,
                                              size: 33,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )))
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 90,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0.w),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: CircleAvatar(
                                radius: 30,
                                child: Image.asset('assets/dr2.jpg',height: 70.h,),
                                backgroundColor: Colors.lightGreen,
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
                                                  fontWeight:
                                                  FontWeight.bold))),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Fri Jun 19 2021',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.sp),
                                          )),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            '15:00-15:15',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.sp),
                                          ))
                                    ],
                                  ),
                                )),
                            Expanded(
                                flex: 2,
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 12.0),
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.more_horiz,
                                            size: 33,
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            size: 33,
                                          ),
                                        ],
                                      ),
                                    )))
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 5.h,
                  ),
               past==true?   Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 90,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0.w),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: CircleAvatar(
                                radius: 30,
                                child: Image.asset('assets/dr3.png',height: 70.h,),
                                backgroundColor: Colors.lightGreen,
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
                                          child: Text('Dr Saeeda',
                                              style: TextStyle(
                                                  fontSize: 17.sp,
                                                  fontWeight:
                                                  FontWeight.bold))),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            'Fri Jun 19 2021',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.sp),
                                          )),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            '15:00-15:15',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.sp),
                                          ))
                                    ],
                                  ),
                                )),
                            Expanded(
                                flex: 2,
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.only(right: 12.0),
                                      child: Column(
                                        children: [
                                        Icon(
                                        Icons.more_horiz,
                                        size: 33,
                                      ),
                                          Icon(
                                            Icons.arrow_forward,
                                            size: 33,
                                          ),
                                        ],
                                      ),
                                    )))
                          ],
                        ),
                      )):Container(),
                ],
              ),
            ),
          ),
        ));
  }
}
