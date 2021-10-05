// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:healthy/Cart.dart';
// // import 'package:healtyapp/Cart/cart.dart';
// // import 'package:healtyapp/widget/cartTile.dart';
//
// class SelectedProduct extends StatefulWidget {
//   const SelectedProduct({Key? key}) : super(key: key);
//
//   @override
//   _SelectedProductState createState() => _SelectedProductState();
// }
//
// class _SelectedProductState extends State<SelectedProduct> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: SafeArea(
//         child: Scaffold(
//           backgroundColor: Colors.white,
//           appBar: AppBar(
//             elevation: 0,
//             backgroundColor: Colors.white,
//             leading: Icon(Icons.arrow_back_ios),
//             iconTheme: Theme.of(context).iconTheme,
//           ),
//           body: Padding(
//             padding: EdgeInsets.all(10.0.h),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Center(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                           height: 0.12.sh,
//                           width: 0.20.sw,
//                           decoration: BoxDecoration(
//                               color: Colors.grey[200],
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           child: Center(
//                               child: Container(
//                                   height:
//                                       MediaQuery.of(context).size.height * 0.06,
//                                   width: 0.10.sw,
//                                   decoration: BoxDecoration(
//                                       color: Colors.red[200],
//                                       borderRadius: BorderRadius.all(
//                                           Radius.circular(25.r)))))),
//                       SizedBox(
//                         width: 0.04.sw,
//                       ),
//                       Container(
//                           height: 0.12.sh,
//                           width: 0.20.sw,
//                           decoration: BoxDecoration(
//                               color: Colors.grey[200],
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           child: Center(
//                               child: Container(
//                                   height:
//                                       MediaQuery.of(context).size.height * 0.06,
//                                   width: 0.10.sw,
//                                   decoration: BoxDecoration(
//                                       color: Colors.yellow[100],
//                                       borderRadius: BorderRadius.all(
//                                           Radius.circular(25.r)))))),
//                       SizedBox(
//                         width: 0.04.sw,
//                       ),
//                       Container(
//                           height: 0.12.sh,
//                           width: 0.20.sw,
//                           decoration: BoxDecoration(
//                               color: Colors.grey[400],
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           child: Center(
//                             child: Icon(
//                               Icons.verified,
//                               size: 35.sp,
//                               color: Colors.green,
//                             ),
//                           )),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 0.06.sh,
//                 ),
//                 Center(
//                     child: Text(
//                   'Great! This is ideal for you',
//                   style: TextStyle(
//                       fontSize: 20.sp,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w400),
//                 )),
//                 SizedBox(
//                   height: 0.06.sh,
//                 ),
//                 Container(
//                   color: Colors.grey[300],
//                   child: CheckOutCartTile(1),
//                 ),
//                 SizedBox(
//                   height: 0.06.sh,
//                 ),
//                 Text('Benefits',
//                     style: TextStyle(
//                         fontSize: 25.sp,
//                         color: Colors.black,
//                         fontWeight: FontWeight.w400)),
//                 SizedBox(
//                   height: 0.04.sh,
//                 ),
//                 Row(
//                   children: [
//                     Expanded(
//                       flex: 5,
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.verified,
//                             size: 35.sp,
//                             color: Colors.green,
//                           ),
//                           SizedBox(
//                             width: 0.02.sw,
//                           ),
//                           Text(
//                             'Low in sugar',
//                             style: TextStyle(fontSize: 20.sp),
//                           )
//                         ],
//                       ),
//                     ),
//                     //SizedBox(width: 0.10.sw,),
//
//                     Expanded(
//                       flex: 5,
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.verified,
//                             size: 35.sp,
//                             color: Colors.green,
//                           ),
//                           SizedBox(
//                             width: 0.01.sw,
//                           ),
//                           Text(
//                             'High in Fiber',
//                             style: TextStyle(fontSize: 20.sp),
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 Center(
//                   child: InkWell(
//                     onTap: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => Cart()));
//                     },
//                     child: Container(
//                       color: Colors.grey[350],
//                       width: 0.90.sw,
//                       height: 0.08.sh,
//                       child: Center(
//                         child: Text('Add to basket',
//                             style: TextStyle(
//                                 fontSize: 20.sp, fontWeight: FontWeight.w500)),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/Cart.dart';

class CheckOutCartTile extends StatelessWidget {
  final int index;
  const CheckOutCartTile(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Text(index.toString(),
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          title: Text('Sunflower Oil',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('5L',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.black)),
              SizedBox(
                height: 10,
              ),
              Text('£ 0.80',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
          trailing: Image.asset('assets/ic_logo.png'),
        ),
        Divider(
          height: 5,
          thickness: 2,
        )
      ],
    );
  }
}

class SelectedProduct extends StatefulWidget {
  const SelectedProduct({Key? key}) : super(key: key);

  @override
  _SelectedProductState createState() => _SelectedProductState();
}

class _SelectedProductState extends State<SelectedProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios)),
            iconTheme: Theme.of(context).iconTheme,
          ),
          body: Padding(
            padding: EdgeInsets.all(10.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 0.12.sh,
                          width: 0.20.sw,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0))),
                          child: Center(
                              child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width: 0.10.sw,
                                  decoration: BoxDecoration(
                                      color: Colors.red[200],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25.r)))))),
                      SizedBox(
                        width: 0.04.sw,
                      ),
                      Container(
                          height: 0.12.sh,
                          width: 0.20.sw,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0))),
                          child: Center(
                              child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width: 0.10.sw,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(25.r)))))),
                      SizedBox(
                        width: 0.04.sw,
                      ),
                      Container(
                          height: 0.12.sh,
                          width: 0.20.sw,
                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0))),
                          child: Center(
                            child: Icon(
                              Icons.verified,
                              size: 35.sp,
                              color: Colors.green,
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 0.06.sh,
                ),
                Center(
                    child: Text(
                  'Great! This is ideal for you',
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                )),
                SizedBox(
                  height: 0.06.sh,
                ),
                Container(
                  color: Colors.grey[300],
                  child: CheckOutCartTile(1),
                ),
                SizedBox(
                  height: 0.06.sh,
                ),
                Text('Benefits',
                    style: TextStyle(
                        fontSize: 25.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400)),
                SizedBox(
                  height: 0.04.sh,
                ),
                Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.verified,
                            size: 35.sp,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 0.02.sw,
                          ),
                          Text(
                            'Low in sugar',
                            style: TextStyle(fontSize: 20.sp),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 0.05.sh,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.verified,
                            size: 35.sp,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 0.01.sw,
                          ),
                          Text(
                            'High in Fiber',
                            style: TextStyle(fontSize: 20.sp),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cart()));
                    },
                    child: Container(
                      color: Colors.lightGreen,
                      height: 43,
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: Center(
                        child: Text('Add to basket',
                            style: TextStyle(
                                fontSize: 17.sp, fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
