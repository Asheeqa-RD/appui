import 'package:flutter/material.dart';
import 'package:uiapp/qrpage.dart';
import 'package:uiapp/textfield.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController name=TextEditingController();
  TextEditingController rollno=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              'Registration',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 100,),
           TextFeild(control: name,
               title: 'enter your name'),

            SizedBox(height: 30,),

            TextFeild(control: name,
                title: 'enter your name'),

            SizedBox(height: 30,),
            TextFeild(control: name,
                title: 'enter your name'),
            SizedBox(height: 30,),
            TextFeild(control: name,
                title: 'enter your name'),
            SizedBox(height: 30,),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder:(context) => const QrPage()));
              },
              child: Text(
                'Register',
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
