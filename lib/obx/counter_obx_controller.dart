
import 'package:get/get.dart';

class CounterOBXController extends GetxController
{
  var counter = 0.obs;

  increment()
  {
    counter ++;
    update();
  }
}