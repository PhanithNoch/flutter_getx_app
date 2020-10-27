import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Page'),
      ),
      body: Center(
        child: Text("my name's ${Get.arguments.toString()}"),
      ),
    );
  }
}
