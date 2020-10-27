

import 'package:dio/dio.dart';
import 'package:fluttergetxapp/getx_api/domain/adapters/data/people_repository.dart';
import 'package:fluttergetxapp/getx_api/domain/adapters/respository_adapter.dart';
import 'package:fluttergetxapp/getx_api/people_controller.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get.dart';
class PeopleDi extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Dio());// instantialted only when is use
    Get.lazyPut<IPeopleRepository>(() => DataRepository(dio: Get.find()));
    Get.lazyPut(() => PeopleController(iPeopleRepository: Get.find()));
  }
}