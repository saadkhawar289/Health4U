import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/Provider/cart_view_model.dart';
import 'package:provider/provider.dart';

import 'forntscreen.dart';

class PaymentVerifiaction extends StatefulWidget {
  const PaymentVerifiaction({Key? key}) : super(key: key);

  @override
  _PaymentVerifiactionState createState() => _PaymentVerifiactionState();
}

class _PaymentVerifiactionState extends State<PaymentVerifiaction> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: Icon(Icons.arrow_back_ios),
          ),
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset('assets/paymentverification.jpg'),
                ),
                SizedBox(
                  height: 0.06.sh,
                ),
                Center(
                  child: Text('Your Payment is successfully completed',
                      style: TextStyle(
                          fontSize: 17.sp, fontWeight: FontWeight.w400)),
                ),
                SizedBox(
                  height: 0.06.sh,
                ),
                InkWell(
                  onTap: () {
                    context.read<CartViewModel>().cartItems.clear();
                    context.read<CartViewModel>().totalBill=0;
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => forntscreen()));
                  },
                  child: Center(
                    child: Icon(
                      Icons.home,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
