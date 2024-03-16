import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:uiapp/qrpage.dart';
import 'package:uiapp/textfield.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController name = TextEditingController();
  TextEditingController rollno = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  String rname = '';
  String rnumber = '';
  String remail = '';
  String rpassword = '';
  void register() async {
    Uri uri = Uri.parse(' https://scnner-web.onrender.com/api/register');
    var response = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json;charset=UTF-8'
        },
        body: jsonEncode({
          "name": name.text,
          "email": email.text,
          "password": password.text,
          "rollno":rollno.text,
        }));
    print('success');
    rname = name.text;
    rnumber = rollno.text;
    remail = email.text;
    rpassword = password.text;
    print('$rname,$rnumber,$remail,$rpassword');
  }

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
            SizedBox(
              height: 100,
            ),
            TextFeild(control: name, title: 'enter your name'),
            SizedBox(
              height: 30,
            ),
            TextFeild(control: rollno, title: 'enter your rollno'),
            SizedBox(
              height: 30,
            ),
            TextFeild(control: email, title: 'enter your email'),
            SizedBox(
              height: 30,
            ),
            TextFeild(control: password, title: 'enter your password'),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                register();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const QrPage()));
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
