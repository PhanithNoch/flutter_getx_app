import 'package:flutter/material.dart';
import 'package:fluttergetxapp/controller/rest_api/rest_api.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              final list = controller.data.value;
              if (list == null || list.isEmpty) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return RefreshIndicator(
                  onRefresh: () {
                    return Future.delayed(Duration(milliseconds: 800))
                        .then((value) {
                      return controller.getData();
                    });
                  },
                  child: Card(
                      child: ListView.builder(
                          itemCount: controller.data.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: ListTile(
                                title: Text(controller.data[index].first_name),
                              ),
                            );
                          })),
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}
