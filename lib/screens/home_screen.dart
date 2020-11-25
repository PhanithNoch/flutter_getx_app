import 'package:flutter/material.dart';
import 'package:fluttergetxapp/getx_components/getx_component.dart';
import 'package:fluttergetxapp/getx_navigations/navigation_page.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:keyboard_actions/keyboard_actions_config.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FocusNode _nodeText2 = FocusNode();

  KeyboardActionsConfig _buildConfig(BuildContext context) {
    return KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
      keyboardBarColor: Colors.grey[200],
      nextFocus: true,
      actions: [
        KeyboardActionsItem(
          focusNode: _nodeText2,
          onTapAction: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text("Custom Action"),
                    actions: <Widget>[
                      FlatButton(
                        child: Text("OK"),
                        onPressed: () => Navigator.of(context).pop(),
                      )
                    ],
                  );
                });
          },
        ),

      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('GETX Management'),
      ),
      body: KeyboardActions(
        config: _buildConfig(context),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
//                    Get.to(CounterPage());
                      Get.toNamed("counter_page");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      child: Text(
                        'Counter App',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(GetXComponent());
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink,
                      ),
                      child: Text(
                        'Components',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(NavigationPage(), arguments: ["phanith"]);
//                    Get.off(NavigationPage()); navigate next but can't back
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Text(
                        'Navigation',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
//                    Get.to(NavigationPage(),arguments: ["phanith"]);
//                    Get.off(NavigationPage()); navigate next but can't back
                      Get.toNamed('counter_gex_builder');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent,
                      ),
                      child: Text(
                        'GetX Builder',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: () {
//                    Get.to(NavigationPage(),arguments: ["phanith"]);
//                    Get.off(NavigationPage()); navigate next but can't back
                      Get.toNamed('obx_counter');


                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      child: Text(
                        'OBX',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: () {
//                    Get.to(NavigationPage(),arguments: ["phanith"]);
//                    Get.off(NavigationPage()); navigate next but can't back
                      Get.toNamed('people');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.teal,
                      ),
                      child: Text(
                        'API',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [


                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: () {
//                    Get.to(NavigationPage(),arguments: ["phanith"]);
//                    Get.off(NavigationPage()); navigate next but can't back
                      Get.toNamed('home_sample_page');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepPurpleAccent,
                      ),
                      child: Text(
                        'Example API',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: () {
//                    Get.to(NavigationPage(),arguments: ["phanith"]);
//                    Get.off(NavigationPage()); navigate next but can't back
                      Get.toNamed('example_api');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent,
                      ),
                      child: Text(
                        'CRUD API',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: () {
//                    Get.to(NavigationPage(),arguments: ["phanith"]);
//                    Get.off(NavigationPage()); navigate next but can't back
                      Get.toNamed('getx_structure_crud');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent,
                      ),
                      child: Text(
                        ' STRUCTURE API',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold,fontSize: 11),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
