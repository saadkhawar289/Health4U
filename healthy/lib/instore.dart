import 'package:flutter/material.dart';
import 'package:healthy/checkingitem.dart';

class store extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<store> {
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CheckItems()));
                        },
                        child: Container(
                          height: 50,
                          width: 50,

                          //color: Colors.cyan,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(70)),
                              color: const Color(0xFFC4C4C4),
                              image: DecorationImage(
                                  image: AssetImage("assets/35438.png"))),
                        ),
                      ),
                    )
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
