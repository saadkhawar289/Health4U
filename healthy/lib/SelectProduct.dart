// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:healthy/Cart.dart';
// // import 'package:healtyapp/Cart/cart.dart';
// // import 'package:healtyapp/widget/cartTile.dart';
//
// class SelectedProduct extends StatefulWidget {
//   const SelectedProduct({Key? key}) : super(key: key);
//
//   @override
//   _SelectedProductState createState() => _SelectedProductState();
// }
//
// class _SelectedProductState extends State<SelectedProduct> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: SafeArea(
//         child: Scaffold(
//           backgroundColor: Colors.white,
//           appBar: AppBar(
//             elevation: 0,
//             backgroundColor: Colors.white,
//             leading: Icon(Icons.arrow_back_ios),
//             iconTheme: Theme.of(context).iconTheme,
//           ),
//           body: Padding(
//             padding: EdgeInsets.all(10.0.h),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Center(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                           height: 0.12.sh,
//                           width: 0.20.sw,
//                           decoration: BoxDecoration(
//                               color: Colors.grey[200],
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           child: Center(
//                               child: Container(
//                                   height:
//                                       MediaQuery.of(context).size.height * 0.06,
//                                   width: 0.10.sw,
//                                   decoration: BoxDecoration(
//                                       color: Colors.red[200],
//                                       borderRadius: BorderRadius.all(
//                                           Radius.circular(25.r)))))),
//                       SizedBox(
//                         width: 0.04.sw,
//                       ),
//                       Container(
//                           height: 0.12.sh,
//                           width: 0.20.sw,
//                           decoration: BoxDecoration(
//                               color: Colors.grey[200],
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           child: Center(
//                               child: Container(
//                                   height:
//                                       MediaQuery.of(context).size.height * 0.06,
//                                   width: 0.10.sw,
//                                   decoration: BoxDecoration(
//                                       color: Colors.yellow[100],
//                                       borderRadius: BorderRadius.all(
//                                           Radius.circular(25.r)))))),
//                       SizedBox(
//                         width: 0.04.sw,
//                       ),
//                       Container(
//                           height: 0.12.sh,
//                           width: 0.20.sw,
//                           decoration: BoxDecoration(
//                               color: Colors.grey[400],
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(15))),
//                           child: Center(
//                             child: Icon(
//                               Icons.verified,
//                               size: 35.sp,
//                               color: Colors.green,
//                             ),
//                           )),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 0.06.sh,
//                 ),
//                 Center(
//                     child: Text(
//                   'Great! This is ideal for you',
//                   style: TextStyle(
//                       fontSize: 20.sp,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w400),
//                 )),
//                 SizedBox(
//                   height: 0.06.sh,
//                 ),
//                 Container(
//                   color: Colors.grey[300],
//                   child: CheckOutCartTile(1),
//                 ),
//                 SizedBox(
//                   height: 0.06.sh,
//                 ),
//                 Text('Benefits',
//                     style: TextStyle(
//                         fontSize: 25.sp,
//                         color: Colors.black,
//                         fontWeight: FontWeight.w400)),
//                 SizedBox(
//                   height: 0.04.sh,
//                 ),
//                 Row(
//                   children: [
//                     Expanded(
//                       flex: 5,
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.verified,
//                             size: 35.sp,
//                             color: Colors.green,
//                           ),
//                           SizedBox(
//                             width: 0.02.sw,
//                           ),
//                           Text(
//                             'Low in sugar',
//                             style: TextStyle(fontSize: 20.sp),
//                           )
//                         ],
//                       ),
//                     ),
//                     //SizedBox(width: 0.10.sw,),
//
//                     Expanded(
//                       flex: 5,
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.verified,
//                             size: 35.sp,
//                             color: Colors.green,
//                           ),
//                           SizedBox(
//                             width: 0.01.sw,
//                           ),
//                           Text(
//                             'High in Fiber',
//                             style: TextStyle(fontSize: 20.sp),
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 Center(
//                   child: InkWell(
//                     onTap: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => Cart()));
//                     },
//                     child: Container(
//                       color: Colors.grey[350],
//                       width: 0.90.sw,
//                       height: 0.08.sh,
//                       child: Center(
//                         child: Text('Add to basket',
//                             style: TextStyle(
//                                 fontSize: 20.sp, fontWeight: FontWeight.w500)),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/Cart.dart';
import 'package:healthy/Model/Product.dart';
import 'package:healthy/Provider/cart_view_model.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CheckOutCartTile extends StatelessWidget {
  final double index;
  final Map<String, dynamic> productValues;

  const CheckOutCartTile(this.index, this.productValues);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            height: 100,
            width: 100,
            child: Image.network(productValues['image'],fit: BoxFit.fill
                ),
          ),
          title: Text(productValues['name']??'fff',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(productValues['weight']??'oooo',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Colors.black)),
              Text(productValues['brand']??' ',
                  style: TextStyle(
                      fontSize: 17,

                      fontWeight: FontWeight.w400,
                      color: Colors.black)),
              SizedBox(
                height: 10,
              ),
              Text('£ ${productValues['price']??'888'}',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ],
          ),
        ),
      ],
    );
  }
}

