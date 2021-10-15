import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/CheckOut.dart';
import 'package:healthy/drawer.dart';

import 'Model/Product.dart';

class Cart extends StatefulWidget {
 final  List<Product>? lisOfProducts;
   Cart( this.lisOfProducts);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          drawer: CustomDrawer(vis: 1,),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: const Color(0xFFF7F7F7),
            elevation: 0,
            // leading: Icon(Icons.arrow_back),
            toolbarHeight: 0.14.sh,
            iconTheme: Theme.of(context).iconTheme,
            title: Container(
                height: 0.15.sh,
                width: 0.15.sw,
                child: Image.asset("assets/ic_logo.png")),
          ),
          backgroundColor: Colors.white,
          body: Container(
            child: Column(children: [
              Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('${widget.lisOfProducts!.length} items'
                      ,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )),
              Flexible(
                flex: 8,
                child: Container(
                  color: const Color(0xFFF7F7F7),
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) => Container(
                      child: CartTile(index+1,widget.lisOfProducts![index]),
                    ),
                    addAutomaticKeepAlives: false,
                    itemCount: widget.lisOfProducts!.length,
                    //cacheExtent: 100.0,
                  ),
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              // Container(
              //   height: 40,
              //   width: 40,
              //   // flex: 1,
              //     decoration: BoxDecoration(
              //         color: Colors.grey[200],
              //         borderRadius: BorderRadius.all(
              //             Radius.circular(25.r))),
              //   child: Image.asset('assets/addToCart.jpeg'),
              // ),
              SizedBox(
                height: 35.h,
              ),
              Flexible(
                  flex: 2,
                  child: Container(

                      // height: 0.80.sh,//MediaQuery.of(context).size.height*0.20,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0.036.sw),
                              child: Container(
                                child: Column(
                                  children: [
                                    Text('Total',
                                        style: TextStyle(
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w400)),
                                    Text('0.80',
                                        style: TextStyle(
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Checkout()));
                              },
                              child: Container(
                                color: Colors.lightGreen,
                                width: 0.50.sw,
                                height: 0.06.sh,
                                child: Center(
                                  child: Text('Checkout',
                                      style: TextStyle(
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )))
            ]),
          ),
        ),
      ),
    );
  }
}

class CartTile extends StatelessWidget {
  final int index;
 final Product product;
  const CartTile(this.index,this.product);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Text(index.toString(),
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          title: Text(product.name.toString(),
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(product.weight.toString(),
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.black)),
              SizedBox(
                height: 10,
              ),
              Text(product.price.toString(),
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              SizedBox(
                height: 10,
              ),
              // Text('remove',
              //     style: TextStyle(
              //         fontSize: 17,
              //         fontWeight: FontWeight.bold,
              //         color: Colors.black)),
              SizedBox(
                height: 10,
              )
            ],
          ),
          trailing: Image.network('https://thumbs.dreamstime.com/b/swiss-cheese-holes-18911609.jpg'),
        ),
        Divider(
          height: 5,
          thickness: 2,
        )
      ],
    );
  }
}
