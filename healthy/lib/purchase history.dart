import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/Provider/cart_view_model.dart';
import 'package:healthy/purchasedProduct.dart';
import 'package:provider/provider.dart';

class purchasehistory extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<purchasehistory> {
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
                  margin: EdgeInsets.only(left: 80, top: 60),
                  height: 30,
                  width: 150,
                  //  color: Colors.red,
                  child: Text(
                    "Purchase History",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 10),
                  child: Text(
                    "Recently",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
              height: 0.30.sh,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color(0xFFF7F7F7),
                  border: Border(
                      bottom: BorderSide(color: Colors.black12, width: 1))),
              child: ListView.builder(
                  itemCount:
                      context.read<CartViewModel>().addedCartItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        ListTile(
                          // leading: Text(index.toString(),
                          //     style: TextStyle(
                          //         fontSize: 17,
                          //         fontWeight: FontWeight.bold,
                          //         color: Colors.black)),
                          leading: Image.network(
                              'https://thumbs.dreamstime.com/b/swiss-cheese-holes-18911609.jpg'),
                          title: Column(
                            children: [
                              Text(
                                  context
                                      .read<CartViewModel>()
                                      .addedCartItems[index]
                                      .name
                                      .toString(),
                                  style: TextStyle(
                                    fontSize: 17,
                                  )),
                              Text('24/08/2021',
                                  style: TextStyle(
                                    fontSize: 17,
                                  )),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('&0.80',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          purchasehistory2()));
                                },
                                child: Text('View Detail',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                              ),
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
            height: 40,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                // color:const Color(0xFFF7F7F7),
                border: Border(
                    bottom: BorderSide(color: Colors.black12, width: 1))),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 10),
                  child: Text(
                    "Past",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 0.30.sh,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color(0xFFF7F7F7),
                  border: Border(
                      bottom: BorderSide(color: Colors.black12, width: 1))),
              child: ListView.builder(
                  itemCount: 3,
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
                          title: Column(
                            children: [
                              Text('24/08/2021',
                                  style: TextStyle(
                                    fontSize: 17,
                                  )),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('&0.80',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black)),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          purchasehistory2()));
                                },
                                child: Text('View Detail',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                              ),
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
