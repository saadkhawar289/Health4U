import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/drawer.dart';

import 'PatientEMRDoc.dart';

class UsersList extends StatefulWidget {
  const UsersList({Key? key}) : super(key: key);

  @override
  _UsersListState createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          drawer: CustomDrawer(vis: 2,),
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
              Flexible(
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) => Container(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PatientEMRDoc()));
                        },
                        child: UserTile(index)),
                  ),
                  addAutomaticKeepAlives: false,
                  itemCount: 8,
                  //cacheExtent: 100.0,
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class UserTile extends StatelessWidget {
  final int index;
  const UserTile(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.screen),
                    image: AssetImage('assets/man.png'))),
            height: 100.h,
            width: 60.w,
          ),
          title: Text('Aman Muhammad',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Post Code ',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                  SizedBox(
                    width: 15,
                  ),
                  Text('2345',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.red)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text('03131533387',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: Colors.black)),
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
              InkWell(radius: 30, onTap: () {}, child: Icon(Icons.delete)),
              SizedBox(
                height: 5,
              ),
              InkWell(radius: 30, onTap: () {}, child: Icon(Icons.edit)),
            ],
          ),
        ),
        Divider(
          height: 5,
          thickness: 2,
        )
      ],
    );
  }
}
