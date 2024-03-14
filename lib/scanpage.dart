import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:uiapp/profile.dart';
class ScanPage extends StatelessWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              child: MobileScanner(
                       allowDuplicates:false,
                       onDetect: (barcode,args) {
              Navigator.push(context,
                  MaterialPageRoute(builder:(context) => const Profile ()));
                  },
                ),
            ),
            SizedBox(height: 40,),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder:(context) => const Profile()));
              },
              child: Text(
                'go',
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
