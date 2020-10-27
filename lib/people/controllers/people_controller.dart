import 'package:fluttergetxapp/people/model/people.dart';
import 'package:fluttergetxapp/people/services/rest_api.dart';
import 'package:get/get.dart';

enum Status { loading, success, error,createSuccess }

class PeopleController extends GetxController {
  List<PeopleModel> _people;
  List<PeopleModel> get people => _people;

  final status = Status.loading.obs;

  @override
  void onReady() {
    getData();
    super.onReady();
  }

  Future<void> getData() async {
    status(Status.loading);
    this._people = await RestAPI.instance.getPeople();
    print(_people);

    status(Status.success);
    update();
  }

  Future<void> addPeople(Data people) async {

    Future<String> response = RestAPI.instance.addPeople(people);
    response.then((String value) => print(value));

    update();
  }
}
