import 'package:flutter/material.dart';
import 'package:fluttergetxapp/people/controllers/people_controller.dart';
import 'package:fluttergetxapp/people/model/people.dart';

import 'package:get/get.dart';

class PeopleCreatePage extends StatelessWidget {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController activeDateController = TextEditingController();
  PeopleController controller = Get.put(PeopleController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create People'),
      ),
      body: SafeArea(
        child: GetBuilder<PeopleController>(builder: (controller) {
          return Container(
            height: 500,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: firstNameController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'First Name',
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: TextFormField(
                    controller: lastNameController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Last Name',
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: TextFormField(
                    controller: ageController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Age',
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: TextFormField(
                    controller: activeDateController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Active Date',
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    FlatButton(
                        onPressed: () {
                          firstNameController.clear();
                          var data = Data(
                            firstName: firstNameController.text,
                            lastName: lastNameController.text,
                            age: ageController.text,
                            activeDate: activeDateController.text,
                          );

                          controller.addPeople(data);
                          if (controller.status.value == Status.createSuccess) {
                            return Get.snackbar("Message Dialog",
                                "People Create Successfully !",snackPosition:SnackPosition.BOTTOM);
                          }

                        },
                        child: Text('Save'))
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
