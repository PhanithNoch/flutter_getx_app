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
  Future<List<Data>> getPeople() async {
    final response = await _dio.get(baseUrl);
    return (response.data['data'] as List)
        .map((e) => Data.fromJson(e))
        .toList();
  }

  Future<String> addPeople(Data person) async {
    try {
      final response = await _dio.post(baseUrl,
          options: Options(headers: _defaultHeaders), data: person.toJson());
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

  Future<String> deletePeople(int userId) async {
    try {
      final response = await _dio.delete("${baseUrl}/$userId ");
      if (response.statusCode == 200) {
        return response.statusCode.toString();
      }
    } catch (ex) {
      print(ex);
    }
  }
}
