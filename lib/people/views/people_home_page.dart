import 'package:flutter/material.dart';
import 'package:fluttergetxapp/people/controllers/people_controller.dart';
import 'package:get/get.dart';

class PeopleHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CRUD PEOPLE'),
      ),
      body: GetBuilder<PeopleController>(
          init: PeopleController(),
          builder: (controller) {
            if (controller.status.value == Status.loading)
              return Center(
                child: CircularProgressIndicator(),
              );
            return ListView.builder(
                itemCount: controller.people.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
//                      title: Text(controller.people),
                    ),
                  );
                });
          }),
      floatingActionButton: FloatingActionButton(
        child: Text('Add'),
        onPressed: () {
          Get.toNamed('create_people');
        },
      ),
    );
  }
}
