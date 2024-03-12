import 'package:flutter/material.dart';

import 'loginpage.dart';

void main() {
  runApp(const QrApp());
}
class QrApp extends StatelessWidget {
  const QrApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

