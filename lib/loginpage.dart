import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              onPressed: () {},
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
            Text(
              'Dont have an account ?Register ',
              style: TextStyle(
                color: Colors.white54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
