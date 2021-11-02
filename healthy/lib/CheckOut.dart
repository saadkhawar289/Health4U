import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/Paymenterification.dart';
import 'package:healthy/Provider/cart_view_model.dart';
import 'package:provider/provider.dart';
import 'package:healthy/QrScanner.dart';
import 'package:healthy/drawer.dart';

import 'Model/Product.dart';

class Checkout extends StatefulWidget {

  const Checkout({Key? key}) ;

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int index = 0;


  Widget columnBody() {
    return Column(children: [
      Row(
        children: [
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios)),
          SizedBox(
            width: 0.28.sw,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Payment Method',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 10.0,
      ),
      Divider(
        thickness: 2,
        height: 3,
      ),
      Align(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.0.h, top: 20.0.h, bottom: 0),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                        width: 1,
                      )),
                      height: 23,
                      width: 23,
                      child: Image.asset('assets/apple.png'),
                    ),
                    //Icon(Icons.credit_card,size: 30.sp,),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text('Apple Pay')
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaymentVerifiaction()));
              },
              child: Padding(
                padding: EdgeInsets.only(left: 20.0.h, top: 20.0.h, bottom: 0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                        width: 1,
                      )),
                      height: 23,
                      width: 23,
                      child: Image.asset('assets/visa.png'),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      children: [
                        Text('Visa'),
                        Row(
                          children: [
                            Text('*'),
                            Text(' 1232'),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0.h, top: 20.0.h, bottom: 0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      width: 1,
                    )),
                    height: 23,
                    width: 23,
                    child: Image.asset('assets/Mastercard.png'),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    children: [
                      Text('MasterCard'),
                      Row(
                        children: [
                          Text('*'),
                          Text(' 1232'),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 0.10.sh,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        index = 1;
                      });
                      _showBottomSheet2(context);
                    },
                    icon: Icon(Icons.add_circle_outline)),
                SizedBox(
                  width: 10.w,
                ),
                Text('Add new card'),
                Spacer(),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ],
        ),
      )
    ]);
  }

  Widget columnBody2() {
    return Column(children: [
      Row(
        children: [
          Icon(Icons.clear),
          SizedBox(
            width: 0.28.sw,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Add a new card',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 10.0,
      ),
      Divider(
        thickness: 2,
        height: 3,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0.h, top: 20.0.h, bottom: 0),
            child: Row(
              children: [
                Icon(
                  Icons.credit_card,
                  size: 30,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  children: [
                    Text('Card Number'),
                    SizedBox(
                      height: 05.w,
                    ),
                    Row(
                      children: [
                        Text('3740 6620 5719 9999'),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0.h, top: 20.0.h, bottom: 0),
            child: Row(
              children: [
                Icon(
                  Icons.credit_card,
                  size: 30,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text('Expiry date'),
                        SizedBox(
                          width: 0.20.sw,
                        ),
                        Text('CVV'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 70.0.h, top: 0.0.h, bottom: 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('12/21'),
                    SizedBox(
                      width: 0.28.sw,
                    ),
                    Text('*'),
                  ],
                ),
                SizedBox(
                  height: 05.w,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 0.05.sh,
          ),
          Row(
            children: [
              Text('Save card'),
              Spacer(),
              Image.asset('assets/Switch.png')
            ],
          ),
          SizedBox(height: 0.06.sh),
          Center(
            child: Container(
              color: Colors.grey[350],
              width: 0.90.sw,
              height: 0.07.sh,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Add card',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                ),
              ),
            ),
          ),
        ],
      ),
    ]);
  }

  // Widget _buildAcceptSwitch() {
  //   return SwitchListTile(
  //     activeColor: Colors.green,
  //     value: true,
  //     onChanged: (bool value) {
  //       setState(() {});
  //     },
  //   );
  // }

  void _showBottomSheet2(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
              height: 0.60.sh,
              padding: EdgeInsets.all(20.0.h),
              child: columnBody2());
        });
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
              height: 0.60.sh,
              padding: EdgeInsets.all(20.0.h),
              child: columnBody());
        });
  }

  @override
  Widget build(BuildContext context) {
    var model=context.watch<CartViewModel>();
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          drawer: CustomDrawer(vis: 1,),
          appBar: AppBar(
            centerTitle: true,
            iconTheme: Theme.of(context).iconTheme,
            backgroundColor: const Color(0xFFF7F7F7),
            title: Column(
              children: [
                Center(
                    child: Text(
                  'Checkout',
                  style: TextStyle(color: Colors.black),
                )),
                Text('13/9/2021-Morrsions',
                    style: TextStyle(color: Colors.black))
              ],
            ),
            elevation: 0,
            toolbarHeight: MediaQuery.of(context).size.height * 0.15,
          ),
          backgroundColor: Colors.white,
          body: Container(
            child: Column(children: [
              Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Text(
                          '${context.read<CartViewModel>().cartItems.length} items',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text('Total  ',
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w400)),
                            Text('£${context.read<CartViewModel>().totalBill.toString()}',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    ),
                  )),
              Flexible(
                flex: 6,
                child: Container(
                  color: const Color(0xFFF7F7F7),
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) => Container(
                      child: CheckOutCartTile(index+1,model.cartItems[index]),
                    ),
                    addAutomaticKeepAlives: false,
                    itemCount:model.cartItems.length,
                    //cacheExtent: 100.0,
                  ),
                ),
              ),
              Flexible(
                  flex: 2,
                  child: Container(
                      // height: 0.80.sh,//MediaQuery.of(context).size.height*0.20,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                _showBottomSheet(context);
                              },
                              child: Container(
                                color: Colors.lightGreen,
                                width: 0.40.sw,
                                height: 0.06.sh,
                                child: Center(
                                  child: Text('Pay via app',
                                      style: TextStyle(
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => QrScanner()));
                              },
                              child: Container(
                                color: Colors.lightGreen,
                                width: 0.40.sw,
                                height: 0.06.sh,
                                child: Center(
                                  child: Text('Pay at till',
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

class CheckOutCartTile extends StatelessWidget {
  final int index;
  final Product product;
  const CheckOutCartTile(this.index,this.product);

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
              Text('£${product.price.toString()}',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              SizedBox(
                height: 10,
              ),
              Text(product.brand.toString(),
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              SizedBox(
                height: 10,
              )
            ],
          ),
          trailing: Image.network(product.image.toString()),
        ),
        Divider(
          height: 5,
          thickness: 2,
        )
      ],
    );
  }
}
