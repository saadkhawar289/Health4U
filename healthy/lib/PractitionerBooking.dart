import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class BookPractitioner extends StatefulWidget {
  const BookPractitioner({Key? key}) : super(key: key);

  @override
  _BookPractitionerState createState() => _BookPractitionerState();
}

class _BookPractitionerState extends State<BookPractitioner> {
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
                  'Book Practitioner',
                  style: TextStyle(
                      fontSize: 17.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Select a Practitioner',
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
            padding: EdgeInsets.all(20.h,),
            child: Column(
              children: [

                Container(
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
                    height: 70,

                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 3,
                              child: Padding(
                                padding:  EdgeInsets.only(
                                    top: 26.0.h, left: 8),
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('GP Doctor',
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight.bold,fontSize: 18.sp))),

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
                                        Navigator.pushNamed(context,'/selectDoctor');
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
                SizedBox(
                  height: 20.h,
                ),
                Container(
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
                    height: 70,

                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 3,
                              child: Padding(
                                padding:  EdgeInsets.only(
                                    top: 26.0.h, left: 8),
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Nutritionist',
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight.bold,fontSize: 18.sp))),

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
                                      onTap: (){},
                                      child: Icon(
                                        Icons.arrow_forward,
                                        size: 33,
                                      ),
                                    ),
                                  )))
                        ],
                      ),
                    ))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
