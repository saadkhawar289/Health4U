import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'forntscreen.dart';

class DiabitiesSym extends StatefulWidget {
  static String tag = "Check Email";

  DiabitiesSym({Key? key}) : super(key: key);

  @override
  DiabitiesSymState createState() => DiabitiesSymState();
}

class DiabitiesSymState extends State<DiabitiesSym> {
  bool zinic1 = false;
  bool zinic2 = false;
  bool zinic3 = false;
  bool zinic4 = false;
  bool zinic5 = false;
  bool zinic6 = false;

  bool isFreelancer = false;
  bool isCharity = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            toolbarHeight: 15,
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// select company account
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Center(
                    child: Text(
                      "Visit your GP if you experience the main symptoms of diabetes, which include",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0.sp,
                          fontWeight: FontWeight.w500),
                      // maxLines: 2,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      //  color: Colors.red,
                      ),
                  child: ListTile(
                    title: Text("Feeling very thirsty",
                        style: TextStyle(
                          fontSize: 16.sp,
                        )),
                    leading: Checkbox(
                      value: zinic1,
                      onChanged: (bool? value) {
                        // This is where we update the state when the checkbox is tapped
                        setState(() {
                          zinic1 = value!;
                          // isChecked1 = false;
                        });
                      },
                    ),

                    //trailing: Icon(Icons.where_to_vote),
                  ),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      //  color: Colors.red,
                      ),
                  child: ListTile(
                    title: Text("Weight loss and loss of muscle bulk",
                        style: TextStyle(
                          fontSize: 16.sp,
                        )),
                    leading: Checkbox(
                      value: zinic2,
                      onChanged: (bool? value) {
                        // This is where we update the state when the checkbox is tapped
                        setState(() {
                          zinic2 = value!;
                          // isChecked1 = false;
                        });
                      },
                    ),

                    //trailing: Icon(Icons.where_to_vote),
                  ),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      //  color: Colors.red,
                      ),
                  child: ListTile(
                    title: Text(
                        "Itching around the penis or vagina, or frequent episodes of thrush",
                        style: TextStyle(
                          fontSize: 16.sp,
                        )),
                    leading: Checkbox(
                      value: zinic3,
                      onChanged: (bool? value) {
                        // This is where we update the state when the checkbox is tapped
                        setState(() {
                          zinic3 = value!;
                          // isChecked1 = false;
                        });
                      },
                    ),

                    //trailing: Icon(Icons.where_to_vote),
                  ),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      //  color: Colors.red,
                      ),
                  child: ListTile(
                    title: Text("Blurred vision",
                        style: TextStyle(
                          fontSize: 16.sp,
                        )),
                    leading: Checkbox(
                      value: zinic4,
                      onChanged: (bool? value) {
                        // This is where we update the state when the checkbox is tapped
                        setState(() {
                          zinic4 = value!;
                          // isChecked1 = false;
                        });
                      },
                    ),

                    //trailing: Icon(Icons.where_to_vote),
                  ),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      //  color: Colors.red,
                      ),
                  child: ListTile(
                    title: Text("Cuts or wounds that heal slowly",
                        style: TextStyle(
                          fontSize: 16.sp,
                        )),
                    leading: Checkbox(
                      value: zinic5,
                      onChanged: (bool? value) {
                        // This is where we update the state when the checkbox is tapped
                        setState(() {
                          zinic5 = value!;
                          // isChecked1 = false;
                        });
                      },
                    ),

                    //trailing: Icon(Icons.where_to_vote),
                  ),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      //  color: Colors.red,
                      ),
                  child: ListTile(
                    title: Text(
                        "Peeing more frequently than usual, particularly at night",
                        style: TextStyle(
                          fontSize: 16.sp,
                        )),
                    leading: Checkbox(
                      value: zinic6,
                      onChanged: (bool? value) {
                        // This is where we update the state when the checkbox is tapped
                        setState(() {
                          zinic6 = value!;
                          // isChecked1 = false;
                        });
                      },
                    ),

                    //trailing: Icon(Icons.where_to_vote),
                  ),
                ),

                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Note",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
                    "Type 1 diabetes can develop quickly over weeks or even days",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w600),
                    maxLines: 2,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
                  child: Text(
                    "Many people have type 2 diabetes for years without realising because the early symptoms tend to be general.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w600),
                    maxLines: 2,
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => forntscreen()));
                    },
                    child: Container(
                      color: Colors.lightGreen,
                      height: 43,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Center(
                        child: Text('Finish',
                            style: TextStyle(
                                fontSize: 17.sp, fontWeight: FontWeight.w600,color: Colors.white)),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   child: Text('Finish',
                  //       style: TextStyle(fontSize: 17.sp, color: Colors.black)),
                  //   onPressed: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => forntscreen()));
                  //   },
                  //   style: ButtonStyle(
                  //       backgroundColor:
                  //           MaterialStateProperty.all(Colors.grey[350]),
                  //       textStyle: MaterialStateProperty.all(TextStyle(
                  //         fontSize: 20.sp,
                  //       ))),
                  // ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
