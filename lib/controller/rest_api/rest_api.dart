
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class HomeController extends GetxController{
  String baseUrl = "https://peopleinfoapi.herokuapp.com/api/person";
  var data = Map<dynamic,dynamic>().obs;
  @override
  void onInit() { // called immediately after the widget is allocated memory
    getData();
    super.onInit();
  }

  getData() async
  {
   final response  =  await http.get(baseUrl);
 this.data = json.decode(response.body)['data'];
 print(this.data);


  }

}