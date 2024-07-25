import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_demo/complete/complete_controller.dart';

class CompleteSecondPage extends GetView<CompleteController> {

  const CompleteSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Complete Second Page: ${Get.arguments}"),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.list.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("${controller.list[index]}"),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.addToList();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}