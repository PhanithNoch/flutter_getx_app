import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_obx_controller.dart';

// when use OBX we need to make our variable as [obs]
class CounterOBXPage extends StatelessWidget {
  CounterOBXController controller = Get.put(CounterOBXController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Using OBX'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Center(
                  child: Column(
                children: [
                  Text(
                    Get.find<CounterOBXController>().counter.value.toString(),
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  FlatButton(
                      onPressed: () {
                        Get.find<CounterOBXController>().increment();
                      },
                      child: Text('Increment')),
                ],
              ))),
          Obx(() => Center(
                  child: Column(
                children: [
                  Text(
                    Get.find<CounterOBXController>().counter2.value.toString(),
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  FlatButton(
                      onPressed: () {
                        Get.find<CounterOBXController>().increment2();
                      },
                      child: Text('Increment')),
                ],
              ))),
        ],
      ),
    );
  }
}
