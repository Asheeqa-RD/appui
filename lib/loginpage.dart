import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:uiapp/qrpage.dart';
import 'package:uiapp/register.dart';
import 'package:uiapp/scanpage.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController rollno=TextEditingController();
  TextEditingController pass=TextEditingController();

  Future<void> login()async{
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/login');
    var response = await http.post(uri,
        headers: <String, String>{
        'Content-Type': 'application/json;charset=UTF-8'
        },

        body:jsonEncode({
      "rollno":rollno.text,
      "password":pass.text,
    }));
    var decoder=jsonDecode(response.body);
    if (response.statusCode==200){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const QrPage()));
  }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('new user?Register !')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: rollno,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                label: Text(
                  'enter your roll no ',
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: pass,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                label: Text(
                  'enter your password ',
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                login();
              },
              child: Text(
                'Login',
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
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dont have an account ?',
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                ),
                TextButton(onPressed: (){
                 Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Register()));
                },
                    child: Text('Register')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
