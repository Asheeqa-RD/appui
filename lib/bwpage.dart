import 'package:flutter/material.dart';
import 'package:uiapp/profile.dart';
import 'package:uiapp/textfield.dart';
class BwPage extends StatelessWidget {
  const BwPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             TextFeild( title: 'enter '),
             SizedBox(height: 30,),
             TextButton(
               onPressed: () {
                 Navigator.push(context,
                     MaterialPageRoute(builder:(context) => const Profile()));
               },
               child: Text(
                 'button',
                 style: TextStyle(
                   color: Colors.white,
                 ),
               ),
               style: ButtonStyle(
                 shape: MaterialStateProperty.all(RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(Radius.circular(10)),
                   side: BorderSide(
                     color: Colors.white,
                   ),
                 )),
               ),
             ),

           ],
        ),
      ),
    );
  }
}
