import 'package:flutter/material.dart';
import 'package:flutter_firebase_intergration/root_page.dart';
import 'package:flutter_firebase_intergration/ui/activities/Login.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Firebase Intergration',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new LoginPage(),
    );
  }
}