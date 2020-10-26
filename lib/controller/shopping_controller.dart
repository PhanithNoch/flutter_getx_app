
import 'package:fluttergetxapp/models/production.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {
  var products = List<Product>().obs;


  @override
  void onInit() {
    // TODO: implement onInit
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async
  {
    await Future.delayed(Duration(seconds: 1));

    var serverResponse = [
      Product(id: 1,price: 30,productDescription: "something",productImage: "no img",productName: "first Pord"),
      Product(id: 2,price: 3,productDescription: "unknow",productImage: "no img",productName: "second Pord"),
      Product(id: 3,price: 44,productDescription: "Samsung",productImage: "no img",productName: "Samsung Pord"),
    ];

    products.value = serverResponse;
  }


}