import 'package:flutter/material.dart';
import 'package:healthy/onlinesite.dart';

class storeshop extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<storeshop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 130,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: const Color(0xFFF7F7F7),
                border: Border(
                    bottom: BorderSide(color: Colors.black12, width: 1))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Shop",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Image.asset("assets/35438.png"))
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Where?")],
                )
              ],
            ),
          ),
          Column(
            children: [
              InkWell(
                // onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => QRViewExample()));
                // },
                child: Container(
                  margin: EdgeInsets.only(top: 40),
                  height: 75,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF7F7F7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 70,
                          width: 90,
                          //color: Colors.blue,
                          child: Image.asset("assets/Path 35500.png"),
                        ),
                        Container(
                          height: 50,
                          width: 70,
                          //  color: Colors.cyanAccent,
                          child: Center(
                              child: Text(
                            "In Store",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 50,
                          width: 70,
                          //    color: Colors.orange,
                          child: Icon(Icons.arrow_forward),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => onlinesite()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 75,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF7F7F7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 70,
                          width: 90,
                          //color: Colors.blue,
                          child: Image.asset("assets/Path 35501.png"),
                        ),
                        Container(
                          height: 50,
                          width: 70,
                          //  color: Colors.cyanAccent,
                          child: Center(
                              child: Text(
                            "Online",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          height: 50,
                          width: 70,
                          //    color: Colors.orange,
                          child: Icon(Icons.arrow_forward),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
