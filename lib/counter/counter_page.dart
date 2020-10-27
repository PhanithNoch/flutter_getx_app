import 'package:flutter/material.dart';
import 'package:fluttergetxapp/counter/counter_controller.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<CounterController>(
              init: CounterController(),
              builder: (val) => Text('${val.counter.value}'),
            ),
            FlatButton(
                onPressed: () {
                  Get.find<CounterController>().increment();
                },
                child: Text('Increment')),
          ],
        ),
      ),
    );
  }
}
