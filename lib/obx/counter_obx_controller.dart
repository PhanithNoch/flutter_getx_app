
import 'package:get/get.dart';

class CounterOBXController extends GetxController
{
  var counter = 0.obs;
  var counter2 = 0.obs;

  increment()
  {
    counter ++;
    update();
  }


  increment2()
  {
   counter2 ++;
   update();
  }
}