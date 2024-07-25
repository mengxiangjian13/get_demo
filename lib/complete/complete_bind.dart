import 'package:get/get.dart';
import 'package:get_demo/complete/complete_controller.dart';

class CompleteBind extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => CompleteController());
  }

}