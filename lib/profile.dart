import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(backgroundImage: NetworkImage('https://www.cyberark.com/wp-content/uploads/2019/11/Developer.jpg'),radius:60,
            ),
            Text(
              'Alex Robert',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            Text(
              'flutter developer',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'ashdfh@gmail.com',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              decoration: const BoxDecoration(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '4567468275625',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              decoration: const BoxDecoration(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
