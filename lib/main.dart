import 'package:flutter/material.dart';
import 'package:fluttergetxapp/screens/home_screen.dart';
import 'package:fluttergetxapp/screens/test_page.dart';
import 'package:fluttergetxapp/views/shopping_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:TestingPage()
    );
  }
}