class SelectedProduct extends StatefulWidget {
  final String productID;

  SelectedProduct(this.productID) : super();

  @override
  _SelectedProductState createState() => _SelectedProductState();
}

class _SelectedProductState extends State<SelectedProduct> {
  double? foodScore;
  double? hba1cScore;
  double? foodScoreResult;
  bool isScan = true;

  //var viewModel= CartViewModel();

  @override
  void initState() {
    print('++++++++++++++++${widget.productID}');
    loadProduct(widget.productID);
    super.initState();
  }

  DecorationImage _buildServiceBoxImage(String image) {
    return DecorationImage(fit: BoxFit.fill, image: AssetImage(image));
  }

  bool loader = true;
  Map<String, dynamic> productValues = {
    'name': null,
    'weight': null,
    'price': null,
    'image': null,
      'descp':null
  };

  Future<bool> loadProduct(String id) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    int? testValue = sharedPreferences.getInt('HbA1c');
    String val = testValue.toString();
    double? h1Abc = double.tryParse(val);

    double sugar;
    try {
      await FirebaseFirestore.instance
          .collection("Product")
          .doc(id)
          .get()
          .then((data) => {
                if (data.exists)
                  {
                    productValues['name'] = data['name'],
                    productValues['weight'] = data['weight'],
                    productValues['price'] = data['price'],
                    productValues['image'] = data['image'],
                    productValues['descp']=data['descp'],
                    sugar = double.tryParse(data['sugar'])!,
                    foodScore = (h1Abc! * sugar),
                    print('fffffffffffffffffff$foodScore'),
                    print('#############$sugar'),
                    print('#############$h1Abc'),
                    foodScoreResult = ((foodScore!) / 6),
                    print('oooooooooooooo$foodScoreResult')
                  }
                else
                  {
                    setState(() {
                      isScan = false;
                    })
                  }
              });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        setState(() {
          loader = false;
        });
        return false;
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        setState(() {
          loader = false;
        });
        return false;
      } else {
        // setState(() {
        //   loader = false;
        //
        // });
        // return false;
      }
    } catch (e) {
      print(e);
    }
    setState(() {
      loader = false;
    });
    return true;
  }

  @override
  Widget build(BuildContext context) {
    var model = context.read<
        CartViewModel>(); //Provider.of<CartViewModel>(context, listen: false);

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          // appBar: AppBar(
          //   elevation: 0,
          //   backgroundColor: Colors.white,
          //   leading: InkWell(
          //       onTap: () {
          //         // Navigator.pop(context);
          //         Navigator.pop(context);
          //       },
          //       child: Icon(Icons.arrow_back_ios)),
          //   iconTheme: Theme.of(context).iconTheme,
          // ),
          body: loader == true
              ? Center(
                  child: CircularProgressIndicator(
                  color: Colors.green,
                ))
              : isScan
                  ? Padding(
                      padding: EdgeInsets.all(0.0.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Center(
                              child: Container(
                                height: 0.35.sh,
                                decoration: BoxDecoration(
                                    image: foodScoreResult! <= 20
                                        ? _buildServiceBoxImage(
                                            'assets/pic3.jpg')
                                        : foodScoreResult! >= 30
                                            ? _buildServiceBoxImage(
                                                'assets/pic1.jpg')
                                            : _buildServiceBoxImage(
                                                'assets/pic2.jpg')),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            height: 0.08.sh,
                                            width: 0.12.sw,
                                            margin:
                                                EdgeInsets.only(top: 0.17.sh),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(0))),
                                            child: Center(
                                                child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.05,
                                                    width: 0.07.sw,
                                                    decoration: BoxDecoration(
                                                        color: Colors.red[200],
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    25.r)))))),
                                        SizedBox(
                                          width: 0.04.sw,
                                        ),
                                        Container(
                                            height: 0.08.sh,
                                            width: 0.12.sw,
                                            margin:
                                                EdgeInsets.only(top: 0.17.sh),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(0))),
                                            child: Center(
                                                child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.05,
                                                    width: 0.07.sw,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Colors.yellow[100],
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    25.r)))))),
                                        SizedBox(
                                          width: 0.04.sw,
                                        ),
                                        Container(
                                            height: 0.08.sh,
                                            width: 0.12.sw,
                                            margin:
                                                EdgeInsets.only(top: 0.17.sh),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(0))),
                                            child: Center(
                                              child: Icon(
                                                Icons.check_circle,
                                                size: 35.sp,
                                                color: Colors.green,
                                              ),
                                            )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 0.04.sw,
                                    ),
                                    Center(
                                        child: foodScoreResult! <= 20
                                            ? Text(
                                                'Great! This is ideal for you',
                                                style: TextStyle(
                                                    fontSize: 20.sp,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            : foodScoreResult! >= 30
                                                ? Text(
                                                    'This item is not ideal for you',
                                                    style: TextStyle(
                                                        fontSize: 20.sp,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                : Text(
                                                    'This item is not ideal for you',
                                                    style: TextStyle(
                                                        fontSize: 20.sp,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                                left: 10.w,
                                top: 30.h,
                                child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.close,
                                      size: 30.sp,
                                    )))
                          ]),
                          SizedBox(
                            height: 0.06.sh,
                          ),
                          Container(
                            color: Colors.white,
                            child: CheckOutCartTile(1, productValues),
                          ),
                          SizedBox(
                            height: 0.02.sh,
                          ),
                          Row(
                            children: [
                              Container(
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.0.w),
                                      child: foodScoreResult! <= 20
                                          ? Icon(Icons.check_circle,
                                              size: 25.sp,
                                              color: foodScoreResult! <= 20
                                                  ? Colors.lightGreen
                                                  : foodScoreResult! >= 30
                                                      ? Colors.red
                                                      : Colors.amber)
                                          : foodScoreResult! >= 30
                                              ? Icon(Icons.cancel,
                                                  size: 25.sp,
                                                  color: foodScoreResult! <= 20
                                                      ? Colors.lightGreen
                                                      : foodScoreResult! >= 30
                                                          ? Colors.red
                                                          : Colors.amber)
                                              : Icon(Icons.cancel,
                                                  size: 25.sp,
                                                  color: foodScoreResult! <= 20
                                                      ? Colors.lightGreen
                                                      : foodScoreResult! >= 30
                                                          ? Colors.red
                                                          : Colors.amber),
                                    ),
                                    SizedBox(
                                      width: 0.02.sw,
                                    ),
                                    foodScoreResult! <= 20
                                        ? Text(
                                            'Low in Sugar',
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.black,
                                            ),
                                          )
                                        : foodScoreResult! >= 30
                                            ? Text(
                                                'High in Sugar',
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.black,
                                                ),
                                              )
                                            : Text(
                                                'High in Sugar',
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.black,
                                                ),
                                              ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 0.05.sh,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.0.w),
                                child: Container(
                                  child: Row(
                                    children: [
                                      foodScoreResult! <= 20
                                          ? Icon(Icons.check_circle,
                                              size: 25.sp,
                                              color: foodScoreResult! <= 20
                                                  ? Colors.lightGreen
                                                  : foodScoreResult! >= 30
                                                      ? Colors.red
                                                      : Colors.amber)
                                          : foodScoreResult! >= 30
                                              ? Icon(Icons.cancel,
                                                  size: 25.sp,
                                                  color: foodScoreResult! <= 20
                                                      ? Colors.lightGreen
                                                      : foodScoreResult! >= 30
                                                          ? Colors.red
                                                          : Colors.amber)
                                              : Icon(Icons.cancel,
                                                  size: 25.sp,
                                                  color: foodScoreResult! <= 20
                                                      ? Colors.lightGreen
                                                      : foodScoreResult! >= 30
                                                          ? Colors.red
                                                          : Colors.amber),
                                      SizedBox(
                                        width: 0.01.sw,
                                      ),
                                      foodScoreResult! <= 20
                                          ? Text(
                                              'High in Fiber',
                                              style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Colors.black,
                                              ),
                                            )
                                          : foodScoreResult! >= 30
                                              ? Text(
                                                  'High in Salt',
                                                  style: TextStyle(
                                                    fontSize: 16.sp,
                                                    color: Colors.black,
                                                  ),
                                                )
                                              : Text(
                                                  'High in Salt',
                                                  style: TextStyle(
                                                    fontSize: 16.sp,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0.w, top: 8.h),
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                  "${productValues['descp']}",//??'Simply dummy text of the prdoubleing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,')),
                              )),
                          ),
                          Spacer(),
                          Center(
                            child: InkWell(
                              onTap: () {
                                Product prod = Product(
                                  image:  productValues['image'],
                                    name: productValues['name'],
                                    id: '1234',
                                    price: 231,
                                    // productValues['price'],
                                    weight: productValues['weight'],
                                    descp: ' hhhj jjj jj',
                                    brand: productValues['brand']
                                );
                                context.read<CartViewModel>().addToCart(prod);
                                // viewModel.addToCart(prod);
                                // model.addToCart(prod);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Cart(context
                                            .read<CartViewModel>()
                                            .addedCartItems)));
                              },
                              child: Container(
                                height: 93,
                                width: MediaQuery.of(context).size.width,
                                child: Center(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        top: 10.h,
                                        bottom: 0,
                                        left: 20.w,
                                        right: 20.w),
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                    child: Center(
                                        child: Text(
                                      "Add to basket",
                                      style: TextStyle(
                                          fontSize: 17.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    )),
                                    color: Colors.lightGreen,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  : Center(
                      child: Text('Sorry product not found scan again'),
                    ),
        ),
      ),
    );
  }
}
