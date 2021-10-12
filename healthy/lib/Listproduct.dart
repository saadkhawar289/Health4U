import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/AddProduct.dart';
import 'package:healthy/Model/Product.dart';
import 'package:healthy/drawer.dart';

class OurProductList extends StatefulWidget {
  const OurProductList({Key? key}) : super(key: key);

  @override
  _OurProductListState createState() => _OurProductListState();
}

class _OurProductListState extends State<OurProductList> {
    ProductHelper helper =ProductHelper();
  @override
  initState() {



    super.initState();
  }





  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          drawer: CustomDrawer(vis: 3,),
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
          body:Container(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('Product')
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    padding: EdgeInsets.all(10.0),
                    itemBuilder: (context, index) =>
                        UserTile(index: index,snapshot: snapshot.data?.docs[index], ),
                    itemCount: snapshot.data?.docs.length,
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(
                      // valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
                    ),
                  );
                }
              },
            ),
          ),
          // helper.loader==true?Center(child: CircularProgressIndicator.adaptive()): Container(
          //   child: Column(children: [
          //     Flexible(
          //       child: ListView.builder(
          //         itemBuilder: (BuildContext context, int index) => Container(
          //           child: UserTile(index: index,product: helper.productsList[index],),
          //         ),
          //         addAutomaticKeepAlives: false,
          //         itemCount: helper.productsList.length,
          //         //cacheExtent: 100.0,
          //       ),
          //     ),
          //   ]),
          ),
        ),
      );

  }
}

class UserTile extends StatelessWidget {
  final int? index;
  final QueryDocumentSnapshot? snapshot;
   UserTile({@required this.index,@required this.snapshot});

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;

    if(snapshot!.get('uID')==user!.uid){
      return Column(
      children: [
        ListTile(
          leading: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.screen),
                    image: AssetImage('assets/ic_logo.png'))),
            height: 100.h,
            width: 60.w,
          ),
          title: Text(snapshot!.get('name') .toString(),
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Price',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                  SizedBox(
                    width: 15,
                  ),
                  // Text(product!.price.toString(),
                  //     style: TextStyle(
                  //         fontSize: 17,
                  //         fontWeight: FontWeight.w400,
                  //         color: Colors.red)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              // Text(product!.descp.toString(),
              //     style: TextStyle(
              //         fontSize: 17,
              //         fontWeight: FontWeight.normal,
              //         color: Colors.black)),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              )
            ],
           ),
          trailing: Column(
            children: [
              InkWell(radius: 30, onTap: () {
                FirebaseFirestore.instance
                    .collection('Product').doc(snapshot!.reference.id).delete();
              }, child: Icon(Icons.delete)),
              SizedBox(
                height: 5,
              ),
              InkWell(radius: 30, onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddProduct(editAble: snapshot!.reference.id,)));
              }, child: Icon(Icons.edit)),
            ],
          ),
        ),
        Divider(
          height: 5,
          thickness: 2,
        )
      ],
    );}
    else{
      return SizedBox.shrink();
    }
  }
}
