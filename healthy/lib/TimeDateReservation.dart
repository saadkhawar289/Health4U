import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Resolution extends StatefulWidget {
  String drname;
  Resolution(this.drname);
  @override
  _ResolutionState createState() => _ResolutionState();
}

class _ResolutionState extends State<Resolution> {
  bool isEnable = false;
  bool Enable = false;
  bool isable = false;
  bool Time1 = false;
  bool Time2 = false;
  bool Time3 = false;
  bool Date1 = false;
  bool Date2 = false;
  bool Date3 = false;
  bool Date4 = false;
  bool Date5 = false;
  bool Date6 = false;
  bool Date7 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xFFF7F7F7),
            elevation: 0.7,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.black,
              ),
            ),
            toolbarHeight: 70,
            title: Center(
              child: Column(
                children: [
                  Text(
                    "Time and Date",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "Select a time and date",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  )
                ],
              ),
            )),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width * 3,
            // color: Colors.red,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 3,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 38.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Date",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 38.0, top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("November 2021"),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Mon"),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Tue"),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Wed"),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Thu"),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Fri"),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Sat"),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Sun")
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isable = isable ? false : true;
                                  Enable = false;
                                  isEnable = false;
                                });
                              },
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        15), // radius of 10
                                    //color: const Color(0xFFF7F7F7),
                                    color: isable == true
                                        ? Colors.lightGreen
                                        : Color(0xFFF7F7F7),
                                  ),
                                  child: Center(child: Text("05"))),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(15), // radius of 10
                                  color: const Color(0xFFF7F7F7),
                                ),
                                child: Center(child: Text("06"))),
                            SizedBox(
                              width: 12,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isEnable = isEnable ? false : true;
                                  Enable = false;
                                  isable = false;
                                });
                              },
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        15), // radius of 10
                                    color: isEnable == true
                                        ? Colors.lightGreen
                                        : Color(0xFFF7F7F7),
                                  ),
                                  child: Center(child: Text("07"))),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Enable = Enable ? false : true;
                                  isEnable = false;
                                  isable = false;
                                });
                              },
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        15), // radius of 10
                                    // color: const Color(0xFFF7F7F7),
                                    color: Enable == true
                                        ? Colors.lightGreen
                                        : Color(0xFFF7F7F7),
                                  ),
                                  child: Center(child: Text("08"))),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(15), // radius of 10
                                  color: const Color(0xFFF7F7F7),
                                ),
                                child: Center(child: Text("09"))),
                            SizedBox(
                              width: 12,
                            ),
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(15), // radius of 10
                                  color: const Color(0xFFF7F7F7),
                                ),
                                child: Center(child: Text("10"))),
                            SizedBox(
                              width: 12,
                            ),
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(15), // radius of 10
                                  color: const Color(0xFFF7F7F7),
                                ),
                                child: Center(child: Text("11"))),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width * 3,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black12)),
                  child: Column(
                    //  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 38.0, bottom: 15, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Time",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5.0,
                              ),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    Date1 = Date1 == true ? false : true;
                                    Date2 = false;
                                    Date3 = false;
                                  });
                                },
                                child: Container(
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          15), // radius of 10
                                      color: isEnable == true
                                          ? Date1 == true
                                              ? Colors.blue
                                              : Colors.lightGreen
                                          : Color(0xFFF7F7F7),
                                      // green as background color
                                    ),
                                    child: Center(child: Text("09:45"))),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Date4 = Date4 == true ? false : true;
                                  Date5 = false;
                                  Date6 = false;
                                  Date7 = false;
                                });
                              },
                              child: Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        15), // radius of 10
                                    // color: const Color(0xFFF7F7F7),
                                    color: Enable == true
                                        ? Date4 == true
                                            ? Colors.blue
                                            : Colors.lightGreen
                                        : Color(0xFFF7F7F7),
                                  ),
                                  child: Center(child: Text("10:45"))),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            // SizBox(
                            //   width: 18,
                            // ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Date2 = Date2 == true ? false : true;
                                  Date1 = false;
                                  Date3 = false;
                                });
                              },
                              child: Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        15), // radius of 10
                                    // color: const Color(0xFFF7F7F7),

                                    color: isEnable == true
                                        ? Date2 == true
                                            ? Colors.blue
                                            : Colors.lightGreen
                                        : Color(0xFFF7F7F7),
                                  ),
                                  child: Center(child: Text("11:45"))),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(15), // radius of 10
                                  color: const Color(0xFFF7F7F7),
                                ),
                                child: Center(child: Text("12:45"))),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5.0,
                              ),
                              child: Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        15), // radius of 10
                                    color: const Color(0xFFF7F7F7),
                                    // green as background color
                                  ),
                                  child: Center(child: Text("10:30"))),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(15), // radius of 10
                                  color: const Color(0xFFF7F7F7),
                                ),
                                child: Center(child: Text("11:30"))),
                            SizedBox(
                              width: 18,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Date5 = Date5 == true ? false : true;
                                  Date4 = false;
                                  Date6 = false;
                                  Date7 = false;
                                });
                              },
                              child: Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        15), // radius of 10
                                    // color: const Color(0xFFF7F7F7),
                                    color: Enable == true
                                        ? Date5 == true
                                            ? Colors.blue
                                            : Colors.lightGreen
                                        : Color(0xFFF7F7F7),
                                  ),
                                  child: Center(child: Text("12:30"))),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Time1 = Time1 == true ? false : true;
                                  Time2 = false;
                                  Time3 = false;
                                });
                              },
                              child: Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          15), // radius of 10
                                      // color: const Color(0xFFF7F7F7),

                                      color: isable == true
                                          ? Time1 == true
                                              ? Colors.blue
                                              : Colors.lightGreen
                                          : Color(0xFFF7F7F7)),
                                  child: Center(child: Text("01:30"))),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5.0,
                              ),
                              child: Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        15), // radius of 10
                                    color: const Color(0xFFF7F7F7),
                                    // green as background color
                                  ),
                                  child: Center(child: Text("11:15"))),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Date6 = Date6 == true ? false : true;
                                  Date4 = false;
                                  Date5 = false;
                                  Date7 = false;
                                });
                              },
                              child: Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        15), // radius of 10
                                    //color: const Color(0xFFF7F7F7),
                                    color: Enable == true
                                        ? Date6 == true
                                            ? Colors.blue
                                            : Colors.lightGreen
                                        : Color(0xFFF7F7F7),
                                  ),
                                  child: Center(child: Text("11:00"))),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(15), // radius of 10
                                  color: const Color(0xFFF7F7F7),
                                ),
                                child: Center(child: Text("11:45"))),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(15), // radius of 10
                                  color: const Color(0xFFF7F7F7),
                                ),
                                child: Center(child: Text("03:45"))),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5.0,
                              ),
                              child: Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        15), // radius of 10
                                    color: const Color(0xFFF7F7F7),
                                    // green as background color
                                  ),
                                  child: Center(child: Text("04:45"))),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(15), // radius of 10
                                  color: const Color(0xFFF7F7F7),
                                ),
                                child: Center(child: Text("05:00"))),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(15), // radius of 10
                                  color: const Color(0xFFF7F7F7),
                                ),
                                child: Center(child: Text("06:00"))),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(15), // radius of 10
                                  color: const Color(0xFFF7F7F7),
                                ),
                                child: Center(child: Text("07:00"))),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                  left: 5.0,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      Time3 = Time3 == true ? false : true;
                                      Time1 = false;
                                      Time2 = false;
                                    });
                                  },
                                  child: Container(
                                      height: 30,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            15), // radius of 10
                                        //color: const Color(0xFFF7F7F7),
                                        color: isable == true
                                            ? Time3 == true
                                                ? Colors.blue
                                                : Colors.lightGreen
                                            : Color(0xFFF7F7F7),
                                        // green as background color
                                      ),
                                      child: Center(child: Text("12:00"))),
                                )),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(15), // radius of 10
                                  color: const Color(0xFFF7F7F7),
                                ),
                                child: Center(child: Text("02:00"))),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(15), // radius of 10
                                  color: const Color(0xFFF7F7F7),
                                ),
                                child: Center(child: Text("03:30"))),
                            SizedBox(
                              width: 18,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Date7 = Date7 == true ? false : true;
                                  Date5 = false;
                                  Date6 = false;
                                  Date4 = false;
                                });
                              },
                              child: Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        15), // radius of 10
                                    //  color: const Color(0xFFF7F7F7),

                                    color: Enable == true
                                        ? Date7 == true
                                            ? Colors.blue
                                            : Colors.lightGreen
                                        : Color(0xFFF7F7F7),
                                  ),
                                  child: Center(child: Text("06:00"))),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5.0,
                              ),
                              child: Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        15), // radius of 10
                                    color: const Color(0xFFF7F7F7),
                                    // green as background color
                                  ),
                                  child: Center(child: Text("05:00"))),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Time2 = Time2 == true ? false : true;
                                  Time1 = false;
                                  Time3 = false;
                                });
                              },
                              child: Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        15), // radius of 10
                                    //color: const Color(0xFFF7F7F7),
                                    color: isable == true
                                        ? Time2 == true
                                            ? Colors.blue
                                            : Colors.lightGreen
                                        : Color(0xFFF7F7F7),
                                  ),
                                  child: Center(child: Text("10:30"))),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(15), // radius of 10
                                  color: const Color(0xFFF7F7F7),
                                ),
                                child: Center(child: Text("12:00"))),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(15), // radius of 10
                                  color: const Color(0xFFF7F7F7),
                                ),
                                child: Center(child: Text("02:00"))),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5.0,
                              ),
                              child: Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        15), // radius of 10
                                    color: const Color(0xFFF7F7F7),
                                    // green as background color
                                  ),
                                  child: Center(child: Text("05:50"))),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                              height: 30,
                              width: 150,
                              child: Row(
                                children: [
                                  Text(
                                    "appointments till 6 pm",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.arrow_downward_rounded,
                                    size: 20,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(15), // radius of 10
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Date3 = Date3 == true ? false : true;
                                  Date1 = false;
                                  Date2 = false;
                                });
                              },
                              child: Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          15), // radius of 10
                                      //  color: const Color(0xFFF7F7F7),
                                      color: isEnable == true
                                          ? Date3 == true
                                              ? Colors.blue
                                              : Colors.lightGreen
                                          : Color(0xFFF7F7F7)),
                                  child: Center(child: Text("01:00"))),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 110,
                  width: MediaQuery.of(context).size.width * 3,
                  // color: Colors.red,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(widget.drname),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Fri november 1 , 15:00-15:15"),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/confirmation');
                          },
                          child: Container(
                            width: 0.45.sw,
                            height: 0.06.sh,
                            color: isEnable || Enable || isable == true
                                ? Colors.lightGreen
                                : Color(0xFFF7F7F7),
                            child: Center(child: Text("Book")),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
