import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy/profile3.dart';
import 'package:http/http.dart' as http;



class changepassword extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<changepassword> {


  Future<bool>updatePass()async{

    try{
      User? user = FirebaseAuth.instance.currentUser;
var pass ='zain1234567';
var id= await user!.getIdToken();
user.reload();
      var url = Uri.parse('https://identitytoolkit.googleapis.com/v1/accounts:update?key=AIzaSyDZO71lOat12Id_lb4zuX_gqNcApLphHVQ');
      var response = await http.post(url, body: {'idToken':id,'password':pass,'returnSecureToken':'true'});
      print(response.statusCode);
      print(response.body);

      return true;

    }
    catch(e){
      print(e);
      return false;
    }





  }





  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.7,
            backgroundColor: const Color(0xFFF7F7F7),
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.black,
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Change Password",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                )
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Current Password',
                        labelText: 'Current Password',
                        contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                        border: InputBorder.none,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'New Password',
                        labelText: 'New Password',
                        contentPadding: EdgeInsets.only(left: 15.0, top: 15),
                        border: InputBorder.none,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        updatePass().then((value) => {
                          if(value){
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => profile3()))
                          }
                          else{
                            print('erorrrrrrrrrrrrrrrrrrrrrrrrrrrr')
                          }

                        });

                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 70, bottom: 20),
                        height: 43,
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Center(
                            child: Text(
                          "Save Password",
                          style: TextStyle(
                              fontSize: 17.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )),
                        color: Colors.lightGreen,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
//     return Scaffold(
//       body: ListView(
//         children: [
//           Container(
//             height: 90,
//             width: MediaQuery.of(context).size.width,
//             color: const Color(0xFFF7F7F7),
//             child: Row(
//               children: [
//                 InkWell(
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   child: Container(
//                     margin: EdgeInsets.only(left: 10, top: 50),
//                     height: 20,
//                     width: 30,
//                     child: Icon(Icons.arrow_forward_ios),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(left: 90, top: 60),
//                   height: 30,
//                   width: 150,
// //                  color: Colors.red,
//                   child: Text(
//                     "Change Password",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Divider(
//             thickness: 1,
//           ),
//           Column(
//             children: [
//               TextFormField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   hintText: 'Current password',
//                   labelText: 'Current password',
//                   contentPadding: EdgeInsets.only(left: 21.0, top: 15),
//                   border: InputBorder.none,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 18, right: 16),
//                 child: Divider(
//                   thickness: 2,
//                 ),
//               ),
//               TextFormField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   hintText: 'New password',
//                   labelText: 'New password',
//                   contentPadding: EdgeInsets.only(left: 21.0, top: 15),
//                   border: InputBorder.none,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 18, right: 16),
//                 child: Divider(
//                   thickness: 2,
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 30, left: 13, right: 12),
//                 height: 43,
//                 width: MediaQuery.of(context).size.width / 1.1,
//                 child: Center(child: Text("Save password")),
//                 color: const Color(0xFF999999),
//               ),
//               // Container(
//               //     margin: EdgeInsets.only(top: 450, left: 20),
//               //     height: 5,
//               //     width: 160,
//               //     decoration: BoxDecoration(
//               //         color: Colors.black,
//               //         borderRadius: BorderRadius.all(Radius.circular(10)))),
//             ],
//           )
//         ],
//       ),
//     );
  }
}
