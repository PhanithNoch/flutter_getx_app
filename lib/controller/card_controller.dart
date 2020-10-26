
import 'package:fluttergetxapp/models/production.dart';
import 'package:get/get.dart';

class CardController extends GetxController{
  var cartItems = List<Product>().obs;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum+item.price);
  int get count =>cartItems.length;
  addToCard(Product product)
  {
    cartItems.add(product);
  }
}