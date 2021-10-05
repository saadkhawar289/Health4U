import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/AddProduct.dart';
import 'package:healthy/Listproduct.dart';
import 'package:healthy/drawer.dart';

class forntscreenR extends StatefulWidget {
  const forntscreenR({Key? key}) : super(key: key);

  @override
  _RetailerLandingScreenState createState() => _RetailerLandingScreenState();
}

class _RetailerLandingScreenState extends State<forntscreenR> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          drawer: CustomDrawer(vis: 3,),
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
          // floatingActionButton: Container(
          //   decoration: BoxDecoration(
          //       color: Colors.grey[350],
          //       borderRadius: BorderRadius.all(Radius.circular(55))
          //   ),
          //   width: 0.30.sw,
          //   height: 0.08.sh,
          //   child: Center(
          //     child: Row(
          //       children: [
          //         Icon(Icons.add,size: 35.sp,color: Colors.greenAccent[700],),
          //         Text('Add Items',
          //             style: TextStyle(
          //                 fontSize: 15.sp,
          //                 fontWeight: FontWeight.bold)),
          //       ],
          //     ),
          //   ),
          // ),
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
                                builder: (context) => AddProduct()));
                      },
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OurProductList()));
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
                                  Icons.category,
                                  size: 55.sp,
                                  color: Colors.greenAccent[700],
                                ),
                                Text('Our Items',
                                    style: TextStyle(
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddProduct()));
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
                                Icons.category_outlined,
                                size: 55.sp,
                                color: Colors.greenAccent[700],
                              ),
                              Text('Add Items',
                                  style: TextStyle(
                                      fontSize: 17.sp,
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
