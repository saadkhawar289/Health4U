import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/chart.dart';

// ignore: must_be_immutable
class RetailerVisualization extends StatelessWidget {
  List<String> foodCategory = ['Red', 'Amber', 'Green'];
  List<String> monthCategory = ['Starting Month', 'Ending Month'];
  List<String> patientCategory = ['Saad', 'Amaan', 'Ashfaq'];
  List<String> scoreCategory = ['10', '20', '30'];
  List<String> percentageCategory = ['10%', '20%', '30%'];

  @override
  Widget build(BuildContext context) {
    DecorationImage _buildServiceBoxImage(String image) {
      return DecorationImage(
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.40), BlendMode.darken),
          image: AssetImage(image));
    }

    final double deviceWidth = MediaQuery.of(context)
        .size
        .width; //this line is used for getting the device size and width and save it into variable
    final double targetWidth = deviceWidth > 550.0
        ? 500.0
        : deviceWidth *
            0.95; // this line is used to check the required/ or we can say check the target width scrren basicly it is a condition that we are passing that if device width is greater or less then required target then show this size (0.95) 'this means that make it to 95%'
    final double targetPadding = deviceWidth - targetWidth;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Statistics',
          style: TextStyle(color: Colors.black),
        ),
      ),
      // backgroundColor: Color(0xfff2e1cf),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: targetPadding / 2),
              child: GestureDetector(
                onTap: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Chart(foodCategory)));
                },
                child: Container(
                  height: 150,
                  width: targetWidth,
                  decoration: BoxDecoration(
                    image: _buildServiceBoxImage('assets/foodItems.png'),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    'Food items purchased',
                    style: TextStyle(
                        fontSize: 17.0.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: targetPadding / 2),
              child: GestureDetector(
                onTap: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Chart(monthCategory)));
                },
                child: Container(
                  height: 150,
                  width: targetWidth,
                  decoration: BoxDecoration(
                    image: _buildServiceBoxImage('assets/foodItems.png'),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    'Food items purchased monthly',
                    style: TextStyle(
                        fontSize: 17.0.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: targetPadding / 2),
              child: GestureDetector(
                onTap: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Chart(percentageCategory)));
                },
                child: Container(
                  height: 150,
                  width: targetWidth,
                  decoration: BoxDecoration(
                    image: _buildServiceBoxImage('assets/foodItems.png'),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    'Percentage of items',
                    style: TextStyle(
                        fontSize: 17.0.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: targetPadding / 2),
              child: GestureDetector(
                onTap: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Chart(scoreCategory)));
                },
                child: Container(
                  height: 150,
                  width: targetWidth,
                  decoration: BoxDecoration(
                    image: _buildServiceBoxImage('assets/foodItems.png'),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    'Over All Health%',
                    style: TextStyle(
                        fontSize: 17.0.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
