import 'package:flutter/material.dart';
import 'package:fluttergetxapp/simple_api/api/controller/home_controller.dart';
import 'package:get/get.dart';


class HomeSamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller)
        {
          return Scaffold(
            appBar: AppBar(
              title: Text('List Users API'),
            ),

            body: GetBuilder<HomeController>(
              builder: (_){
                if(controller.status.value == Status.loading){
                  return Center(child: CircularProgressIndicator());
                }
             return  ListView.builder(
                    itemCount: controller.users.length,
                    itemBuilder: (context,index)
                    {
                      return ListTile(
                          title: Text(controller.users[index].lastName),
                      subtitle: Text(controller.users[index].email),
                      );
                    }
                );
              }
            ),


          );
        }

    );

  }
}
