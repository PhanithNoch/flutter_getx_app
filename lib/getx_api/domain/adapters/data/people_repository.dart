import 'package:dio/dio.dart';
import 'package:fluttergetxapp/getx_api/domain/adapters/entity/people_model.dart';

import '../respository_adapter.dart';

class DataRepository implements IPeopleRepository {
  DataRepository({this.dio});
  final Dio dio;

  @override
  Future<People> getPeople() async {
    try {
      final response = await dio.get("https://peopleinfoapi.herokuapp.com/api/person?page=1");
      return People.fromJson(response.data);
    } catch (e) {
      print(e.toString());
      return Future.error(e.toString());
    }
  }


}