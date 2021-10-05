import 'dart:math';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthy/AcceptedCondition.dart';
import 'package:healthy/home.dart';
import 'package:healthy/login.dart';
//import 'package:healtyapp/patientEMR.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  @override
  IntroScreenState createState() => new IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  final introKey = GlobalKey<IntroScreenState>();
  bool _isScrolling = false;
  IntroScreen ss= IntroScreen();

  @override
  void initState() {
    super.initState();
  }

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => HomeScreen()),
    );
  }
  // Future<void> animateScroll(int page) async {
  //   setState(() => _isScrolling = true);
  //   await _pageController.animateToPage(
  //     page,
  //     duration: Duration(milliseconds: widget.animationDuration),
  //     curve: widget.curve,
  //   );
  //   if (mounted) {
  //     setState(() => _isScrolling = false);
  //   }
  // }

  Widget _buildImage(String assetName) {
    const Color background = Color(0xffF7F7F7);

    return GestureDetector(
      onTap: (){

       //   animateScroll(min(_currentPage.round() + 1, widget.pages.length - 1));

      },
      child: Container(
        color: background,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Align(
          child: Image.asset('assets/$assetName',
              width: 300.0, height: 300, fit: BoxFit.cover),
          //alignment: Alignment.bottomCenter,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 15, color: Colors.black);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return Container(
      color: Color(0xffF7F7F7),
      child: SafeArea(
        child: Scaffold(
          body: IntroductionScreen(

// rawPages: [
//   Login(),
//   AcceptedCondition()
//
// ],

            globalBackgroundColor: Colors.white,
            key: introKey,

            pages: [

              PageViewModel(

                title: "\n  Input your data",
                body:
                    "We start by asking simple questions\n  understand how you are,what type of \n diabetes have and medicines you take",
                image: _buildImage('SStest2.png'),
                decoration: pageDecoration,

              ),
              PageViewModel(
                title: "\n  Shop in store or online",
                body:
                    "Our unique aspect of the app is the traffic \nlight feature. The traffice light predicts and \n      advises the right food for you",
                image: _buildImage('c2.jpg'),
                decoration: pageDecoration,
              ),
              PageViewModel(
                title: "\n Traffic Light Feature",
                body:
                    "Our unique aspect of the app is the traffic \nlight feature. The traffice light predicts and \n      advises the right food for you",
                image: _buildImage('SStest3.png'),
                decoration: pageDecoration,
              ),
              PageViewModel(
                title: "\n \n Purchase History",
                body:
                    "We keep a history of the things you\n purchased and would then",
                image: _buildImage('c4.JPG'),
                decoration: pageDecoration,
              ),
            ],
            onDone: () => _onIntroEnd(context),
            showSkipButton: false,
            skipFlex: 0,
            nextFlex: 0,
            dotsFlex: 5,
            next: Container(
              height: 30,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                  child: Text(
                "Next",
                style: TextStyle(color: Colors.black, fontSize: 14.0),
              )),
            ),
            showNextButton: false,
            done: Container(
              height: 30,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                  child: Text(
                "Sign Up",
                style: TextStyle(color: Colors.white, fontSize: 14.0,fontWeight: FontWeight.w600),
              )),
            ),
            dotsDecorator: DotsDecorator(
              size: Size(10.0, 10.0),
              color: Color(0xFFBDBDBD),
              activeSize: Size(22.0, 10.0),
              activeColor: Colors.lightGreen,
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
