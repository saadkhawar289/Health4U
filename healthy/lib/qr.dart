// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';
//
// import 'SelectProduct.dart';
//
// class QRViewExample extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _QRViewExampleState();
// }
//
// class _QRViewExampleState extends State<QRViewExample> {
//   Barcode? result;
//   QRViewController? controller;
//   final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
//
//   // In order to get hot reload to work we need to pause the camera if the platform
//   // is android, or resume the camera if the platform is iOS.
//   @override
//   // void reassemble() {
//   //   super.reassemble();
//   //   if (Platform.isAndroid) {
//   //     controller!.pauseCamera();
//   //   }
//   //   controller!.resumeCamera();
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           Expanded(flex: 4, child: _buildQrView(context)),
//           Expanded(
//             flex: 5,
//             child: Column(
//               children: <Widget>[
//                 if (result != null)
//                   Text(
//                       'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code.toString()}')
//                 else
//                   Padding(
//                     padding: const EdgeInsets.all(18.0),
//                     child: Text(
//                       'Scan your product',
//                       style: TextStyle(fontSize: 16.sp),
//                     ),
//                   ),
//                 SizedBox(
//                   height: 10.h,
//                 ),
//                 Center(
//                     child: Padding(
//                   padding: const EdgeInsets.all(28.0),
//                   child: Text(
//                       'Hold the product barcode behind your \n camera so you can see it below',
//                       style: TextStyle(fontSize: 14.sp)),
//                 ))
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget _buildQrView(BuildContext context) {
//     // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
//     var scanArea = (MediaQuery.of(context).size.width < 400 ||
//             MediaQuery.of(context).size.height < 400)
//         ? 180.0
//         : 150.0;
//     // To ensure the Scanner view is properly sizes after rotation
//     // we need to listen for Flutter SizeChanged notification and update controller
//     return QRView(
//       key: qrKey,
//       onQRViewCreated: _onQRViewCreated,
//       overlay: QrScannerOverlayShape(
//           borderColor: Colors.red,
//           borderRadius: 5,
//           borderLength: 20,
//           borderWidth: 5,
//           cutOutSize: scanArea),
//       onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
//     );
//   }
//
//   void _onQRViewCreated(QRViewController controller) async {
//     // setState(() {
//     //   this.controller = controller;
//     // });
//     controller.scannedDataStream.listen((scanData) {
//       setState(() {
//         result = scanData;
//         controller.pauseCamera();
//       });
//       if (result.toString().isNotEmpty) {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => SelectedProduct(result.toString())));
//       } else {}
//     });
//   }
//
//   void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
//     // log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
//     if (!p) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('no Permission')),
//       );
//     }
//   }
//
//   @override
//   void dispose() {
//     controller?.dispose();
//     controller?.dispose();
//     print(';;;;;;;;;;;;;;;;;;;;;;;;;;;;============================');
//     //controller?.scannedDataStream.drain();
//     super.dispose();
//   }
// }

// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
//
// import 'SelectProduct.dart';
//
// class QRViewExample extends StatefulWidget {
//   @override
//   QRViewExampleState createState() => QRViewExampleState();
// }
//
// class QRViewExampleState extends State<QRViewExample> {
//   String _scanBarcode = 'Unknown';
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   Future<void> startBarcodeScanStream() async {
//     FlutterBarcodeScanner.getBarcodeStreamReceiver(
//             '#ff6666', 'Cancel', true, ScanMode.BARCODE)!
//         .listen((barcode) => print(barcode));
//   }
//
//   Future<void> scanQR() async {
//     String barcodeScanRes;
//     // Platform messages may fail, so we use a try/catch PlatformException.
//     try {
//       barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
//           '#ff6666', 'Cancel', true, ScanMode.QR);
//     } on PlatformException {
//       barcodeScanRes = 'Failed to get platform version.';
//     }
//
//     // If the widget was removed from the tree while the asynchronous platform
//     // message was in flight, we want to discard the reply rather than calling
//     // setState to update our non-existent appearance.
//     if (!mounted) return;
//
//     setState(() {
//       _scanBarcode = barcodeScanRes;
//     });
//   }
//
//   // Platform messages are asynchronous, so we initialize in an async method.
//   Future<void> scanBarcodeNormal() async {
//     String barcodeScanRes;
//     // Platform messages may fail, so we use a try/catch PlatformException.
//     try {
//       barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
//           '#ff6666', 'Cancel', true, ScanMode.BARCODE);
//       print('=====================$barcodeScanRes');
//       if (barcodeScanRes.toString().isNotEmpty) {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) =>
//                     SelectedProduct(barcodeScanRes.toString())));
//       } else {}
//
//       setState(() {
//         _scanBarcode = barcodeScanRes;
//       });
//     } on PlatformException {
//       barcodeScanRes = 'Failed to get platform version.';
//     } catch (e) {
//       print('==================$e');
//     }
//     // If the widget was removed from the tree while the asynchronous platform
//     // message was in flight, we want to discard the reply rather than calling
//     // setState to update our non-existent appearance.
//     if (!mounted) return;
//
//     // setState(() {
//     //   _scanBarcode = barcodeScanRes;
//     // });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(title: const Text('Barcode scan')),
//             body: Builder(builder: (BuildContext context) {
//               return Container(
//                   alignment: Alignment.center,
//                   child: Flex(
//                       direction: Axis.vertical,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         ElevatedButton(
//                             onPressed: () => scanBarcodeNormal(),
//                             child: Text('Start barcode scan')),
//                         ElevatedButton(
//                             onPressed: () => scanQR(),
//                             child: Text('Start QR scan')),
//                         ElevatedButton(
//                             onPressed: () => startBarcodeScanStream(),
//                             child: Text('Start barcode scan stream')),
//                         Text('Scan result : $_scanBarcode\n',
//                             style: TextStyle(fontSize: 20))
//                       ]));
//             })));
//   }
// }


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:healthy/SelectProduct.dart';

class QRViewExample extends StatefulWidget {
  @override
  _QRState createState() => _QRState();
}

class _QRState extends State<QRViewExample> {
  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      print('=====================$barcodeScanRes');
      if (barcodeScanRes.toString().isNotEmpty) {
        showDialog(
            context: context,
            builder:
                (BuildContext context) {
              return AlertDialog(
                content: Container(
                  height: 250,
                  child: Column(
                    children: [
                      Center(
                        child: Image.asset("assets/ic_logo.png")
                        ),
                      Center(
                        child: Text('Loading item...'),
                      )
                    ],
                  ),
                ),

              );
            });
        Timer(Duration(seconds: 3),(){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      SelectedProduct(barcodeScanRes.toString())));
        });

      } else {}
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    } catch (e) {
      print('==================$e');
    }

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