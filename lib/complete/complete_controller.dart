import 'package:get/get.dart';
import 'package:get_demo/complete/user.dart';

class CompleteController extends GetxController {
  var count = 0.obs;
  var user = User(name: "", email: "").obs;
  var list = [1].obs;

  void increment() {
    count++;
  }

  void updateUser() {
    user.update((val) {
      val?.name = "Meng Xiang Jian";
      val?.email = "mengxiangjian@gmail.com";
    });
  }

  void addToList() {
    list.add(list.last + 1);
  }
}