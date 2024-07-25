import 'package:get/get.dart';

class ReactiveController extends GetxController {
  var count = 0.obs;

  increment() => count++;
}