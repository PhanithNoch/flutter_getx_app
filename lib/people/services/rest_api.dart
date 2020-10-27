import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fluttergetxapp/people/model/people.dart';

class RestAPI {
  String baseUrl = "https://peopleinfoapi.herokuapp.com/api/people";
 final _defaultHeaders = {
   "Content-Type": "application/json",
   "Accept": "application/json"
 };
  final _dio = Dio();
  RestAPI._internal();
  static RestAPI _instance = RestAPI._internal();
  static RestAPI get instance => _instance;
  Future<List<PeopleModel>> getPeople() async {
    final response = await _dio.get(baseUrl);
    return (response.data['data'] as List)
        .map((e) => PeopleModel.fromJson(e))
        .toList();
  }

  Future<String> addPeople(Data obj) async {
    print(obj.firstName);
    try {
      final response = await _dio.post(baseUrl,
          options: Options(headers: _defaultHeaders), data: obj.toJson());
      if (response.statusCode == 201) {
        print(response.statusCode);
     return response.statusCode.toString();
      } else {
        return response.statusCode.toString();
      }
    } catch (ex) {
     return ex.toString();
    }

  }
}
