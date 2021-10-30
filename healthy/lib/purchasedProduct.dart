import 'package:flutter/material.dart';

class purchasehistory2 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<purchasehistory2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 90,
            width: MediaQuery.of(context).size.width,
            //color: const Color(0xFFF7F7F7),
            decoration: BoxDecoration(
                color: const Color(0xFFF7F7F7),
                border: Border(
                    bottom: BorderSide(color: Colors.black12, width: 1))),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 10,
                      top: 50,
                    ),
                    height: 20,
                    width: 30,
                    child: Icon(Icons.arrow_back_ios_outlined),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 80, top: 50),
                  height: 100,
                  width: 150,
                  // color: Colors.red,
                  child: Column(
                    children: [
                      Text(
                        "Purchase History",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        "24/08/2021 .Morrsions",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 20,
                  width: 20,
                )
              ],
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              // color: const Color(0xFFF7F7F7),
                border: Border(
                    bottom: BorderSide(color: Colors.black12, width: 1))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 10),
                  child: Text(
                    "Recently",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 10),
                  child: Text(
                    "Total £5.29",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 90,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color(0xFFF7F7F7),
                  border: Border(
                      bottom: BorderSide(color: Colors.black12, width: 1))),
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        ListTile(
                          // leading: Text(index.toString(),
                          //     style: TextStyle(
                          //         fontSize: 17,
                          //         fontWeight: FontWeight.bold,
                          //         color: Colors.black)),
                          leading: Image.asset('assets/5879.png'),
                          title: Text('Chic Seeds',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('1kg',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),
                              SizedBox(
                                height: 10,
                              ),
                              Text('£0.80',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                          // trailing: Image.asset('assets/5879.png'),
                        ),
                        Divider(
                          height: 5,
                          thickness: 2,
                        )
                      ],
                    );
                  })),
          Container(
              height: 90,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color(0xFFF7F7F7),
                  border: Border(
                      bottom: BorderSide(color: Colors.black12, width: 1))),
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        ListTile(
                          // leading: Text(index.toString(),
                          //     style: TextStyle(
                          //         fontSize: 17,
                          //         fontWeight: FontWeight.bold,
                          //         color: Colors.black)),
                          leading: Image.asset('assets/5880.png'),
                          title: Text('Chuckle Eggs Medium Free',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Range 12 per pack',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),
                              SizedBox(
                                height: 10,
                              ),
                              Text('£1.99',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                          // trailing: Image.asset('assets/5879.png'),
                        ),
                        Divider(
                          height: 5,
                          thickness: 2,
                        )
                      ],
                    );
                  })),
          Container(
              height: 90,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color(0xFFF7F7F7),
                  border: Border(
                      bottom: BorderSide(color: Colors.black12, width: 1))),
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        ListTile(
                          // leading: Text(index.toString(),
                          //     style: TextStyle(
                          //         fontSize: 17,
                          //         fontWeight: FontWeight.bold,
                          //         color: Colors.black)),
                          leading: Image.asset('assets/5881.png'),
                          title: Text('Morrison Special Mix',
                              style: TextStyle(
                                fontSize: 17,
                              )),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('200g',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),
                              SizedBox(
                                height: 10,
                              ),
                              Text('£2.50',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                          // trailing: Image.asset('assets/5879.png'),
                        ),
                        Divider(
                          height: 5,
                          thickness: 2,
                        )
                      ],
                    );
                  })),

          // Container(
          //     margin: EdgeInsets.only(top: 20, left: 100, right: 100),
          //     height: 5,
          //     width: 160,
          //     decoration: BoxDecoration(
          //         color: Colors.black,
          //         borderRadius: BorderRadius.all(Radius.circular(10)))),
        ],
      ),
    );
  }
}