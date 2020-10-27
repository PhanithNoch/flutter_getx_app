

import 'package:get/get.dart';

class CounterGexBuilder extends GetxController
{
  int counter = 0;

  increment()
  {
    counter ++;
    update();
  }
}