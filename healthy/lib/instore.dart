import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:healthy/SelectProduct.dart';

class store extends StatefulWidget {
  final String brand;
  store(this.brand);
  @override
  _State createState() => _State();
}

class _State extends State<store> {
  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      print('=====================$barcodeScanRes');
      if (barcodeScanRes.toString().isNotEmpty) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    SelectedProduct(barcodeScanRes.toString(),widget.brand)));
      } else {}
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    } catch (e) {
      print('==================$e');
    }
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    // setState(() {
    //   _scanBarcode = barcodeScanRes;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 3,
        width: MediaQuery.of(context).size.width * 3,
        //  color: Colors.red,
        child: Stack(
          children: [
            ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 40),
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.red,
                  color: const Color(0xFFF7F7F7),
                  child: Image.asset("assets/screen123.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Scan your product",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Hold the product barcode behind your\n"
                                "       camera so you can see it below")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // Container(
                //     margin: EdgeInsets.only(top: 350, left: 100, right: 100),
                //     height: 5,
                //     width: 160,
                //     decoration: BoxDecoration(
                //         color: Colors.black,
                //         borderRadius: BorderRadius.all(Radius.circular(10)))),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(bottom: 35),
                        child: InkWell(
                          onTap: () {
                            scanBarcodeNormal();
                          },
                          child: Container(
                            height: 38,
                            width: 150,
                            child: Center(child: Text("Scan Your Product")),
                            //color: Colors.cyan,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Colors.lightGreen),
                          ),
                        ))
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
