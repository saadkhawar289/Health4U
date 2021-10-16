// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:healthy/EditDiabetes.dart';
// import 'package:healthy/diabitiesSymptoms.dart';
// import 'package:healthy/forntscreen.dart';
//
// class HealthInfo extends StatefulWidget {
//   const HealthInfo({Key? key}) : super(key: key);
//
//   @override
//   _HealthInfoState createState() => _HealthInfoState();
// }
//
// class _HealthInfoState extends State<HealthInfo> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: MediaQuery.of(context).size.height,
//       child: SafeArea(
//         child: Scaffold(
//           backgroundColor: Colors.white,
//           appBar: AppBar(
//             elevation: 0,
//             backgroundColor: Colors.white,
//             leading: InkWell(
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//                 child: Icon(Icons.clear)),
//             iconTheme: Theme.of(context).iconTheme,
//           ),
//           body: Padding(
//             padding: const EdgeInsets.all(0.0),
//             child: ListView(
//               children: [
//                 Column(
//                   children: [
//                     Center(
//                       child: Container(
//                           height: 0.12.sh,
//                           child: Image.asset('assets/ic_logo_intro.png')),
//                     ),
//                     SizedBox(
//                       height: 0.06.sh,
//                     ),
//                     Align(
//                       alignment: Alignment.topLeft,
//                       child: Padding(
//                         padding: const EdgeInsets.all(20.0),
//                         child: Text(
//                           'Health Information',
//                           style: TextStyle(
//                               fontSize: 20.sp, fontWeight: FontWeight.w500),
//                         ),
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.topLeft,
//                       child: Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Text(
//                           'Do you have any known Diabetes?',
//                           style: TextStyle(
//                               fontSize: 17.sp, fontWeight: FontWeight.w300),
//                         ),
//                       ),
//                     ),
//                     Center(
//                       child: InkWell(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => forntscreen()));
//                         },
//                         child: Container(
//                           color: Colors.grey[350],
//                           width: 0.90.sw,
//                           height: 0.06.sh,
//                           child: Center(
//                             child: Text('No',
//                                 style: TextStyle(
//                                     fontSize: 17.sp,
//                                     fontWeight: FontWeight.w500)),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 0.02.sh,
//                     ),
//                     Center(
//                       child: InkWell(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => editdiabetes()));
//                         },
//                         child: Container(
//                           color: Colors.grey[350],
//                           width: 0.90.sw,
//                           height: 0.06.sh,
//                           child: Center(
//                             child: Text('Yes',
//                                 style: TextStyle(
//                                     fontSize: 17.sp,
//                                     fontWeight: FontWeight.w500)),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 0.02.sh,
//                     ),
//                     Center(
//                       child: InkWell(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => DiabitiesSym()));
//                         },
//                         child: Container(
//                           color: Colors.grey[350],
//                           width: 0.90.sw,
//                           height: 0.06.sh,
//                           child: Center(
//                             child: Text('Don\'t Know',
//                                 style: TextStyle(
//                                     fontSize: 17.sp,
//                                     fontWeight: FontWeight.w500)),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
