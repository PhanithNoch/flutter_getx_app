

import 'package:get/get.dart';
// control our state
class CountController extends GetxController
{
  int count = 0;

  incrementCounter()
  {
    count ++ ;
    update(); //

  }
}