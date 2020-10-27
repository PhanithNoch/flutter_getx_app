import 'package:fluttergetxapp/simple_api/api/model/user.dart';
import 'package:fluttergetxapp/simple_api/api/user_api.dart';
import 'package:get/get.dart';
enum Status { loading, success, error }
class HomeController extends GetxController {
  List<User> _users = [];
  List<User> get users => _users;
  final status = Status.loading.obs;


  @override
  void onReady() {
    loadUser();
    super.onReady();
  }

  Future<void> loadUser() async {
    final data = await UserAPI.instance.getUsers();
    this._users = data;
    status(Status.success);
    update();
  }
}
