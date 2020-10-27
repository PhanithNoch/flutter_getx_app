import 'package:dio/dio.dart';
import 'package:fluttergetxapp/simple_api/api/model/user.dart';

class UserAPI {
  UserAPI._internal();
  static UserAPI _instance = UserAPI._internal();
  static UserAPI get instance => _instance;
  final dio = Dio();

  Future<List<User>> getUsers() async {
    try {
      final response = await this.dio.get('https://reqres.in/api/users');
      return (response.data['data'] as List)
          .map((e) => User.fromJson(e))
          .toList();
    } catch (ex) {
      print(ex);
    }
  }
}
