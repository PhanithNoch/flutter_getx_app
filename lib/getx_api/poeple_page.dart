import 'package:flutter/material.dart';
import 'package:fluttergetxapp/getx_api/people_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';


class PeoplePage extends GetView<PeopleController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List People'),
      ),
      body:  Center(
      child: Obx(() {
        Status status = controller.status.value;
        if (status == Status.loading) return CircularProgressIndicator();
        if (status == Status.error) return Text('Error on connection :(');

        return ListView.builder(
          itemCount: controller.people.value.data.length,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                title: Text(controller.people.value.data[index].lastName),
              ),
            );
          }
        );
      } ),

    )
    );
  }
}
