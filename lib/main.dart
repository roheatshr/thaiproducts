import 'package:flutter/material.dart';
import 'package:thaiproducts_app/userpages/bottomNav.dart';
import 'package:thaiproducts_app/userpages/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
