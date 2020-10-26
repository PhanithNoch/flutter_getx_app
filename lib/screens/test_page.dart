import 'package:flutter/material.dart';
import 'package:fluttergetxapp/screens/counter_screen.dart';
import 'package:fluttergetxapp/screens/second_page.dart';
import 'package:get/get.dart';

class TestingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              'Getx Components',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
                onPressed: () {
                  Get.snackbar("testing ", "login success",
                      snackPosition: SnackPosition.BOTTOM);
                },
                child: Text("SnackBar")),
            FlatButton(
                onPressed: () {
                  Get.defaultDialog(
                      title: "Getx Dialog", content: Text("Awesome Dialog"));
                },
                child: Text("Dialog")),
            FlatButton(
                onPressed: () {
                  Get.bottomSheet(Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                    height: 100,
                    child: Text("Hello World"),
                  ));
                },
                child: Text("bottom Sheet")),
            SizedBox(
              height: 10,
            ),
            Text(
              'GetX Navigation',
              style: TextStyle(fontSize: 22),
            ),
            FlatButton(
                onPressed: () {
//Get.off(SecondPage()); // can't back to previous page
//Get.to(page);
//Get.toNamed(page)

                Get.to(CounterPage());
                },
                child: Text("Counter Page")),
          ],
        ),
      ),
    );
  }
}
