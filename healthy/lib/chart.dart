import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Chart extends StatefulWidget {
  List<String> dropDownOption;
  Chart(this.dropDownOption);

  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  DropDown() {
    DropdownButton<String>(
      elevation: 0,
      items: widget.dropDownOption.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (_) {},
    );
  }

  DropDownByCatogory() {
    DropdownButton<String>(
      elevation: 0,
      items: <String>['red', 'amber', 'green'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (_) {},
    );
  }

  DropDownByConsumed() {
    DropdownButton<String>(
      elevation: 0,
      items: <String>['333', '222', '444'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (_) {},
    );
  }

  DropDownByFats() {
    DropdownButton<String>(
      elevation: 0,
      items: <String>['ffdfd', 'dfdfdf', 'dfdfdf'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (_) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            actions: [
              DropdownButton<String>(
                elevation: 0,
                items: widget.dropDownOption.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              )
            ],
            elevation: 0,
            backgroundColor: Colors.white,
            leading: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(Icons.arrow_back_ios)),
            iconTheme: Theme.of(context).iconTheme,
          ),
          body: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                      height: 0.12.sh,
                      child: Image.asset('assets/ic_logo.png')),
                ),
                SizedBox(
                  height: 0.06.sh,
                ),
                Center(
                  child: Container(child: Image.asset('assets/chart.jpg')),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Center(
                    child: Container(
                        child: Text(
                      'The word health refers to a state of complete emotional and physical well-being. Healthcare exists to help people maintain this optimal state of health.\n However, despite this expenditure, people in the U.S. have a lower life expectancy than people in other developed countries. This is due to a variety of factors, including access to healthcare and lifestyle choices',
                      style: TextStyle(fontSize: 17.sp),
                    )),
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
