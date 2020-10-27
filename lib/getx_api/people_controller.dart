
import 'package:fluttergetxapp/getx_api/domain/adapters/entity/people_model.dart';
import 'package:fluttergetxapp/getx_api/domain/adapters/respository_adapter.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'dart:convert';
enum Status { loading, success, error }

class PeopleController extends GetxController
{
  var baseUrl = "https://peopleinfoapi.herokuapp.com/api/person?page=1";

  PeopleController({this.iPeopleRepository});

  final IPeopleRepository iPeopleRepository;

  /// create a reactive status from request with initial value = loading
  final status = Status.loading.obs;

  /// create a reactive PeopleModel. PeopleModel().obs has same result
  final people = Rx<People>();


  @override
  void onInit() => fetchDataFromApi();

  Future<void> fetchDataFromApi(){
    /// When the repository returns the value, change the status to success, and fill in "cases"
    return iPeopleRepository.getPeople().then(
            (data) {
              people(data);
          status(Status.success);
        },

        /// In case of error, print the error and change the status to Status.error
        onError: (err) {
          print("$err");
          return status(Status.error);

        });
  }
}