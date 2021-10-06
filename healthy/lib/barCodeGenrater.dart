import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class BarCodeGenrator extends StatefulWidget {
  const BarCodeGenrator({Key? key}) : super(key: key);

  @override
  _BarCodeGenratorState createState() => _BarCodeGenratorState();
}

class _BarCodeGenratorState extends State<BarCodeGenrator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          // appBar: AppBar(),
          body: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: BarcodeWidget(
                  barcode: Barcode.code128(),
                  data: 'Sxagmn1ZpVlNP95k3sTq',
                  width: 200,
                  height: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
