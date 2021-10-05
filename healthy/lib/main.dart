import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/splash.dart';

import 'home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ScreenUtilInit(
      builder: () => DevicePreview(
          enabled: false,
          builder: (context) => MaterialApp(
                debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: Colors.green

            ),
                // home: Splash(),
                routes: {
                  '/': (BuildContext context) => Splash(),
                  '/homeScreen': (BuildContext context) => HomeScreen()
                },
              ))));
}

// class Splash extends StatefulWidget {
//   @override
//   _SplashState createState() => _SplashState();
// }
//
// class _SplashState extends State<Splash> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp();
//   }
// }
//
//
