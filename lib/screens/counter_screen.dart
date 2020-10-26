import 'package:flutter/material.dart';
import 'package:fluttergetxapp/screens/getx_builder/controllers/counter_controller.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  CountController controller = Get.put(CountController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Counter Page"),
      ),
      body: Column(
        children: [
         GetBuilder<CountController>(
           builder: (controller){
             return Text("Count Value is ${controller.count}");
           }
         ),

          Center(
            child: FlatButton(onPressed: (){
              // we can get everywhere
              Get.find<CountController>().incrementCounter();
            }, child: Text('increase')),
          ),
        ],
      ),
    );
  }
}
