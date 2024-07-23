import 'package:get/get.dart';

class SimpleController extends GetxController {
  // simple state management 状态变量不需要.obs。react state management需要.obs
  var count = 0;

  void increment() {
    print('increment');
    count++;
    // simple state management 需要调用update
    update();
  }
}