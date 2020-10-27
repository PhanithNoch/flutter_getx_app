import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_builder_controller.dart';

class GetXBuilderCounterPage extends StatelessWidget {

//  CounterGexBuilder counterGexBuilder = Get.put(CounterGexBuilder());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Using GetxBuilder'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<CounterGexBuilder>(
            init: CounterGexBuilder(),
            builder: (controller){
          return  Center(child: Text('${controller.counter}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),));
            }
          ),

          FlatButton(onPressed: (){
           Get.find<CounterGexBuilder>().increment();
          }, child: Text('Increment')),
        ],
      ),
    );
  }
}
