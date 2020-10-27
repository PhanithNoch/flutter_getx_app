import 'package:flutter/material.dart';
import 'package:fluttergetxapp/getx_api/di/people_id.dart';
import 'package:fluttergetxapp/getx_api/poeple_page.dart';
import 'package:fluttergetxapp/getx_builder/getx_builder_page.dart';
import 'package:fluttergetxapp/getx_components/getx_component.dart';
import 'package:fluttergetxapp/getx_navigations/navigation_page.dart';
import 'package:fluttergetxapp/obx/counter_obx_page.dart';
import 'package:fluttergetxapp/people/views/people_create_page.dart';
import 'package:fluttergetxapp/people/views/people_home_page.dart';
import 'package:fluttergetxapp/screens/home_screen.dart';
import 'package:fluttergetxapp/simple_api/api/views/home_page.dart';
import 'package:get/get.dart';

import 'counter/counter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:HomeScreen(),
      getPages: [
        GetPage(name: '/',page:()=> HomeScreen()),
        GetPage(name: '/get_component',page:()=> GetXComponent()),
        GetPage(name: '/counter_page',page:()=> CounterPage()),
        GetPage(name: '/navigation',page:()=> NavigationPage()),
        GetPage(name: '/counter_gex_builder',page:()=> GetXBuilderCounterPage()),
        GetPage(name: '/obx_counter',page:()=> CounterOBXPage()),
        GetPage(name: '/people',page:()=> PeoplePage(),binding: PeopleDi()),
        GetPage(name: '/example_api',page:()=> PeopleHomePage()),
        GetPage(name: '/home_sample_page',page:()=> HomeSamplePage()),
        GetPage(name: '/create_people',page:()=> PeopleCreatePage()),
      ],
    );

  }
}
