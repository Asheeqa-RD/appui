import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:uiapp/profile.dart';
class QrPage extends StatelessWidget {
  const QrPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_circle_sharp,
              size: 100,
            ),
            SizedBox(height: 30,),
            Container(
              height: 200,
              width: 200,
              color: Colors.white,
              child:QrImageView(
                data: '1234567890',
                version: QrVersions.auto,
                size: 200.0,
              ),
            ),
            SizedBox(height: 30,),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder:(context) => const Profile()));
              },
              child: Text(
                'Scan',
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
